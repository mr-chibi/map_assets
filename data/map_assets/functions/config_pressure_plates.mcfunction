#########################################################
# Start Minigame:
#########################################################
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run title @s title [{"text": "Course Start!", "color": "green"}]
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run effect give @s minecraft:resistance 9999 9
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate store result score @s start_x run data get entity @s Pos[0]
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate store result score @s start_y run data get entity @s Pos[1]
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate store result score @s start_z run data get entity @s Pos[2]


#########################################################
# Quit Minigame:
#########################################################
execute if block ~ ~ ~ minecraft:stone_pressure_plate run title @s title [{"text": "Quit Course!", "color": "red"}]
execute if block ~ ~ ~ minecraft:stone_pressure_plate run effect clear @s minecraft:resistance
execute if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players reset @s start_x
execute if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players reset @s start_y
execute if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players reset @s start_z
execute if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players reset @s checkpoint
execute if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players reset @s checkpoint_x
execute if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players reset @s checkpoint_y
execute if block ~ ~ ~ minecraft:stone_pressure_plate run scoreboard players reset @s checkpoint_z


#########################################################
# Enable Checkpoint Command:
#########################################################
scoreboard players enable @s checkpoint

#########################################################
# Checkpoint Minigame:
#########################################################
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate run title @s actionbar [{"text": "Checkpoint!", "color": "yellow"}]
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate store result score @s checkpoint_x run data get entity @s Pos[0]
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate store result score @s checkpoint_y run data get entity @s Pos[1]
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate store result score @s checkpoint_z run data get entity @s Pos[2]


#########################################################
# Finished Course Text:
#########################################################
execute if block ~ ~-1 ~ minecraft:red_wool run title @s title [{"text": "Course Finished!", "color": "green"}]

#########################################################
# Finished Course Remove Checkpoints:
#########################################################
execute if block ~ ~-1 ~ minecraft:red_wool run scoreboard players reset @s checkpoint
execute if block ~ ~-1 ~ minecraft:red_wool run scoreboard players reset @s checkpoint_x
execute if block ~ ~-1 ~ minecraft:red_wool run scoreboard players reset @s checkpoint_y
execute if block ~ ~-1 ~ minecraft:red_wool run scoreboard players reset @s checkpoint_z

#########################################################
# Finished Course Teleport:
#########################################################
execute if block ~ ~-1 ~ minecraft:red_wool run summon minecraft:armor_stand ~ ~ ~ {Tags:["goal_tp"]}
execute as @e[type=minecraft:armor_stand,tag=goal_tp] at @s run function map_assets:commands/startpoint_tp