using GTANetworkAPI;
using System.Collections.Generic;
using System;
using RageSquad.GUI;
using RageSquad.Core;
using Redage.SDK;
using RageSquad.Fractions;

namespace RageSquad.Jobs
{
    class Drug : Script
    {
        private static nLog Log = new nLog("Drug");
        private static int LastGangSpawnFly = 0;

        #region Unload object

        private static int Tovar = 300; //Кол-во выгружаемого товара

        public static Dictionary<string, int> maxAnasha = new Dictionary<string, int>()
        {
            { "YOUGA", Tovar },
        };

        #endregion

        #region Work Setting

        private static int JobWorkId = 9; // Number Work || Work Manager

        private static int JobsMinLVL = 1; // Min LVL

        private static int ColObjects = 10; //Максимально кол-во собираемого товара

        #endregion

        #region Blip Position

        private static Blip cblip;
        private static Vector3 cPosition = new Vector3(2108.2693, 4768.0303, 40.08625); //Точка выгрузки товара

        #endregion

        #region Coords

        private static List<Vector3> GangSpawnFly = new List<Vector3>() //Cпавн самолета Pos
        {
            new Vector3(2133.5215, 4784.7124, 40.97),
        };

        private static List<Vector3> GangSpawnFlyRot = new List<Vector3>() //Cпавн самолета Rot
        {
            new Vector3(0, 0, 24.035994),
        };

        private static List<Vector3> FlyEndDelivery = new List<Vector3>() //Конечная точка самолета
        {
            new Vector3(-1299.3402, -2293.1465, 13.930154),
        };

        private static List<Checkpoint> Checkpoints = new List<Checkpoint>() //Точки сбора
        {
            new Checkpoint(new Vector3(2045.058, 4958.791, 39.50), 30f),
            new Checkpoint(new Vector3(2048.195, 4949.984, 39.50), 30f),
            new Checkpoint(new Vector3(2055.114, 4946.117, 39.50), 30f),
            new Checkpoint(new Vector3(2050.099, 4939.689, 39.50), 30f),
            new Checkpoint(new Vector3(2040.634, 4934.967, 39.50), 30f),
            new Checkpoint(new Vector3(2028.723, 4935.81, 39.50), 30f),
            new Checkpoint(new Vector3(2021.252, 4937.07, 39.50), 30f),
        };

        #endregion

