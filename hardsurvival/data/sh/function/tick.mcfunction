function sh:const

execute as @a run function sh:player_changes
execute as @e[type=!#sh:no_hp,tag=!buffed] run function sh:mob_buff
execute as @e[type=enderman,tag=!emanagro] run function sh:emanaggro

function sh:counter

gamerule playersSleepingPercentage 110
function sh:insomnia