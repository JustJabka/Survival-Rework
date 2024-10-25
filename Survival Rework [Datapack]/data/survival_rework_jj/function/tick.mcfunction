kill @e[type=minecraft:interaction,tag=survival_rework_jj.water_interaction,limit=5]
execute as @e[type=minecraft:marker,tag=survival_rework_jj.snow_effect] at @s run function survival_rework_jj:temperature/damage/hypothermia/end
execute as @a run function survival_rework_jj:tick_player