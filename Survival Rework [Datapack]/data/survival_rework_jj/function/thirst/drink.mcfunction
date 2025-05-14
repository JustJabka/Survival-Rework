# water
scoreboard players add @s[advancements={survival_rework_jj:drink={water=true}}] survival_rework_jj.thirst 3
execute if entity @s[advancements={survival_rework_jj:drink={water=true}}] run function survival_rework_jj:effects/thirst/chance

# clear water
scoreboard players add @s[advancements={survival_rework_jj:drink={clear_water=true}}] survival_rework_jj.thirst 3

# milk
scoreboard players add @s[advancements={survival_rework_jj:drink={milk_bucket=true}}] survival_rework_jj.thirst 3
tag @s[advancements={survival_rework_jj:drink={milk_bucket=true}}] remove survival_rework_jj.effect.thirst
tag @s[advancements={survival_rework_jj:drink={milk_bucket=true}}] remove survival_rework_jj.effect.freshness

# juicy food
scoreboard players add @s[advancements={survival_rework_jj:drink={juicy=true}}] survival_rework_jj.thirst 1

# ice cube
execute if entity @s[advancements={survival_rework_jj:drink={ice_cube=true}}] run function survival_rework_jj:effects/freshness/give

# end
advancement revoke @s only survival_rework_jj:drink