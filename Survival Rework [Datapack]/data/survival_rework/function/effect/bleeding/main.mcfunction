# damage player with bleeding every 140 ticks (7 secounds)
scoreboard players remove @s[scores={survival_rework.effect.bleeding=1..}] survival_rework.effect.bleeding 1
function survival_rework:effect/bleeding/damage/start

# disable regeneration effect when bleeding
effect clear @s minecraft:regeneration

# particle
execute if score @s jabkacore.health.percent matches 70..100 run particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0 0 0 0.7 1
execute if score @s jabkacore.health.percent matches 50..69 run particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0 0 0 0.7 2
execute if score @s jabkacore.health.percent matches 30..49 run particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0 0 0 0.7 3
execute if score @s jabkacore.health.percent matches 1..29 run particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0 0 0 0.7 5