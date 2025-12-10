# water
scoreboard players add @s[advancements={survival_rework:drink={water=true}}] survival_rework.thirst 3
execute if entity @s[advancements={survival_rework:drink={water=true}}] run function survival_rework:effect/thirst/chance

# clear water
scoreboard players add @s[advancements={survival_rework:drink={clear_water=true}}] survival_rework.thirst 3

# milk
scoreboard players add @s[advancements={survival_rework:drink={milk_bucket=true}}] survival_rework.thirst 3
tag @s[advancements={survival_rework:drink={milk_bucket=true}}] remove survival_rework.effect.thirst
tag @s[advancements={survival_rework:drink={milk_bucket=true}}] remove survival_rework.effect.freshness

# juicy food
scoreboard players add @s[advancements={survival_rework:drink={juicy=true}}] survival_rework.thirst 1

# ice cube
execute if entity @s[advancements={survival_rework:drink={ice_cube=true}}] run function survival_rework:effect/freshness/give

# end
advancement revoke @s only survival_rework:drink