$execute store result score #survival_rework.thermometer main run data get entity @s $(path).components."minecraft:custom_model_data".floats[0] 100
function survival_rework:use/thermometer/update

$item modify entity @s weapon.$(hand) survival_rework:thermometer