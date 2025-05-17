# add break legs lvl in scoreboard
execute if items entity @s armor.* *[minecraft:enchantments~[{enchantments:"minecraft:feather_falling"}]] run return run function survival_rework_jj:enchantment/feather_falling
scoreboard players add @s[scores={survival_rework_jj.effect.legs_break=..2}] survival_rework_jj.effect.legs_break 1

# reset heal timer
scoreboard players set @s[scores={survival_rework_jj.legs_break.heal_timer=1..}] survival_rework_jj.legs_break.heal_timer 9000

# break leg sound
playsound minecraft:entity.item.break ambient @a[distance=..5] ~ ~ ~

advancement grant @s[advancements={survival_rework_jj:a/break_leg=false}] only survival_rework_jj:a/break_leg
advancement revoke @s only survival_rework_jj:break_leg