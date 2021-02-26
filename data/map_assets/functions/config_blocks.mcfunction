#########################################################
# Jump Boost
#########################################################
execute if block ~ ~-1 ~ minecraft:lime_wool run effect give @s minecraft:jump_boost 5 3
execute if block ~ ~-1 ~ minecraft:lime_wool run title @s actionbar [{"text": "jump boost!", "color": "white"}]


#########################################################
# Speed Boost
#########################################################
execute if block ~ ~-1 ~ minecraft:light_blue_wool run effect give @s minecraft:speed 5 2
execute if block ~ ~-1 ~ minecraft:light_blue_wool run title @s actionbar [{"text": "speed!", "color": "white"}]


#########################################################
# Blindness
#########################################################
execute if block ~ ~-1 ~ minecraft:black_wool run effect give @s minecraft:blindness 15 0
execute if block ~ ~-1 ~ minecraft:black_wool run title @s actionbar [{"text": "blindness!", "color": "white"}]


#########################################################
# Levitation
#########################################################
execute if block ~ ~-1 ~ minecraft:white_wool run effect give @s minecraft:levitation 5 0
execute if block ~ ~-1 ~ minecraft:white_wool run title @s actionbar [{"text": "levitation!", "color": "white"}]