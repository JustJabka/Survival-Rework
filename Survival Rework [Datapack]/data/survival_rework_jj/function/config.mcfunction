data modify storage survival_rework_jj:main config set value {command:"function survival_rework_jj:config/update {thirst:$(thirst),temperature:$(temperature),bleeding:$(bleeding),bone_breakage:$(bone_breakage),low_hp_debuffs:$(low_hp_debuffs)}"}
execute store result storage survival_rework_jj:main config.thirst byte 1 run scoreboard players get .thirst survival_rework_jj.config
execute store result storage survival_rework_jj:main config.temperature byte 1 run scoreboard players get .temperature survival_rework_jj.config
execute store result storage survival_rework_jj:main config.bleeding byte 1 run scoreboard players get .bleeding survival_rework_jj.config
execute store result storage survival_rework_jj:main config.bone_breakage byte 1 run scoreboard players get .bone_breakage survival_rework_jj.config
execute store result storage survival_rework_jj:main config.low_hp_debuffs byte 1 run scoreboard players get .low_hp_debuffs survival_rework_jj.config

function survival_rework_jj:config/init with storage survival_rework_jj:main config