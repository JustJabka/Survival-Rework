execute if items entity @s armor.* *[minecraft:enchantments~[{enchantments:["survival_rework:frostguard"]}]] run return run function survival_rework:enchantment/frostguard

# Warm armor
execute if items entity @s armor.head #survival_rework:armor/warm run scoreboard players add #survival_rework.resistance main 2
execute if items entity @s armor.chest #survival_rework:armor/warm run scoreboard players add #survival_rework.resistance main 5
execute if items entity @s armor.legs #survival_rework:armor/warm run scoreboard players add #survival_rework.resistance main 5
execute if items entity @s armor.feet #survival_rework:armor/warm run scoreboard players add #survival_rework.resistance main 2

# Metal armor
execute if items entity @s armor.head #survival_rework:armor/metal run scoreboard players add #survival_rework.resistance main 2
execute if items entity @s armor.chest #survival_rework:armor/metal run scoreboard players add #survival_rework.resistance main 3
execute if items entity @s armor.legs #survival_rework:armor/metal run scoreboard players add #survival_rework.resistance main 3
execute if items entity @s armor.feet #survival_rework:armor/metal run scoreboard players add #survival_rework.resistance main 2

# Ice Cube
execute if entity @s[tag=survival_rework.effect.freshness] run scoreboard players remove #survival_rework.resistance main 2