# water
scoreboard players add @s[advancements={survival_rework_jj:drink={drink1=true}}] survival_rework_jj.thirst 3
#execute if entity @s[advancements={survival_rework_jj:drink={drink1=true}}] run function survival_rework_jj:effects/thirst/give

# milk
scoreboard players add @s[advancements={survival_rework_jj:drink={drink2=true}}] survival_rework_jj.thirst 3
tag @s[advancements={survival_rework_jj:drink={drink2=true}}] remove survival_rework_jj.effect.thirst
tag @s[advancements={survival_rework_jj:drink={drink2=true}}] remove survival_rework_jj.effect.freshness

# juicy food
scoreboard players add @s[advancements={survival_rework_jj:drink={drink3=true}}] survival_rework_jj.thirst 1

# ice cube
scoreboard players add @s[advancements={survival_rework_jj:drink={drink4=true}}] survival_rework_jj.thirst 2

tag @s[advancements={survival_rework_jj:drink={drink4=true}}] add survival_rework_jj.effect.freshness
scoreboard players add @s[advancements={survival_rework_jj:drink={drink4=true}}] survival_rework_jj.effect.freshness 660

# end
advancement revoke @s only survival_rework_jj:drink