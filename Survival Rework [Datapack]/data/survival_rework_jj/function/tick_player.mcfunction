### Legs Break
# remove debuffs if no break
attribute @s[scores={survival_rework_jj.effect.legs_break=0}] minecraft:movement_speed modifier remove survival_rework_jj:easy_leg_break
attribute @s[scores={survival_rework_jj.effect.legs_break=..1}] minecraft:movement_speed modifier remove survival_rework_jj:hard_leg_break
attribute @s[scores={survival_rework_jj.effect.legs_break=..2}] minecraft:movement_speed modifier remove survival_rework_jj:extreme_leg_break

attribute @s[scores={survival_rework_jj.effect.legs_break=..1}] minecraft:jump_strength modifier remove survival_rework_jj:no_jump

### Bleeding
# get player HP
execute store result score @s survival_rework_jj.current_health run scoreboard players get @s survival_rework_jj.health
scoreboard players operation @s survival_rework_jj.current_health *= #100 const

# get player max HP
execute store result score @s survival_rework_jj.max_health run attribute @s minecraft:max_health get

# player HP % = <player HP> * 100 / <player max HP>
execute store result score @s survival_rework_jj.percent_health run scoreboard players operation @s survival_rework_jj.current_health /= @s survival_rework_jj.max_health

### Thirst
# raycast
execute at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{type_specific:{type:"minecraft:player",input:{sneak:true}}}} if function survival_rework_jj:interaction/water/raycast/pre run function survival_rework_jj:interaction/water/raycast/start
execute at @s if items entity @s weapon.* minecraft:poisonous_potato[minecraft:custom_data~{survival_rework_jj.flask:1b}] run function survival_rework_jj:interaction/cauldron/raycast/start

# timer
execute at @s[gamemode=!creative,gamemode=!spectator] run function survival_rework_jj:thirst/main
execute if entity @s[gamemode=creative] run function survival_rework_jj:ui/hide
execute if entity @s[gamemode=spectator] run function survival_rework_jj:ui/hide

scoreboard players remove @s[scores={survival_rework_jj.thirst_timer=..1}] survival_rework_jj.thirst 1
scoreboard players set @s[scores={survival_rework_jj.thirst_timer=..1}] survival_rework_jj.thirst_timer 3600

# damage player if he thirst
execute if score .thirst survival_rework_jj.config matches 1 run damage @s[scores={survival_rework_jj.thirst=0}] 0.5 survival_rework_jj:thirst

# reset scores
scoreboard players set @s[scores={survival_rework_jj.jump=1..}] survival_rework_jj.jump 0

# Effects
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function survival_rework_jj:effects/main

### Low HP debuffs
execute if score .low_hp_debuffs survival_rework_jj.config matches 1 if entity @s[scores={survival_rework_jj.percent_health=..30}] run function survival_rework_jj:healing_system/low_hp_debuff

### On death
execute if score @s survival_rework_jj.health matches 0 run function survival_rework_jj:set_scores