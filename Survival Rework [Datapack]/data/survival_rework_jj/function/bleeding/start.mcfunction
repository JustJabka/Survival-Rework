advancement revoke @s only survival_rework_jj:bleeding

# start bleeding if player hp 15 or less
tag @s[tag=!survival_rework_jj.bleeding] add survival_rework_jj.bleeding
scoreboard players set @s[tag=survival_rework_jj.bleeding] survival_rework_jj.bleeding_timer 140
# just change tags
tag @s[tag=survival_rework_jj.bleeding] add survival_rework_jj.bleeding2
tag @s[tag=survival_rework_jj.bleeding2] remove survival_rework_jj.bleeding

# give advancment
advancement grant @s[advancements={survival_rework_jj:a/bleeding=false}] only survival_rework_jj:a/bleeding