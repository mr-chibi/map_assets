#
execute as @a at @s run function map_assets:config_setup
execute as @a at @s[tag=minigames_player] run function map_assets:config_pressure_plates
execute as @a at @s[tag=minigames_player] run function map_assets:config_blocks

#
execute as @a at @s[tag=minigames_player,scores={checkpoint=1}] run function map_assets:commands/checkpoint