        [ServerEvent(Event.ResourceStart)]
        public void Event_ResourceStart()
        {
            try
            {
                #region Плантация

                NAPI.Blip.CreateBlip(501, new Vector3(2016.35, 4987.487, 41.80), 1.5f, 2, Main.StringToU16("Плантация"), 255, 0, true, 0, 0); // Блип на карте
                NAPI.TextLabel.CreateTextLabel("~w~Приму вас на работу", new Vector3(2016.35, 4987.487, 42.80), 30f, 0.3f, 0, new Color(255, 255, 255), true, NAPI.GlobalDimension); // Над головой у Ped
                NAPI.Marker.CreateMarker(1, new Vector3(2947.133, 2747.014, 42.28965) - new Vector3(0, 0, 0.7), new Vector3(), new Vector3(), 1, new Color(255, 255, 255, 220)); //Начать рабочий день маркер
                var col = NAPI.ColShape.CreateCylinderColShape(new Vector3(2016.35, 4987.487, 41.80), 1, 2, 0); // Меню которое открывается на 'E'
                col.OnEntityEnterColShape += (shape, player) => {
                    try
                    {
                        player.SetData("INTERACTIONCHECK", 506);
                        Trigger.ClientEvent(player, "JobsEinfo");
                    }
                    catch (Exception ex) { Log.Write("col.OnEntityEnterColShape: " + ex.Message, nLog.Type.Error); }
                };
                col.OnEntityExitColShape += (shape, player) => {
                    try
                    {
                        player.SetData("INTERACTIONCHECK", 0);
                        Trigger.ClientEvent(player, "JobsEinfo2");
                    }
                    catch (Exception ex) { Log.Write("col.OnEntityExitColShape: " + ex.Message, nLog.Type.Error); }
                };

                int i = 0;
                foreach (var Check in Checkpoints)
                {
                    col = NAPI.ColShape.CreateCylinderColShape(Check.Position, 1, 2, 0);
                    col.SetData("NUMBER", i);
                    col.OnEntityEnterColShape += PlayerEnterCheckpoint;
                    i++;
                }

                #endregion

                #region Точка выгрузки

                var fly = NAPI.ColShape.CreateCylinderColShape(cPosition, 6, 2, 0);
                fly.OnEntityEnterColShape += onEntityEnterColShape;
                fly.OnEntityExitColShape += onEntityExitColShape;
                cblip = NAPI.Blip.CreateBlip(303, cPosition, 1.3f, 2, Main.StringToU16("Перевозка"), 255, 0, true, 0, 0);
                NAPI.Marker.CreateMarker(1, new Vector3(2108.2693, 4768.0303, 40.08625) - new Vector3(0, 0, 2.7), new Vector3(), new Vector3(), 3, new Color(124, 52, 206, 220));
                
                #endregion

                #region FlyDropDelivery

                i = 0;
                foreach (var pos in FlyEndDelivery)
                {
                    col = NAPI.ColShape.CreateCylinderColShape(pos, 5, 3, NAPI.GlobalDimension);
                    col.SetData("ID", i);
                    col.OnEntityEnterColShape += (s, e) =>
                    {
                        try
                        {
                            if (!Main.Players.ContainsKey(e) || !e.IsInVehicle || e.Vehicle.GetData<string>("ACCESS") != "FLYDELIVERY" || s.GetData<int>("ID") != e.Vehicle.GetData<int>("ENDPOINT")) return;

                            NAPI.Data.ResetEntityData(e.Vehicle.GetData<Vehicle>("ANASHA"), "ANASHA");
                            e.Vehicle.Delete();
                            Stocks.fracStocks[Main.Players[e].FractionID].Money += 350000;
                            GameLog.Money($"server", $"frac({Main.Players[e].FractionID})", 350000, "dropCar");
                            e.SendChatMessage("Сдача товара: !{#00FF00}350 000$ ~w~были отправлены в общак банды. (" + $"{DateTime.Now.ToShortDateString()} {DateTime.Now.ToShortTimeString()}" + ")");
                        }
                        catch (Exception ex) { Log.Write("FlyEndDelivery: " + ex.Message); }
                    };

                    NAPI.Marker.CreateMarker(1, pos - new Vector3(0, 0, 3.5), new Vector3(), new Vector3(), 4, new Color(255, 0, 0, 220), false, NAPI.GlobalDimension);
                    i++;
                }
                
                #endregion
            }
            catch (Exception e) { Log.Write("ResourceStart: " + e.Message, nLog.Type.Error); }
        }

        #region Проверка на фракцию

        public static SortedList<int, int> FractionTypes = new SortedList<int, int>() // 0 - mafia, 1 gangs, 2 - gov, //Проверка на фракцию
        {
            {0, -1},
            {1, 1}, // The Families
            {2, 1}, // The Ballas Gang
            {3, 1},  // Los Santos Vagos
            {4, 1}, // Marabunta Grande
            {5, 1}, // Blood Street
            {6, 2}, // Cityhall
            {7, 2}, // LSPD police
            {8, 2}, // Emergency care
            {9, 2}, // FBI 
            {10, 0}, // La Cosa Nostra 
            {11, 0}, // Russian Mafia
            {12, 0}, // Yakuza 
            {13, 0}, // Armenian Mafia 
            {14, 2}, // Army
            {15, 2}, // News
            {16, 1}, // The Lost
            {17, 2}, // Merryweather
        };

        #endregion

        #region Меню 'E'

        public static void StartWorkDayDrug(Player player)
        {
            if (Main.Players[player].LVL < JobsMinLVL)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Необходим как минимум {JobsMinLVL} уровень", 3000);
                return;
            }

            //Trigger.ClientEvent(player, "PressE", false);
            Trigger.ClientEvent(player, "JobsEinfo2");
            Trigger.ClientEvent(player, "OpenDrug", Main.Players[player].LVL, Main.Players[player].WorkID, NAPI.Data.GetEntityData(player, "ON_WORK2"));

        }

        #endregion

		#region Устроиться на работу

