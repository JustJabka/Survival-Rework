# Main

# Legs break
tag @s remove survival_rework.have_splint
scoreboard players set @s survival_rework.effect.legs_break 0
scoreboard players set @s survival_rework.legs_break.heal_timer 0

# Thirst
scoreboard players set @s survival_rework.thirst 20
scoreboard players set @s survival_rework.thirst_timer 3600

# Temperature
scoreboard players set @s survival_rework.temperature 3660

# Effects
scoreboard players set @s survival_rework.effect.bleeding 0
scoreboard players set @s survival_rework.effect.thirst 0
scoreboard players set @s survival_rework.effect.freshness 0

tag @s remove survival_rework.effect.bleeding
tag @s remove survival_rework.effect.bleeding.1
tag @s remove survival_rework.effect.bleeding.2
tag @s remove survival_rework.effect.thirst
tag @s remove survival_rework.effect.freshness

effect clear @s minecraft:blindness