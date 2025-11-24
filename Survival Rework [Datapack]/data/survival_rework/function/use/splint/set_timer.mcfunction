scoreboard players set @s[advancements={survival_rework:use/splint={lvl1=true}}] survival_rework.legs_break.heal_timer 3000
scoreboard players set @s[advancements={survival_rework:use/splint={lvl2=true}}] survival_rework.legs_break.heal_timer 6000
scoreboard players set @s[advancements={survival_rework:use/splint={lvl3=true}}] survival_rework.legs_break.heal_timer 9000

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{survival_rework.splint:true}] run return run function survival_rework:use/splint/end {hand:"mainhand"}
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{survival_rework.splint:true}] run function survival_rework:use/splint/end {hand:"offhand"}