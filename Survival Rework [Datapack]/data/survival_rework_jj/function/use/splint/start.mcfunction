execute if entity @s[advancements={survival_rework_jj:use/splint={lvl1=true}}] run function survival_rework_jj:use/splint/set_timer {time:3000}
execute if entity @s[advancements={survival_rework_jj:use/splint={lvl2=true}}] run function survival_rework_jj:use/splint/set_timer {time:6000}
execute if entity @s[advancements={survival_rework_jj:use/splint={lvl3=true}}] run function survival_rework_jj:use/splint/set_timer {time:9000}

advancement revoke @s only survival_rework_jj:use/splint