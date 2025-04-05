################
#  LEGS BREAK  #
################
execute if score .bone_breakage survival_rework_jj.config matches 1 run function survival_rework_jj:bone_break/legs/main

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
execute if score .bleeding survival_rework_jj.config matches 1 if entity @s[tag=survival_rework_jj.bleeding,gamemode=!creative,gamemode=!spectator] at @s run function survival_rework_jj:bleeding/main

############
#  THIRST  #
############
# raycast
execute at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{type_specific:{type:"minecraft:player",input:{sneak:true}}}} if function survival_rework_jj:thirst/drink_raycast/pre run function survival_rework_jj:thirst/drink_raycast/start

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

#############
#  EFFECTS  #
#############
function survival_rework_jj:effects/main

##################
# LOW HP DEBUFF  #
##################
execute if score .low_hp_debuffs survival_rework_jj.config matches 1 if entity @s[scores={survival_rework_jj.percent_health=..30}] run function survival_rework_jj:healing_system/low_hp_debuff

#########
# DEATH #
#########
execute if score @s survival_rework_jj.health matches 0 run function survival_rework_jj:set_scores