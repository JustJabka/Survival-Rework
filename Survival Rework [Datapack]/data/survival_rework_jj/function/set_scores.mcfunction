# Main
scoreboard players set @s survival_rework_jj.jump 0

# Legs break
tag @s remove survival_rework_jj.have_splint
scoreboard players set @s survival_rework_jj.effect.legs_break 0
scoreboard players set @s survival_rework_jj.legs_break.heal_timer 0

# Thirst
scoreboard players set @s survival_rework_jj.thirst 20
scoreboard players set @s survival_rework_jj.thirst_timer 3600

# Temperature
scoreboard players set @s survival_rework_jj.temperature 3660

# Effects
scoreboard players set @s survival_rework_jj.effect.bleeding 0
scoreboard players set @s survival_rework_jj.effect.thirst 0
scoreboard players set @s survival_rework_jj.effect.freshness 0

tag @s remove survival_rework_jj.effect.bleeding
tag @s remove survival_rework_jj.effect.thirst
tag @s remove survival_rework_jj.effect.freshness

effect clear @s minecraft:blindness