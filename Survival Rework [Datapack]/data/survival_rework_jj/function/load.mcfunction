gamerule naturalRegeneration false
execute in survival_rework_jj:main run forceload add 10 10 -10 -10

### MAIN
# main_score
scoreboard objectives add main_score dummy
scoreboard players set #temp2 main_score 2
# const
scoreboard objectives add const dummy
scoreboard players set #8 const 8
scoreboard players set #100 const 100
scoreboard players set #200 const 200
# other
scoreboard objectives add survival_rework_jj.health health
scoreboard objectives add survival_rework_jj.walk custom:walk_one_cm
scoreboard objectives add survival_rework_jj.jump custom:jump
scoreboard objectives add survival_rework_jj.fall_one_cm custom:fall_one_cm
scoreboard objectives add survival_rework_jj.water_boil dummy
# config
scoreboard objectives add survival_rework_jj.config dummy {"text":"Config"}
execute unless score .thirst survival_rework_jj.config matches 0..1 run scoreboard players set .thirst survival_rework_jj.config 1
execute unless score .temperature survival_rework_jj.config matches 0..1 run scoreboard players set .temperature survival_rework_jj.config 0
execute unless score .bleeding survival_rework_jj.config matches 0..1 run scoreboard players set .bleeding survival_rework_jj.config 1
execute unless score .bone_breakage survival_rework_jj.config matches 0..1 run scoreboard players set .bone_breakage survival_rework_jj.config 1
execute unless score .low_hp_debuffs survival_rework_jj.config matches 0..1 run scoreboard players set .low_hp_debuffs survival_rework_jj.config 1

### LEGS BREAK
scoreboard objectives add survival_rework_jj.legs_break_lvl dummy
scoreboard objectives add survival_rework_jj.legs_break_heal_timer dummy

### BLEEDING
scoreboard objectives add survival_rework_jj.bleeding_timer dummy

scoreboard objectives add survival_rework_jj.max_health dummy
scoreboard objectives add survival_rework_jj.current_health dummy
scoreboard objectives add survival_rework_jj.percent_health dummy

### THIRST
scoreboard objectives add survival_rework_jj.thirst dummy
scoreboard objectives add survival_rework_jj.thirst_timer dummy
data modify storage survival_rework_jj:main thirst_actionbar set value ["󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿","󐁮󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿󏿿"]

### EFFECTS
scoreboard objectives add survival_rework_jj.effect.thirst dummy
scoreboard objectives add survival_rework_jj.effect.freshness dummy

### TEMPERATURE
scoreboard objectives add survival_rework_jj.temperature dummy
data modify storage survival_rework_jj:main temperature_actionbar set value ["","","","",""]
data modify storage survival_rework_jj:main temperature set value [[["minecraft:badlands"],[2.0]],[["minecraft:bamboo_jungle"],[0.95]],[["minecraft:basalt_deltas"],[2.0]],[["minecraft:beach"],[0.8]],[["minecraft:birch_forest"],[0.6]],[["minecraft:cherry_grove"],[0.5]],[["minecraft:cold_ocean"],[0.5]],[["minecraft:crimson_forest"],[2.0]],[["minecraft:dark_forest"],[0.7]],[["minecraft:deep_cold_ocean"],[0.5]],[["minecraft:deep_dark"],[0.8]],[["minecraft:deep_frozen_ocean"],[0.5]],[["minecraft:deep_lukewarm_ocean"],[0.5]],[["minecraft:deep_ocean"],[0.5]],[["minecraft:desert"],[2.0]],[["minecraft:dripstone_caves"],[0.8]],[["minecraft:end_barrens"],[0.5]],[["minecraft:end_highlands"],[0.5]],[["minecraft:end_midlands"],[0.5]],[["minecraft:eroded_badlands"],[2.0]],[["minecraft:flower_forest"],[0.7]],[["minecraft:forest"],[0.7]],[["minecraft:frozen_ocean"],[0.0]],[["minecraft:frozen_peaks"],[-0.7]],[["minecraft:frozen_river"],[0.0]],[["minecraft:grove"],[-0.2]],[["minecraft:ice_spikes"],[0.0]],[["minecraft:jagged_peaks"],[-0.7]],[["minecraft:jungle"],[0.95]],[["minecraft:lukewarm_ocean"],[0.5]],[["minecraft:lush_caves"],[0.5]],[["minecraft:mangrove_swamp"],[0.8]],[["minecraft:meadow"],[0.5]],[["minecraft:mushroom_fields"],[0.9]],[["minecraft:nether_wastes"],[2.0]],[["minecraft:ocean"],[0.5]],[["minecraft:old_growth_birch_forest"],[0.6]],[["minecraft:old_growth_pine_taiga"],[0.3]],[["minecraft:old_growth_spruce_taiga"],[0.25]],[["minecraft:pale_garden"],[0.7]],[["minecraft:plains"],[0.8]],[["minecraft:river"],[0.5]],[["minecraft:savanna"],[2.0]],[["minecraft:savanna_plateau"],[2.0]],[["minecraft:small_end_islands"],[0.5]],[["minecraft:snowy_beach"],[0.05]],[["minecraft:snowy_plains"],[0.0]],[["minecraft:snowy_slopes"],[-0.3]],[["minecraft:snowy_taiga"],[-0.5]],[["minecraft:soul_sand_valley"],[2.0]],[["minecraft:sparse_jungle"],[0.95]],[["minecraft:stony_peaks"],[1.0]],[["minecraft:stony_shore"],[0.2]],[["minecraft:sunflower_plains"],[0.8]],[["minecraft:swamp"],[0.8]],[["minecraft:taiga"],[0.25]],[["minecraft:the_end"],[0.5]],[["minecraft:the_void"],[0.5]],[["minecraft:warm_ocean"],[0.5]],[["minecraft:warped_forest"],[2.0]],[["minecraft:windswept_forest"],[0.2]],[["minecraft:windswept_gravelly_hills"],[0.2]],[["minecraft:windswept_hills"],[0.2]],[["minecraft:windswept_savanna"],[2.0]],[["minecraft:wooded_badlands"],[2.0]]]

### SCHEDULES
schedule function survival_rework_jj:temperature/loop 5s