data modify storage survival_rework:main config.command set value "function survival_rework:config/update {thirst:$(thirst),temperature:$(temperature),bleeding:$(bleeding),bone_breakage:$(bone_breakage),low_hp_debuffs:$(low_hp_debuffs)}"
execute store result storage survival_rework:main config.thirst byte 1 run scoreboard players get .thirst survival_rework.config
execute store result storage survival_rework:main config.temperature byte 1 run scoreboard players get .temperature survival_rework.config
execute store result storage survival_rework:main config.bleeding byte 1 run scoreboard players get .bleeding survival_rework.config
execute store result storage survival_rework:main config.bone_breakage byte 1 run scoreboard players get .bone_breakage survival_rework.config
execute store result storage survival_rework:main config.low_hp_debuffs byte 1 run scoreboard players get .low_hp_debuffs survival_rework.config

function survival_rework:config/init with storage survival_rework:main config