execute unless block ~ ~ ~ #minecraft:cauldrons run return run kill @s
execute if entity @a[distance=..30,limit=1] run function survival_rework:thirst/cauldron/boil/timer