        [RemoteEvent("jobJoinDrug")]
        public static void callback_jobsSelecting(Player client, int act)
        {
            try
            {
                switch (act)
                {
                    case -1:
                        Layoff(client);
                        return;
                    default:
                        JobJoin(client);
                        return;
                }
            }
            catch (Exception e) { Log.Write("jobjoin: " + e.Message, nLog.Type.Error); }
        }
        public static void Layoff(Player player)
        {
            if (NAPI.Data.GetEntityData(player, "ON_WORK") == true)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны сначала закончить рабочий день", 3000);
                return;
            }
            if (Main.Players[player].WorkID != 0)
            {
                Main.Players[player].WorkID = 0;
                Dashboard.sendStats(player);
                Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, $"Вы уволились с работы", 3000);
                var jobsid = Main.Players[player].WorkID;
                Trigger.ClientEvent(player, "secusejobDrug", jobsid);
                return;
            }
            else
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы никем не работаете", 3000);
        }
        public static void JobJoin(Player player)
        {
            int fracid = Main.Players[player].FractionID; //Проверка на фракцию
            if (FractionTypes[fracid] == -1 || FractionTypes[fracid] == 2 || FractionTypes[fracid] == 0)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Вы не можете работать на плантации!", 3000);
                return;
            }
            /*if (DateTime.Now.Hour < 10 || DateTime.Now.Hour > 20) //Время Производства
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы можете работать только с 10:00 до 20:00", 3000);
                return;
            }*/
            if (Main.Players[player].WorkID != 0)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы уже работаете: {Jobs.WorkManager.JobStats[Main.Players[player].WorkID - 1]}", 3000);
                return;
            }
            if (NAPI.Data.GetEntityData(player, "ON_WORK") == true)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны сначала закончить рабочий день", 3000);
                return;
            }
            Main.Players[player].WorkID = JobWorkId;
            Dashboard.sendStats(player);
            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы устроились на работу: {Jobs.WorkManager.JobStats[JobWorkId - 1]}", 3000);
            var jobsid = Main.Players[player].WorkID;
            Trigger.ClientEvent(player, "secusejobDrug", jobsid);
            return;
        }

        #endregion

        #region КД Фракций

        private static Dictionary<int, DateTime> NextSbor = new Dictionary<int, DateTime>()
        {
            { 1, DateTime.Now },
            { 2, DateTime.Now },
            { 3, DateTime.Now },
            { 4, DateTime.Now },
            { 5, DateTime.Now },
        };

        #endregion

        #region Начать рабочий день
        [RemoteEvent("enterJobDrug")]
        public static void ClientEvent_Drug(Player client, int act)
        {
            try
            {
                switch (act)
                {
                    case -1:
                        Layoff2(client);
                        return;
                    default:
                        JobJoin2(client, act);
                        return;
                }
            }
            catch (Exception e) { Log.Write("jobjoin: " + e.Message, nLog.Type.Error); }
        }
        public static void Layoff2(Player player)
        {
            if (NAPI.Data.GetEntityData(player, "ON_WORK") != true)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы уже не работаете", 3000);
            }
            if (player.GetData<int>("OBJECTSJOB") != ColObjects)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Закончите сбор прежде чтобы получить анашу", 3000);
                return;
            }
            else
            {
                Customization.ApplyCharacter(player);
                player.SetData("ON_WORK", false);
                player.SetData("anasha", false);
                Trigger.ClientEvent(player, "deleteCheckpoint", 15);
                Trigger.ClientEvent(player, "deleteWorkBlip");
                Trigger.ClientEvent(player, "CloseJobStatsInfoDrug");
                player.SetData("PACKAGES", 0);
                player.SetData("ON_WORK2", 0);
                player.StopAnimation();
                Main.OffAntiAnim(player);
                BasicSync.DetachObject(player);
                nInventory.Add(player, new nItem(ItemType.Drugs, 1));
                Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"+10 Кустов Анаши", 3000);
            }
        }
        public static void JobJoin2(Player player, int job)
        {
            if (Main.Players[player].WorkID != JobWorkId)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы не работаете на этой работе", 3000);
                return;
            }

            if (NAPI.Data.GetEntityData(player, "ON_WORK") == true)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны сначала закончить рабочий день", 3000);
                return;
            }

            if (Main.Players[player].FractionID == 0) return;
            if (DateTime.Now < NextSbor[Main.Players[player].FractionID])
            {
                DateTime g = new DateTime((NextSbor[Main.Players[player].FractionID] - DateTime.Now).Ticks);
                var min = g.Minute;
                var sec = g.Second;
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы сможете сделать это только через {min}:{sec}", 3000);
                return;
            }

            Customization.ClearClothes(player, Main.Players[player].Gender);
            if (Main.Players[player].Gender)
            {
                player.SetClothes(3, 16, 0); //Торс
                player.SetClothes(5, 40, 0); //Сумка
                player.SetClothes(11, 251, 0); //куртка 
                player.SetClothes(4, 97, 5); //Штаны
                player.SetClothes(6, 81, 0); //Ботинки
            }
            else
            {
                player.SetClothes(3, 17, 0); //Торс
                player.SetClothes(5, 40, 0); //Сумка
                player.SetClothes(11, 259, 0); //куртка 
                player.SetClothes(4, 100, 5); //Штаны
                player.SetClothes(6, 77, 0); //Ботинки
            }

            var check = WorkManager.rnd.Next(0, Checkpoints.Count - 1);
            player.SetData("WORKCHECK", check);
            Trigger.ClientEvent(player, "createCheckpoint", 15, 1, Checkpoints[check].Position, 2, 0, 255, 0, 0);
            Trigger.ClientEvent(player, "createWorkBlip", Checkpoints[check].Position);
            player.SetData("OBJECTSJOB", 0);

            player.SetData("PACKAGES", ColObjects);
            player.SetData("ON_WORK", true);
            player.SetData("ON_WORK2", job);
            Trigger.ClientEvent(player, "JobStatsInfoDrug", player.GetData<int>("OBJECTSJOB"), ColObjects);
            NextSbor[Main.Players[player].FractionID] = DateTime.Now.AddHours(1);
            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы начали рабочий день", 3000);
        }
        #endregion

        #region Вход в чекпоинт
        private static void PlayerEnterCheckpoint(ColShape shape, Player player)
        {
            if (NAPI.Data.GetEntityData(player, "anasha") == true)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Закончите работу, чтобы получить товар!", 3000);
                return;
            }

            try
            {
                if (!Main.Players.ContainsKey(player)) return;
                if (Main.Players[player].WorkID != 12 || !player.GetData<bool>("ON_WORK") || shape.GetData<int>("NUMBER") != player.GetData<int>("WORKCHECK")) return;
                if (Checkpoints[(int)shape.GetData<int>("NUMBER")].Position.DistanceTo(player.Position) > 3) return;

                NAPI.Entity.SetEntityPosition(player, Checkpoints[shape.GetData<int>("NUMBER")].Position + new Vector3(0, 0, 1.2));
                NAPI.Entity.SetEntityRotation(player, new Vector3(0, 0, Checkpoints[shape.GetData<int>("NUMBER")].Heading));
                Main.OnAntiAnim(player);
                player.PlayAnimation("anim@mp_snowball", "pickup_snowball", 39);
                player.SetData("WORKCHECK", -1);
                NAPI.Task.Run(() =>
                {
                    try
                    {
                        if (player != null && Main.Players.ContainsKey(player))
                        {
                            player.StopAnimation();
                            Main.OffAntiAnim(player);
                        }
                        var lucky = new Random().Next(0, 3);
                        Log.Debug(lucky.ToString());
                        if (lucky <= 3)
                        {
                            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"+1 Куст", 2000);
                            var check = WorkManager.rnd.Next(0, Checkpoints.Count - 1);
                            player.SetData("WORKCHECK", check);
                            Trigger.ClientEvent(player, "createCheckpoint", 15, 1, Checkpoints[check].Position, 1, 0, 255, 0, 0);
                            Trigger.ClientEvent(player, "createWorkBlip", Checkpoints[check].Position);
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1);
                            Trigger.ClientEvent(player, "JobStatsInfoDrug", player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        else
                        {
                            Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, $"Куст еще не созрел", 2000);
                            var check = WorkManager.rnd.Next(0, Checkpoints.Count - 1);
                            player.SetData("WORKCHECK", check);
                            Trigger.ClientEvent(player, "createCheckpoint", 15, 1, Checkpoints[check].Position, 1, 0, 255, 0, 0);
                            Trigger.ClientEvent(player, "createWorkBlip", Checkpoints[check].Position);
                        }
                        if (player.GetData<int>("OBJECTSJOB") == ColObjects)
                        {
                            Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, $"Вы собрали достаточно товара", 3000);
                            player.SetData("anasha", true);
                            player.SetData("PACKAGES", ColObjects);
                            player.SetData("OBJECTSJOB", ColObjects);
                            //Trigger.ClientEvent(player, "CloseJobStatsInfoDrug");
                            return;
                        }

                    }
                    catch { }
                }, 4000);

            }
            catch (Exception e) { Log.Write("PlayerEnterCheckpoint: " + e.Message, nLog.Type.Error); }
        }
        #endregion

        #region Если выкинуло из игры
        public static void Event_PlayerDisconnected(Player player, DisconnectionType type, string reason)
        {
            try
            {
                if (Main.Players[player].WorkID == JobWorkId && player.GetData<bool>("ON_WORK"))
                {
                    Customization.ApplyCharacter(player);
                    player.SetData("ON_WORK", false);
                    Trigger.ClientEvent(player, "deleteCheckpoint", 15);
                    Trigger.ClientEvent(player, "deleteWorkBlip");
                    player.SetData("PACKAGES", 0);
                    player.SetData("ON_WORK2", 0);
                    player.SetData("anasha", false);
                    Main.Players[player].WorkID = 0;

                    player.StopAnimation();
                    Main.OffAntiAnim(player);
                    BasicSync.DetachObject(player);
                }
                if (player.HasData("loadAnashaTimer"))
                {
                    Timers.Stop(player.GetData<string>("loadAnashaTimer"));
                    var vehicle = player.GetData<Vehicle>("vehicleAnasha");
                    NAPI.Data.ResetEntityData(vehicle, "loaderAnasha");
                }
            }
            catch (Exception e) { Log.Write("PlayerDisconnected: " + e.Message, nLog.Type.Error); }
        }
        #endregion

        #region Если игрок умер
        public static void Event_PlayerDeath(Player player, Player entityKiller, uint weapon)
        {
            try
            {
                if (!Main.Players.ContainsKey(player)) return;
                if (Main.Players[player].WorkID == JobWorkId && player.GetData<bool>("ON_WORK"))
                {
                    Customization.ApplyCharacter(player);
                    player.SetData("ON_WORK", false);
                    Trigger.ClientEvent(player, "deleteCheckpoint", 15);
                    Trigger.ClientEvent(player, "deleteWorkBlip");
                    Trigger.ClientEvent(player, "CloseJobStatsInfoDrug");
                    player.SetData("PACKAGES", 0);
                    player.SetData("ON_WORK2", 0);
                    player.SetData("anasha", false);
                    Main.Players[player].WorkID = 0;

                    player.StopAnimation();
                    Main.OffAntiAnim(player);
                    BasicSync.DetachObject(player);
                }
                if (player.HasData("loadAnashaTimer"))
                {
                    Trigger.ClientEvent(player, "hideLoader");
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Загрузка товара отменена, так как Вы ранены", 3000);
                    Timers.Stop(player.GetData<string>("loadAnashaTimer"));
                    var vehicle = player.GetData<Vehicle>("vehicleAnasha");
                    NAPI.Data.ResetEntityData(vehicle, "loaderAnasha");
                    player.ResetData("loadAnashaTimer");
                }
            }
            catch (Exception e) { Log.Write("PlayerDeath: " + e.Message, nLog.Type.Error); }
        }
        #endregion

        #region Выгрузка товара
        public static void CrimePressed(Player player)
        {
            if (!Main.Players.ContainsKey(player)) return;
            if (!player.IsInVehicle || !player.Vehicle.HasData("CANDRUGS"))
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Вы должны находиться в машине, которая может перевозить товар!", 3000);
                return;
            }
            if (player.HasData("loadAnashaTimer"))
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы уже выгружаете товар", 3000);
                return;
            }
            if (!Jobs.Drug.maxAnasha.ContainsKey(player.Vehicle.DisplayName)) return;
            var count = VehicleInventory.GetCountOfType(player.Vehicle, ItemType.Drugs);
            if (count < Jobs.Drug.maxAnasha[player.Vehicle.DisplayName])
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"В машине недостаточно товара", 3000);
                return;
            }
            player.SetData("loadAnashaTimer", Timers.StartOnce(5000, () => loadAnashaTimer(player)));
            player.Vehicle.SetData("loaderAnasha", player);
            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Выгрузка товара началась (10 минут)", 5000);
            Trigger.ClientEvent(player, "showLoader", "Выгрузка товара", 1);
            player.SetData("vehicleAnasha", player.Vehicle);
            Manager.sendFractionMessage(7, "Происходит нелегальный сбыт товара Сэнди-Шорс.");
            Manager.sendFractionMessage(9, "Происходит нелегальный сбыт товара Сэнди-Шорс.");
            Manager.sendFractionMessage(14, "Происходит нелегальный сбыт товара Сэнди-Шорс.");
            return;
        }
        #endregion

        #region Таймер
        public static void loadAnashaTimer(Player player)
        {
            NAPI.Task.Run(() =>
            {
                try
                {
                    if (!player.HasData("vehicleAnasha")) return;
                    if (!player.IsInVehicle) return;
                    Vehicle vehicle = player.GetData<Vehicle>("vehicleAnasha");
                    var itemCount = VehicleInventory.GetCountOfType(player.Vehicle, ItemType.Drugs);
                    var data = new nItem(ItemType.Drugs);

                    data.Count = Jobs.Drug.maxAnasha[vehicle.DisplayName] - itemCount;
                    VehicleInventory.Remove(player.Vehicle, ItemType.Drugs, Tovar);
                    NAPI.Data.ResetEntityData(vehicle, "loaderAnasha");
                    player.ResetData("loadAnashaTimer");
                    Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы выгрузили товар", 3000);

                    Random rnd = new Random();
                    var veh = NAPI.Vehicle.CreateVehicle(VehicleHash.Mammatus, GangSpawnFly[LastGangSpawnFly], GangSpawnFlyRot[LastGangSpawnFly], 0, 0);
                    player.SetData("ANASHA", veh);
                    VehicleStreaming.SetEngineState(veh, true);
                    veh.SetData("ACCESS", "FLYDELIVERY");
                    var end = rnd.Next(0, FlyEndDelivery.Count);
                    veh.SetData("ENDPOINT", end);
                    veh.SetData("ENDDATA", DateTime.Now.AddSeconds(vehicle.Position.DistanceTo(FlyEndDelivery[end]) / 100 * 2));
                    Trigger.ClientEvent(player, "createWaypoint", FlyEndDelivery[LastGangSpawnFly].X, FlyEndDelivery[LastGangSpawnFly].Y);
                    Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, "Транспорт в ангаре", 3000);
                    Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, "Доставте товар в указанную точку", 4000);
                }
                catch (Exception e) { Log.Write("loadAnashaTimer: " + e.Message, nLog.Type.Error); }
            });
        }
        #endregion

        #region Col Enter and Exit
        private void onEntityEnterColShape(ColShape shape, Player entity)
        {
            try
            {
                if (NAPI.Entity.GetEntityType(entity) != EntityType.Player) return;
                NAPI.Data.SetEntityData(entity, "INTERACTIONCHECK", 507);
            }
            catch (Exception ex) { Log.Write("onEntityEnterColShape: " + ex.Message, nLog.Type.Error); }
        }

        private void onEntityExitColShape(ColShape shape, Player entity)
        {
            try
            {
                if (NAPI.Entity.GetEntityType(entity) == EntityType.Player)
                {
                    NAPI.Data.SetEntityData(entity, "INTERACTIONCHECK", 0);
                    if (entity.IsInVehicle && NAPI.Data.HasEntityData(entity.Vehicle, "loaderAnasha"))
                    {
                        Player player = NAPI.Data.GetEntityData(entity.Vehicle, "loaderAnasha");
                        Timers.Stop(player.GetData<string>("loadAnashaTimer"));
                        NAPI.Data.ResetEntityData(entity.Vehicle, "loaderAnasha");
                        player.ResetData("loadAnashaTimer");
                        Trigger.ClientEvent(player, "hideLoader");
                        Notify.Send(player, NotifyType.Warning, NotifyPosition.BottomCenter, $"Выгрузка товара отменена, так как машина покинула точку выгрузки", 3000);
                    }
                }
            }
            catch (Exception ex) { Log.Write("onEntityExitColShape: " + ex.Message, nLog.Type.Error); }
        }
        #endregion

        internal class Checkpoint
        {
            public Vector3 Position { get; }
            public double Heading { get; }

            public Checkpoint(Vector3 pos, double rot)
            {
                Position = pos;
                Heading = rot;
            }
        }
    }
}
