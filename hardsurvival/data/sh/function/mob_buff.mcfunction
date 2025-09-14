attribute @s minecraft:attack_damage modifier add buff 1 add_multiplied_total
attribute @s minecraft:max_health modifier add buff 2 add_multiplied_total
attribute @s follow_range base set 1024

data modify entity @s Health set value 32767.0f
tag @s add buffed


execute at @s[type=zombified_piglin] run data modify entity @s AngryAt set from entity @p UUID

execute unless entity @s[type=creeper,tag=!fused] run return fail
data modify entity @s Fuse set value 15
tag @s add fused