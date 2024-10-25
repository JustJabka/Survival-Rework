################
#  LEGS BREAK  #
################
# add break legs attributes
execute if score @s survival_rework_jj.legs_break_lvl matches 1.. run attribute @s minecraft:movement_speed modifier add survival_rework_jj:easy_leg_break -0.025 add_value
execute if score @s survival_rework_jj.legs_break_lvl matches 2.. run attribute @s minecraft:movement_speed modifier add survival_rework_jj:hard_leg_break -0.025 add_value
execute if score @s survival_rework_jj.legs_break_lvl matches 3.. run attribute @s minecraft:movement_speed modifier add survival_rework_jj:extreme_leg_break -0.025 add_value

execute if score @s survival_rework_jj.legs_break_lvl matches 2.. run attribute @s minecraft:jump_strength modifier add survival_rework_jj:no_jump -0.5 add_value

# timer
scoreboard players remove @s[scores={survival_rework_jj.legs_break_heal_timer=1..}] survival_rework_jj.legs_break_heal_timer 1
advancement grant @s[scores={survival_rework_jj.legs_break_heal_timer=1,survival_rework_jj.legs_break_lvl=1..},advancements={survival_rework_jj:a/use_splint=false}] only survival_rework_jj:a/use_splint
scoreboard players set @s[scores={survival_rework_jj.legs_break_heal_timer=1}] survival_rework_jj.legs_break_lvl 0

# remove debuffs if no break
execute if score @s survival_rework_jj.legs_break_lvl matches 0 run attribute @s minecraft:movement_speed modifier remove survival_rework_jj:easy_leg_break
execute if score @s survival_rework_jj.legs_break_lvl matches ..1 run attribute @s minecraft:movement_speed modifier remove survival_rework_jj:hard_leg_break
execute if score @s survival_rework_jj.legs_break_lvl matches ..2 run attribute @s minecraft:movement_speed modifier remove survival_rework_jj:extreme_leg_break

execute if score @s survival_rework_jj.legs_break_lvl matches ..1 run attribute @s minecraft:jump_strength modifier remove survival_rework_jj:no_jump

# reset scoreboard
scoreboard players set @s[scores={survival_rework_jj.fall_one_cm=1..}] survival_rework_jj.fall_one_cm 0

############
# BLEEDING #
############

## get hp in percent
# get player HP
execute store result score @s survival_rework_jj.current_health run scoreboard players get @s survival_rework_jj.health
scoreboard players operation @s survival_rework_jj.current_health *= #100 const

# get player max HP
execute store result score @s survival_rework_jj.max_health run attribute @s minecraft:max_health get

# player HP % = <player HP> * 100 / <player max HP>
execute store result score @s survival_rework_jj.percent_health run scoreboard players operation @s survival_rework_jj.current_health /= @s survival_rework_jj.max_health

## main
execute if entity @s[tag=survival_rework_jj.bleeding2,gamemode=!creative,gamemode=!spectator] at @s run function survival_rework_jj:bleeding/main

############
#  THIRST  #
############
# raycast
execute at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_sneaking":true}}} if function survival_rework_jj:thirst/drink_raycast/pre run function survival_rework_jj:thirst/drink_raycast/start

# timer
execute at @s[gamemode=!creative,gamemode=!spectator] anchored eyes positioned ^ ^ ^ run function survival_rework_jj:thirst/main
execute if entity @s[gamemode=creative] run function survival_rework_jj:ui/remove_display
execute if entity @s[gamemode=spectator] run function survival_rework_jj:ui/remove_display
function survival_rework_jj:thirst/effects/main

scoreboard players remove @s[scores={survival_rework_jj.thirst_timer=..1}] survival_rework_jj.thirst 1
scoreboard players set @s[scores={survival_rework_jj.thirst_timer=..1}] survival_rework_jj.thirst_timer 3600

# damage player if he thirst
damage @s[scores={survival_rework_jj.thirst=0}] 0.5 survival_rework_jj:thirst

# reset scores
scoreboard players set @s[scores={survival_rework_jj.jump=1..}] survival_rework_jj.jump 0
scoreboard players set @s[scores={survival_rework_jj.walk=1..}] survival_rework_jj.walk 0

##################
# LOW HP DEBUFF  #
##################
effect give @s[scores={survival_rework_jj.percent_health=..30}] minecraft:blindness 3 0 true
effect give @s[scores={survival_rework_jj.percent_health=..30}] minecraft:mining_fatigue 1 0 true
effect give @s[scores={survival_rework_jj.percent_health=..30}] minecraft:weakness 1 0 true

#########
# DEATH #
#########
execute if score @s survival_rework_jj.health matches 0 run function survival_rework_jj:set_scores