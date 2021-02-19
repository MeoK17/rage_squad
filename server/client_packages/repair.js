let repBrows = null;
let repair = [
    {x: 535.4251, y: -177.73148, z: 53.0},
]

let colshapes = []

for(let i of repair) {
    colshapes.push(mp.colshapes.newCircle(i.x, i.y, 5.0, 0))
    mp.markers.new(1, new mp.Vector3(i.x, i.y, i.z), 5.0,
    {
        color: [255, 0, 0, 255],
        visible: true,
        dimension: 0
    });
    mp.blips.new(544, new mp.Vector3(i.x, i.y, i.z),
    {
        name: 'Los Santos Car Repair',
        color: 3,
        shortRange: true,
    });
}

mp.events.add("playerEnterColshape",(shape) => {
    for(let i of colshapes) {
        if(shape == i && mp.players.local.vehicle) {
            repBrows = mp.browsers.new('package://cef/repair.html');
            setTimeout(function () {
                mp.gui.cursor.show(true, true);
            }, 500);
            break
        }
    }
});

mp.events.add("CLIENT:VEH:REPAIR",() => {
    mp.players.localPlayer.vehicle.freezePosition(true);
	setTimeout(function() {
        mp.players.localPlayer.vehicle.freezePosition(false);
        mp.events.callRemote('SERVER:VEH:REPAIR');
    })
});

mp.events.add("CLIENT:VEH:REPAIR:CANCEL",() => {
    if (repBrows != null) {
        repBrows.destroy();
        mp.gui.cursor.show(false, false);
    }
});

mp.events.add("CLIENT:VEH:REPAIR:BROWSER:DESTROY",() => {
    if (repBrows != null) {
        repBrows.destroy();
        mp.gui.cursor.show(false, false);
    }
});