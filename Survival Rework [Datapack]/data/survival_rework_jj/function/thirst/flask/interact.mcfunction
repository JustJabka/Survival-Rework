advancement revoke @s only survival_rework_jj:flask_interaction
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data={survival_rework_jj.flask:1b},!minecraft:damage=0] run return run function survival_rework_jj:thirst/flask/interact2 {hand: "mainhand"}
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data={survival_rework_jj.flask:1b},!minecraft:damage=0] run function survival_rework_jj:thirst/flask/interact2 {hand: "offhand"}