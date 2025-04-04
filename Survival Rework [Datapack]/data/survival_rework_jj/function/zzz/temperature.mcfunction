scoreboard players set @s survival_rework_jj.temperature 3660
tag @s remove survival_rework_jj.effect.freshness

function survival_rework_jj:zzz/temperature2
execute if score .temperature survival_rework_jj.config matches 1 run schedule function survival_rework_jj:temperature/loop 5s
function survival_rework_jj:config