advancement revoke @s only survival_rework_jj:interaction/flask/cauldron

tag @s add survival_rework_jj.cauldron_interaction
execute as @e[type=minecraft:interaction,tag=survival_rework_jj.cauldron_interaction,tag=survival_rework_jj.interaction] at @s if function survival_rework_jj:interaction/cauldron/raycast/target run function survival_rework_jj:interaction/cauldron/raycast/remove_water
tag @s remove survival_rework_jj.cauldron_interaction

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{survival_rework_jj.flask:1b},!minecraft:damage=0] run return run function survival_rework_jj:interaction/flask/fill {hand:"mainhand", "fluid":"clear_water"}
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{survival_rework_jj.flask:1b},!minecraft:damage=0] run function survival_rework_jj:interaction/flask/fill {hand:"offhand", "fluid":"clear_water"}