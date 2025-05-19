# Thirst
$scoreboard players set #temp main_score $(thirst)
execute unless score .thirst survival_rework_jj.config = #temp main_score run function survival_rework_jj:config/thirst/scores
scoreboard players operation .thirst survival_rework_jj.config = #temp main_score
function survival_rework_jj:config/thirst/ui

# Temperature
$scoreboard players set #temp main_score $(temperature)
execute unless score .temperature survival_rework_jj.config = #temp main_score run function survival_rework_jj:config/temperature/scores
scoreboard players operation .temperature survival_rework_jj.config = #temp main_score
function survival_rework_jj:config/temperature/ui

# Bleeding
$scoreboard players set #temp main_score $(bleeding)
execute unless score .bleeding survival_rework_jj.config = #temp main_score run function survival_rework_jj:config/bleeding
scoreboard players operation .bleeding survival_rework_jj.config = #temp main_score

# Bone Breakage
$scoreboard players set #temp main_score $(bone_breakage)
execute unless score .bone_breakage survival_rework_jj.config = #temp main_score run function survival_rework_jj:config/bone_breakage
scoreboard players operation .bone_breakage survival_rework_jj.config = #temp main_score

# Low HP Debuff
$scoreboard players set .low_hp_debuffs survival_rework_jj.config $(low_hp_debuffs)