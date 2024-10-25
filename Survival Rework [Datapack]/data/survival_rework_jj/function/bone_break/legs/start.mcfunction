advancement revoke @s only survival_rework_jj:use_splint

$scoreboard players set @s survival_rework_jj.legs_break_heal_timer $(time)

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data={survival_rework_jj.splint:1b}] run return run function survival_rework_jj:bone_break/legs/heal {hand: "mainhand"}
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data={survival_rework_jj.splint:1b}] run function survival_rework_jj:bone_break/legs/heal {hand: "offhand"}