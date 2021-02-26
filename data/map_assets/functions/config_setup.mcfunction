#########################################################
# Minigames Join:
#########################################################
execute as @s[nbt=!{Inventory:[]}] if entity @e[type=minecraft:armor_stand,tag=join_minigame,distance=0..3] run title @s actionbar [{"text": "[MrChibi's MiniGames]: ", "color": "green"}, {"text": "Empty your inventory to join!", "color": "red"}]

#
execute as @s[nbt={Inventory:[]}] if entity @e[type=minecraft:armor_stand,tag=join_minigame,distance=0..3] run title @s actionbar [{"text": "Joined Minigame", "color": "green"}]
execute as @s[nbt={Inventory:[]}] if entity @e[type=minecraft:armor_stand,tag=join_minigame,distance=0..3] run tag @s add minigames_player


#########################################################
# Minigames Leave Remove Effects/Data:
#########################################################
execute if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..5] run effect clear @s minecraft:resistance
execute if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..5] run scoreboard players reset @s start_x
execute if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..5] run scoreboard players reset @s start_y
execute if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..5] run scoreboard players reset @s start_z
execute if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..5] run scoreboard players reset @s checkpoint
execute if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..5] run scoreboard players reset @s checkpoint_x
execute if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..5] run scoreboard players reset @s checkpoint_y
execute if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..5] run scoreboard players reset @s checkpoint_z


#########################################################
# Minigames Leave:
#########################################################
execute as @s[nbt=!{Inventory:[]}] if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..3] run title @s actionbar [{"text": "[MrChibi's MiniGames]: ", "color": "green"}, {"text": "Empty your inventory to Leave!", "color": "red"}]

#
execute as @s[nbt={Inventory:[]}] if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..3] run title @s actionbar [{"text": "Left Minigame", "color": "red"}]
execute as @s[nbt={Inventory:[]}] if entity @e[type=minecraft:armor_stand,tag=leave_minigame,distance=0..3] run tag @s remove minigames_player