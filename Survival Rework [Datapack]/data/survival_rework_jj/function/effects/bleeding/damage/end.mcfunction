damage @s[scores={survival_rework_jj.percent_health=70..100}] 1 survival_rework_jj:bleeding
damage @s[scores={survival_rework_jj.percent_health=50..69}] 2 survival_rework_jj:bleeding
damage @s[scores={survival_rework_jj.percent_health=30..49}] 3 survival_rework_jj:bleeding
damage @s[scores={survival_rework_jj.percent_health=1..29}] 4 survival_rework_jj:bleeding
scoreboard players set @s[tag=!survival_rework_jj.effect.bleeding.1] survival_rework_jj.effect.bleeding 140
execute if score @s[tag=survival_rework_jj.effect.bleeding.1] survival_rework_jj.effect.bleeding matches 0 run function survival_rework_jj:effects/bleeding/clear