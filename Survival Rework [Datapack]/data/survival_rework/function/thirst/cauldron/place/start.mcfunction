advancement revoke @s only survival_rework:place_cauldron

# distance
execute store result score #distance main run attribute @s minecraft:block_interaction_range get 10
# starting from the eyes
execute anchored eyes positioned ^ ^ ^ run function survival_rework:thirst/cauldron/place/main