# Still code💀
tellraw @s {text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nConfig",bold:true}

# Thirst
execute if score .thirst survival_rework_jj.config matches 1 run tellraw @s ["∙ Thirst ",{text:"✔",color:"green",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/thirst"}}]
execute if score .thirst survival_rework_jj.config matches 0 run tellraw @s ["∙ Thirst ",{text:"❌",color:"red",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/thirst"}}]

# Temperature
execute if score .temperature survival_rework_jj.config matches 1 run tellraw @s ["∙ Temperature ",{text:"✔",color:"green",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/temperature"}},{text:" ⓘ",hover_event:{action:"show_text",value:"This feature is experimental"}}]
execute if score .temperature survival_rework_jj.config matches 0 run tellraw @s ["∙ Temperature ",{text:"❌",color:"red",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/temperature"}},{text:" ⓘ",hover_event:{action:"show_text","value":"This feature is experimental"}}]

# Bleeding
execute if score .bleeding survival_rework_jj.config matches 1 run tellraw @s ["∙ Bleeding ",{text:"✔",color:"green",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/bleeding"}}]
execute if score .bleeding survival_rework_jj.config matches 0 run tellraw @s ["∙ Bleeding ",{text:"❌",color:"red",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/bleeding"}}]

# Bone breakage
execute if score .bone_breakage survival_rework_jj.config matches 1 run tellraw @s ["∙ Bone breakage ",{text:"✔",color:"green",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/bone_breakage"}}] 
execute if score .bone_breakage survival_rework_jj.config matches 0 run tellraw @s ["∙ Bone breakage ",{text:"❌",color:"red",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/bone_breakage"}}]

# Low HP debuffs
execute if score .low_hp_debuffs survival_rework_jj.config matches 1 run tellraw @s ["∙ Low HP debuffs ",{text:"✔",color:"green",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/low_hp_debuffs"}}] 
execute if score .low_hp_debuffs survival_rework_jj.config matches 0 run tellraw @s ["∙ Low HP debuffs ",{text:"❌",color:"red",click_event:{action:"run_command","command":"/function survival_rework_jj:zzz/low_hp_debuffs"}}]