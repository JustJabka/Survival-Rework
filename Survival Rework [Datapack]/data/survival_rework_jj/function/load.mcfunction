gamerule naturalRegeneration false
execute in survival_rework_jj:main run forceload add 10 10 -10 -10

### MAIN
# main_score
scoreboard objectives add main_score dummy

# const
scoreboard objectives add const dummy
scoreboard players set #2 const 2
scoreboard players set #100 const 100
scoreboard players set #360 const 360
scoreboard players set #1000 const 1000
scoreboard players set #10000 const 10000
scoreboard players set #24000 const 24000

# other
scoreboard objectives add survival_rework_jj.health health
scoreboard objectives add survival_rework_jj.armor armor
scoreboard objectives add survival_rework_jj.food food
scoreboard objectives add survival_rework_jj.air air
scoreboard objectives add survival_rework_jj.jump minecraft.custom:minecraft.jump
scoreboard objectives add survival_rework_jj.config dummy {text:"Config"}

### LEGS BREAK
scoreboard objectives add survival_rework_jj.legs_break.heal_timer dummy

### BLEEDING
scoreboard objectives add survival_rework_jj.max_health dummy
scoreboard objectives add survival_rework_jj.current_health dummy
scoreboard objectives add survival_rework_jj.percent_health dummy

### THIRST
scoreboard objectives add survival_rework_jj.thirst dummy
scoreboard objectives add survival_rework_jj.thirst_timer dummy
scoreboard objectives add survival_rework_jj.water_boil dummy
execute unless score .thirst survival_rework_jj.config matches 0..1 run data modify storage survival_rework_jj:main thirst_actionbar set value ["󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿"]

### EFFECTS
scoreboard objectives add survival_rework_jj.effect.bleeding dummy
scoreboard objectives add survival_rework_jj.effect.thirst dummy
scoreboard objectives add survival_rework_jj.effect.freshness dummy
scoreboard objectives add survival_rework_jj.effect.legs_break dummy

### TEMPERATURE
scoreboard objectives add survival_rework_jj.temperature dummy
execute unless score .temperature survival_rework_jj.config matches 0..1 run data modify storage survival_rework_jj:main temperature_actionbar set value ["","","","",""]
schedule function survival_rework_jj:temperature/loop 1s

# Reset config
execute unless score .thirst survival_rework_jj.config matches 0..1 run scoreboard players set .thirst survival_rework_jj.config 1
execute unless score .temperature survival_rework_jj.config matches 0..1 run scoreboard players set .temperature survival_rework_jj.config 1
execute unless score .bleeding survival_rework_jj.config matches 0..1 run scoreboard players set .bleeding survival_rework_jj.config 1
execute unless score .bone_breakage survival_rework_jj.config matches 0..1 run scoreboard players set .bone_breakage survival_rework_jj.config 1
execute unless score .low_hp_debuffs survival_rework_jj.config matches 0..1 run scoreboard players set .low_hp_debuffs survival_rework_jj.config 1