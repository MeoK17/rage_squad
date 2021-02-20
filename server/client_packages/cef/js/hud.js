var HUD = new Vue({
    el: ".inGameHud",
    data: {
        personId: 0,
        show: false,
        ammo: 0,
        money: "117 000 000",
        bank: 0,
        mic: false,
        time: "00:00",
        date: "00.00.00",
        street: "3oxaan",
        crossingRoad: "Groups",
        server: 0,
		playerId : 0,
        online: 0,
        inVeh: false,
		belt: false,
        engine: false,
        doors: false,
        speed: 0,
        fuel: 0,
        hp: 0,
    },
    methods: {
        setTime: (time, date) => {
            this.time = time;
            this.date = date;
        },
    }
})