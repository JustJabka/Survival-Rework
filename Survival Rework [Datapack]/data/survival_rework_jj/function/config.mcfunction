# still code💀
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nConfig","bold":true}

# thirst
execute if score .thirst survival_rework_jj.config matches 1 run tellraw @s ["∙ Thirst ",{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/thirst"}}]
execute if score .thirst survival_rework_jj.config matches 0 run tellraw @s ["∙ Thirst ",{"text":"❌","color":"red","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/thirst"}}]

# temperature
execute if score .temperature survival_rework_jj.config matches 1 run tellraw @s ["∙ Temperature ",{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/temperature"}},{"text":" ⓘ","hoverEvent":{"action":"show_text","contents":"This feature is experimental"}}]
execute if score .temperature survival_rework_jj.config matches 0 run tellraw @s ["∙ Temperature ",{"text":"❌","color":"red","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/temperature"}},{"text":" ⓘ","hoverEvent":{"action":"show_text","contents":"This feature is experimental"}}]

# bleeding
execute if score .bleeding survival_rework_jj.config matches 1 run tellraw @s ["∙ Bleeding ",{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/bleeding"}}]
execute if score .bleeding survival_rework_jj.config matches 0 run tellraw @s ["∙ Bleeding ",{"text":"❌","color":"red","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/bleeding"}}]

# bone breakage
execute if score .bone_breakage survival_rework_jj.config matches 1 run tellraw @s ["∙ Bone breakage ",{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/bone_breakage"}}] 
execute if score .bone_breakage survival_rework_jj.config matches 0 run tellraw @s ["∙ Bone breakage ",{"text":"❌","color":"red","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/bone_breakage"}}]

# low HP debuffs
execute if score .low_hp_debuffs survival_rework_jj.config matches 1 run tellraw @s ["∙ Low HP debuffs ",{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/low_hp_debuffs"}}] 
execute if score .low_hp_debuffs survival_rework_jj.config matches 0 run tellraw @s ["∙ Low HP debuffs ",{"text":"❌","color":"red","clickEvent":{"action":"run_command","value":"/function survival_rework_jj:zzz/low_hp_debuffs"}}]