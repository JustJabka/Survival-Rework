advancement revoke @s only survival_rework_jj:bleeding

# start bleeding if player hp 15 or less
tag @s add survival_rework_jj.bleeding
scoreboard players set @s survival_rework_jj.bleeding_timer 140

# give advancment
advancement grant @s[advancements={survival_rework_jj:a/bleeding=false}] only survival_rework_jj:a/bleeding