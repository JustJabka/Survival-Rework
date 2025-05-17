advancement revoke @s only survival_rework_jj:bleeding
execute if entity @s[advancements={survival_rework_jj:bleeding={items=false,projectiles=false,explosions=false,other=true}}] run return run function survival_rework_jj:effect/bleeding/give/amplifier/1
function survival_rework_jj:effect/bleeding/give/amplifier/2