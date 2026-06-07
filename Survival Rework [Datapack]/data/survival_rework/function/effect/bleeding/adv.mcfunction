execute store result score #is_lethal main unless entity @s[advancements={survival_rework:bleeding={items=false,projectiles=false,explosions=false,other=true}}]
advancement revoke @s only survival_rework:bleeding

execute if score #is_lethal main matches 1 run return run function survival_rework:effect/bleeding/give/amplifier/2
function survival_rework:effect/bleeding/give/amplifier/1