scoreboard players set #distance main_score 0
execute unless entity @e[type=minecraft:marker,tag=survival_rework_jj.cauldron,scores={survival_rework_jj.water_boil=0},distance=..1] run return fail

# if player in creative and already have clear water dont give another one
execute if items entity @s[gamemode=creative] container.* minecraft:potion[minecraft:custom_data~{survival_rework_jj.clear_water:1b}] run return fail

# give in hand
execute if items entity @s weapon.* minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run return run function survival_rework_jj:thirst/cauldron/clear_water/replace

# drop on floor if inventory doesnt have free slots
execute if entity @s[gamemode=!creative] unless function survival_rework_jj:thirst/cauldron/clear_water/has_free_slots run function survival_rework_jj:thirst/cauldron/clear_water/clear

# give
clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] 1
loot give @s loot survival_rework_jj:items/clear_water