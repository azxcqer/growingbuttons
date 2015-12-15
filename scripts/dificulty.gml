///dificulty()
var dif = global.dif;

defIdle = global.defIdleTime
defSpawn = global.defSpawnTime

global.curIdleMax = defIdle/(dif/2)
global.curSpawnTime = defSpawn/(dif/2)

if floor(global.scr/(1500*dif)) > 1
{
    global.dif++
    audio_play_sound(a_lvl,1,false)
}
