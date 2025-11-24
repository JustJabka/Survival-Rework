# Thirst
$scoreboard players set #temp main $(thirst)
execute unless score .thirst survival_rework.config = #temp main run function survival_rework:config/thirst/scores
scoreboard players operation .thirst survival_rework.config = #temp main
function survival_rework:config/thirst/ui

# Temperature
$scoreboard players set #temp main $(temperature)
execute unless score .temperature survival_rework.config = #temp main run function survival_rework:config/temperature/scores
scoreboard players operation .temperature survival_rework.config = #temp main
function survival_rework:config/temperature/ui

# Bleeding
$scoreboard players set #temp main $(bleeding)
execute unless score .bleeding survival_rework.config = #temp main run function survival_rework:config/bleeding
scoreboard players operation .bleeding survival_rework.config = #temp main

# Bone Breakage
$scoreboard players set #temp main $(bone_breakage)
execute unless score .bone_breakage survival_rework.config = #temp main run function survival_rework:config/bone_breakage
scoreboard players operation .bone_breakage survival_rework.config = #temp main

# Low HP Debuff
$scoreboard players set .low_hp_debuffs survival_rework.config $(low_hp_debuffs)