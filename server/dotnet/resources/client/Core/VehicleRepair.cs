using GTANetworkAPI;


namespace RageSquad.Core
{
    class VehicleRepair : Script
    {
        [RemoteEvent("SERVER:VEH:REPAIR")]
        public void onVehicleRepair(Player player)
        {
            int price = 500; //Цена за ремонт.
            if (player.IsInVehicle)
            {
                if (Main.Players[player].Money > price)
                {
                    MoneySystem.Wallet.Change(player, -price);
                    player.Vehicle.Repair();
                    NAPI.ClientEvent.TriggerClientEvent(player, "CLIENT:VEH:REPAIR:BROWSER:DESTROY");
                    player.SendNotification("~g~Авто отремонтировано!");
                }
                else
                {
                    player.SendNotification("~r~У вас не достаточно средств!");
                }
            }
        }
    }
}
