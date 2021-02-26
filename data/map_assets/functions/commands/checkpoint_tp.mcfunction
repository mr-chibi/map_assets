# Update Armorstand Coords:
execute store result entity @s Pos[0] double 1 run scoreboard players get @p checkpoint_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @p checkpoint_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @p checkpoint_z

# Tp player to Armorstand:
tp @p @s

# Remove Armorstand: 
kill @s