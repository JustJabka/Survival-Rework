damage @s[scores={justlib.health.percent=70..100}] 1 survival_rework:bleeding
damage @s[scores={justlib.health.percent=50..69}] 2 survival_rework:bleeding
damage @s[scores={justlib.health.percent=30..49}] 3 survival_rework:bleeding
damage @s[scores={justlib.health.percent=1..29}] 4 survival_rework:bleeding

scoreboard players set @s[tag=!survival_rework.effect.bleeding.1] survival_rework.effect.bleeding 140

execute if score @s[tag=survival_rework.effect.bleeding.1] survival_rework.effect.bleeding matches 0 run function survival_rework:effect/bleeding/clear