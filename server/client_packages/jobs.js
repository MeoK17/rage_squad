mp.peds.new(0x49EA5685, new mp.Vector3(2016.35, 4987.487, 42.80), -138.74132); // ped Drug
global.jobs = mp.browsers.new('package://cef/jobs.html'); //статистика

// Job JobsEinfo //
mp.events.add('JobsEinfo', () => {
    jobs.execute('JobsEinfo.active=1');
});
mp.events.add('JobsEinfo2', () => {
    jobs.execute('JobsEinfo.active=0');
});

// Job StatsInfo //
mp.events.add('JobStatsInfo', (money) => {
    jobs.execute('JobStatsInfo.active=1');
    jobs.execute(`JobStatsInfo.set('${money}')`);
});
mp.events.add('CloseJobStatsInfo', () => {
    jobs.execute('JobStatsInfo.active=0');
});
// Улучшенные блипы
var JobMenusBlip = [];
mp.events.add('JobMenusBlip', function (uid, type, position, names, dir) {
    if (typeof JobMenusBlip[uid] != "undefined") {
        JobMenusBlip[uid].destroy();
        JobMenusBlip[uid] = undefined;
    }
    if (dir != undefined) {
        JobMenusBlip[uid] = mp.blips.new(type, position,
            {
                name: names,
                scale: 1,
                color: 4,
                alpha: 255,
                drawDistance: 100,
                shortRange: false,
                rotation: 0,
                dimension: 0
            });
    }

});
mp.events.add('deleteJobMenusBlip', function (uid) {
    if (typeof JobMenusBlip[uid] == "undefined") return;
    JobMenusBlip[uid].destroy();
    JobMenusBlip[uid] = undefined;
});




// Job Drug //
mp.events.add('OpenDrug', (level, currentjob, work) => {
    if (global.menuCheck()) return;
    jobs.execute(`Drug.set('${level}', '${currentjob}', '${work}')`);
    jobs.execute('Drug.active=1');
    global.menuOpen();
});
mp.events.add('CloseDrug', () => {
    jobs.execute('Drug.active=0');
    global.menuClose();
});
mp.events.add("selectJobDrug", (jobid) => {
    if (new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();
    mp.events.callRemote("jobJoinDrug", jobid);
});
mp.events.add('secusejobDrug', (jobsid) => {
    jobs.execute(`Drug.setnewjob('${jobsid}')`);
});
mp.events.add('enterJobDrug', (work) => {
    if (new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();
    mp.events.callRemote('enterJobDrug', work);
    global.menuClose();
    jobs.execute('Drug.active=0');
});
// Job StatsInfoDrug //
mp.events.add('JobStatsInfoDrug', (objects, obji) => {
    jobs.execute('JobStatsInfoDrug.active=1');
    jobs.execute(`JobStatsInfoDrug.set('${objects}', '${obji}')`);
});
mp.events.add('CloseJobStatsInfoDrug', () => {
    jobs.execute('JobStatsInfoDrug.active=0');
});