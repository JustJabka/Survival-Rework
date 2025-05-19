scoreboard players set #temp2 main_score 0
execute anchored feet positioned as @s unless block ~ ~ ~ #minecraft:air unless block ~ ~1 ~ #minecraft:air run return run damage @s 1 minecraft:freeze
execute if items entity @s armor.* #survival_rework_jj:armor/warm run return run damage @s 1 minecraft:freeze