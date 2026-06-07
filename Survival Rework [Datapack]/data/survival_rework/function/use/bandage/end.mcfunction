$item modify entity @s[gamemode=!creative] weapon.$(hand) justlib:shared/remove_one
playsound minecraft:block.wool.place ambient @a[distance=..5] ~ ~ ~

function survival_rework:effect/bleeding/clear
effect give @s instant_health 1 0 true