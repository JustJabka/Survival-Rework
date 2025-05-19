# distance
execute store result score #distance main_score run attribute @s minecraft:block_interaction_range get 10
# starting from the eyes
execute anchored eyes positioned ^ ^ ^ run function survival_rework_jj:interaction/cauldron/raycast/main