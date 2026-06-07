### Legs Break
# remove debuffs if no break
attribute @s[scores={survival_rework.effect.legs_break=0}] minecraft:movement_speed modifier remove survival_rework:easy_leg_break
attribute @s[scores={survival_rework.effect.legs_break=..1}] minecraft:movement_speed modifier remove survival_rework:hard_leg_break
attribute @s[scores={survival_rework.effect.legs_break=..2}] minecraft:movement_speed modifier remove survival_rework:extreme_leg_break

attribute @s[scores={survival_rework.effect.legs_break=..1}] minecraft:jump_strength modifier remove survival_rework:no_jump

### Bleeding
function justlib:api/health/get/percent

### Thirst
# timer
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function survival_rework:thirst/main
execute if entity @s[gamemode=creative] run function survival_rework:ui/hide
execute if entity @s[gamemode=spectator] run function survival_rework:ui/hide

scoreboard players remove @s[scores={survival_rework.thirst_timer=..1}] survival_rework.thirst 1
scoreboard players set @s[scores={survival_rework.thirst_timer=..1}] survival_rework.thirst_timer 3600

# damage player if he thirst
execute if score .thirst survival_rework.config matches 1 run damage @s[scores={survival_rework.thirst=0}] 0.5 survival_rework:thirst

### Other
# Effects
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function survival_rework:effect/main

# Interactions
function survival_rework:interaction/main

### Low HP debuffs
execute if score .low_hp_debuffs survival_rework.config matches 1 if entity @s[scores={justlib.health.percent=..30}] run function survival_rework:healing_system/low_hp_debuff