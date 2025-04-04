execute store result entity @s Rotation[0] float 1 run scoreboard players get #temp main_score
execute at @s positioned 0.0 0.0 0.0 anchored eyes run tp @s ^ ^ ^1
execute store result score #temp main_score run data get entity @s Pos[2] 100