#
summon minecraft:armor_stand ~ ~ ~ {Tags:["checkpoint"]}
execute as @e[type=minecraft:armor_stand,tag=checkpoint] at @s run function map_assets:commands/checkpoint_tp

#
scoreboard players set @s[scores={checkpoint=1..}] checkpoint 0