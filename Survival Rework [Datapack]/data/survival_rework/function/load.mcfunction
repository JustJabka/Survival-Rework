gamerule natural_health_regeneration false
execute in survival_rework:main run forceload add 10 10 -10 -10

### MAIN

# const
scoreboard players set #2 const 2
scoreboard players set #10 const 10
scoreboard players set #100 const 100
scoreboard players set #360 const 360
scoreboard players set #3600 const 3600
scoreboard players set #1000 const 1000
scoreboard players set #10000 const 10000
scoreboard players set #24000 const 24000

# other
scoreboard objectives add survival_rework.config dummy {text:"Config"}

### LEGS BREAK
scoreboard objectives add survival_rework.legs_break.heal_timer dummy

### THIRST
scoreboard objectives add survival_rework.thirst dummy
scoreboard objectives add survival_rework.thirst_timer dummy
scoreboard objectives add survival_rework.water_boil dummy
data modify storage survival_rework:main actionbar.thirst set value ["󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿"]

### EFFECTS
scoreboard objectives add survival_rework.effect.bleeding dummy
scoreboard objectives add survival_rework.effect.thirst dummy
scoreboard objectives add survival_rework.effect.freshness dummy
scoreboard objectives add survival_rework.effect.legs_break dummy

### TEMPERATURE
scoreboard objectives add survival_rework.temperature dummy
data modify storage survival_rework:main actionbar.temperature set value ["","","","",""]
schedule function survival_rework:temperature/loop 1s

# Reset config
execute unless score .thirst survival_rework.config matches 0..1 run scoreboard players set .thirst survival_rework.config 1
execute unless score .temperature survival_rework.config matches 0..1 run scoreboard players set .temperature survival_rework.config 1
execute unless score .bleeding survival_rework.config matches 0..1 run scoreboard players set .bleeding survival_rework.config 1
execute unless score .bone_breakage survival_rework.config matches 0..1 run scoreboard players set .bone_breakage survival_rework.config 1
execute unless score .low_hp_debuffs survival_rework.config matches 0..1 run scoreboard players set .low_hp_debuffs survival_rework.config 1

# TODO/Ideas for next update:
# Add advancements for thirst
# Add iron flask (maybe thermos if I will add drinks and/or alco)
# Add flask enchantment for cleaning water (cheesy but thats minecraft logic, so yeah)
# Add items to creative inventory tab (thats possible in vanilla with some workarounds)
# Add more liquids for flask
# Add hypotermia overlay