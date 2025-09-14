execute if score ?counter tick matches 1 run return fail
execute store result score %daytime tick run time query daytime

scoreboard players add %daytime tick 6000

scoreboard players operation %h tick = %daytime tick
scoreboard players operation %h tick /= 1000 int
execute if score %h tick matches 24.. run scoreboard players remove %h tick 24

scoreboard players operation %m tick = %daytime tick
scoreboard players operation %m tick %= 1000 int
scoreboard players operation %m tick *= 60 int
scoreboard players operation %m tick /= 1000 int

execute if score %m tick matches ..10 run return run title @a actionbar [{"color":"gold","text":"["},{"color":"white","score":{"name":"%h","objective":"tick"}},{"color":"white","text":":"},{"color":"white","text":"0"},{"color":"white","score":{"name":"%m","objective":"tick"}},{"color":"gold","text":"]"}]
title @a actionbar [{"color":"gold","text":"["},{"color":"white","score":{"name":"%h","objective":"tick"}},{"color":"white","text":":"},{"color":"white","score":{"name":"%m","objective":"tick"}},{"color":"gold","text":"]"}]
