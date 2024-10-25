data modify storage survival_rework_jj:main temp set from storage survival_rework_jj:main temperature
function survival_rework_jj:temperature/get_biome/loop

##################
##  TEMPERATURE  #
##################
# increase temperature if player in leather armor
execute if items entity @s armor.* #survival_rework_jj:temperature/leather run scoreboard players add @s survival_rework_jj.temperature 2

# increase temperature if player in metalic armor
execute if biome ~ ~ ~ #survival_rework_jj:warm if items entity @s armor.* #survival_rework_jj:temperature/metalic run scoreboard players add @s survival_rework_jj.temperature 2
# decrease temperature if player in metalic armor
execute if biome ~ ~ ~ #survival_rework_jj:cold if items entity @s armor.* #survival_rework_jj:temperature/metalic run scoreboard players remove @s survival_rework_jj.temperature 2

# increase temperature if player walk, sprint and jump
scoreboard players add @s[scores={survival_rework_jj.walk=1..}] survival_rework_jj.thirst_timer 1
scoreboard players add @s[predicate=survival_rework_jj:is_sprinting] survival_rework_jj.thirst_timer 1
scoreboard players add @s[scores={survival_rework_jj.jump=1..}] survival_rework_jj.thirst_timer 1

execute unless dimension survival_rework_jj:main run function survival_rework_jj:temperature/get_blocks/pre