advancement revoke @s only survival_rework_jj:medicinal_powder_interaction
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data={survival_rework_jj.medicinal_powder:1b}] run return run function survival_rework_jj:healing_system/interact2 {hand: "mainhand"}
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data={survival_rework_jj.medicinal_powder:1b}] run function survival_rework_jj:healing_system/interact2 {hand: "offhand"}