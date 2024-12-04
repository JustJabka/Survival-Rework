$item modify entity @s[gamemode=!creative] weapon.$(hand) survival_rework_jj:remove_one
playsound minecraft:block.wool.place ambient @a[distance=..5] ~ ~ ~

tag @s remove survival_rework_jj.bleeding2
effect give @s instant_health 1 0 true