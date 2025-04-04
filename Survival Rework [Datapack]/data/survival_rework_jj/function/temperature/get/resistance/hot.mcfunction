execute if items entity @s armor.* *[minecraft:enchantments~[{enchantments:["survival_rework_jj:frostguard"]}]] run return run function survival_rework_jj:enchantments/frostguard

# Warm armor
execute if items entity @s armor.head #survival_rework_jj:armor/warm run scoreboard players add #survival_rework_jj.resistance main_score 2
execute if items entity @s armor.chest #survival_rework_jj:armor/warm run scoreboard players add #survival_rework_jj.resistance main_score 5
execute if items entity @s armor.legs #survival_rework_jj:armor/warm run scoreboard players add #survival_rework_jj.resistance main_score 5
execute if items entity @s armor.feet #survival_rework_jj:armor/warm run scoreboard players add #survival_rework_jj.resistance main_score 2

# Metal armor
execute if items entity @s armor.head #survival_rework_jj:armor/metal run scoreboard players add #survival_rework_jj.resistance main_score 1
execute if items entity @s armor.chest #survival_rework_jj:armor/metal run scoreboard players add #survival_rework_jj.resistance main_score 2
execute if items entity @s armor.legs #survival_rework_jj:armor/metal run scoreboard players add #survival_rework_jj.resistance main_score 2
execute if items entity @s armor.feet #survival_rework_jj:armor/metal run scoreboard players add #survival_rework_jj.resistance main_score 1

# Ice Cube
execute if entity @s[tag=survival_rework_jj.effect.freshness] run scoreboard players remove #survival_rework_jj.resistance main_score 2