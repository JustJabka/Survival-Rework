advancement revoke @s only survival_rework:bleeding
execute if entity @s[advancements={survival_rework:bleeding={items=false,projectiles=false,explosions=false,other=true}}] run return run function survival_rework:effect/bleeding/give/amplifier/1
function survival_rework:effect/bleeding/give/amplifier/2