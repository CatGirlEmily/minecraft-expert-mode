attribute @s block_break_speed base reset
execute unless items entity @s weapon.shhand #sh:tool run attribute @s minecraft:block_break_speed base set 0.65
execute if items entity @s weapon.shhand #sh:no_coal run item modify entity @s weapon.shhand sh:no_coal

tag @s remove pumpkin
execute if items entity @s armor.head minecraft:carved_pumpkin run tag @s add pumpkin