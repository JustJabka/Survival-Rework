# daytime
execute store result score #daytime main run time query time

# x = 2Pi(daytime - 9000)
scoreboard players remove #daytime main 9000
scoreboard players operation #daytime main *= #3600 const

# cos(x) / 24000
execute store result score $in justlib.math run scoreboard players operation #daytime main /= #24000 const
execute store result score #daytime main run function justlib:api/math/cos/calc

# Im just lazy to add zeros to other constants so yeah
scoreboard players operation #daytime main /= #10 const

# daytime = 1 + cos(x) / 2
scoreboard players add #daytime main 100
scoreboard players operation #daytime main /= #2 const