# thirst = true, temperature = true
$execute if score .thirst survival_rework_jj.config matches 1 if score .temperature survival_rework_jj.config matches 1 run title @s[tag=!survival_rework_jj.effect.thirst] actionbar [{"nbt":"thirst_actionbar[$(thirst)]","storage":"survival_rework_jj:main","color":"#ffffff","shadow_color":0,"font":"justjabka:thirst/normal"},{"nbt":"temperature_actionbar[$(temperature)]","storage":"survival_rework_jj:main","color":"#ffffff","shadow_color":0,"font":"justjabka:default"}]
$execute if score .thirst survival_rework_jj.config matches 1 if score .temperature survival_rework_jj.config matches 1 run title @s[tag=survival_rework_jj.effect.thirst] actionbar [{"nbt":"thirst_actionbar[$(thirst)]","storage":"survival_rework_jj:main","color":"#ffffff","shadow_color":0,"font":"justjabka:thirst/effect"},{"nbt":"temperature_actionbar[$(temperature)]","storage":"survival_rework_jj:main","color":"#ffffff","shadow_color":0,"font":"justjabka:default"}]

# thirst = true, temperature = false
$execute if score .thirst survival_rework_jj.config matches 1 if score .temperature survival_rework_jj.config matches 0 run title @s[tag=!survival_rework_jj.effect.thirst] actionbar [{"text":"󏿶","font":"justjabka:thirst/normal"},{"nbt":"thirst_actionbar[$(thirst)]","storage":"survival_rework_jj:main","color":"#ffffff","shadow_color":0,"font":"justjabka:thirst/normal"}]
$execute if score .thirst survival_rework_jj.config matches 1 if score .temperature survival_rework_jj.config matches 0 run title @s[tag=survival_rework_jj.effect.thirst] actionbar [{"text":"󏿶","font":"justjabka:thirst/effect"},{"nbt":"thirst_actionbar[$(thirst)]","storage":"survival_rework_jj:main","color":"#ffffff","shadow_color":0,"font":"justjabka:thirst/effect"}]

# thirst = false, temperature = true
$execute if score .thirst survival_rework_jj.config matches 0 if score .temperature survival_rework_jj.config matches 1 run title @s actionbar [{"text":"󐃀","font":"justjabka:thirst/normal"},{"nbt":"temperature_actionbar[$(temperature)]","storage":"survival_rework_jj:main","color":"#ffffff","shadow_color":0,"font":"justjabka:default"}]

tag @s add survival_rework_jj.ui_display