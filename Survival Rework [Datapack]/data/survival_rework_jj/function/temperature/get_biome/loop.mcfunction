data modify storage survival_rework_jj:main ui.temp set from storage survival_rework_jj:main temp[-1][0][0]
execute if function survival_rework_jj:temperature/get_biome/check run return run function survival_rework_jj:temperature/get_biome/end

data remove storage survival_rework_jj:main temp[-1]
execute if data storage survival_rework_jj:main temp[0] run function survival_rework_jj:temperature/get_biome/loop