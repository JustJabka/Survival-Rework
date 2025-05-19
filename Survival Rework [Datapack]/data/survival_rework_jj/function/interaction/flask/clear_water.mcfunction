advancement revoke @s only survival_rework_jj:interaction/flask/clear_water

function survival_rework_jj:interaction/cauldron/raycast/remove_water/start

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{survival_rework_jj.flask:1b},minecraft:damage~{damage:{min:1}}] run return run function survival_rework_jj:interaction/flask/fill {hand:"mainhand", "fluid":"clear_water"}
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{survival_rework_jj.flask:1b},minecraft:damage~{damage:{min:1}}] run function survival_rework_jj:interaction/flask/fill {hand:"offhand", "fluid":"clear_water"}