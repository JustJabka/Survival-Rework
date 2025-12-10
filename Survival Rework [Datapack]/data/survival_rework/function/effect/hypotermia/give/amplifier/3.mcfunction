scoreboard players set #temp2 main 0
execute anchored feet positioned as @s unless block ~ ~ ~ #minecraft:air unless block ~ ~1 ~ #minecraft:air run return run damage @s 1 minecraft:freeze
execute if items entity @s armor.* #survival_rework:armor/warm run return run damage @s 1 minecraft:freeze