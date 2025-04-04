advancement revoke @s only survival_rework_jj:use_bandage
advancement grant @s[advancements={survival_rework_jj:a/use_bandage=false}] only survival_rework_jj:a/use_bandage
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{survival_rework_jj.bandage:1b}] run return run function survival_rework_jj:bleeding/heal {hand:"mainhand"}
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{survival_rework_jj.bandage:1b}] run function survival_rework_jj:bleeding/heal {hand:"offhand"}