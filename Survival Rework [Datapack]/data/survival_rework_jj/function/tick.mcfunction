kill @e[type=minecraft:interaction,tag=survival_rework_jj.interaction,limit=1]
execute as @e[type=minecraft:marker,tag=survival_rework_jj.snow_effect] at @s run function survival_rework_jj:effect/hypotermia/end
execute as @e[type=minecraft:marker,tag=survival_rework_jj.cauldron] at @s run function survival_rework_jj:thirst/cauldron/main

execute as @a run function survival_rework_jj:tick_player