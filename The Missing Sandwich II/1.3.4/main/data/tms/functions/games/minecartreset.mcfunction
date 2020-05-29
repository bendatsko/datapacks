##Minecart reset
fill 168 72 62 168 73 60 air
setblock 127 68 86 rail
setblock 176 66 103 minecraft:rail[shape=north_east]
setblock 182 66 110 rail[shape=south_west]
setblock 168 73 69 rail[shape=north_west]
setblock 168 75 44 rail[shape=east_west]
setblock 184 75 37 rail[shape=north_east]
setblock 184 76 9 rail[shape=east_west]
kill @e[type=arrow]
scoreboard players set MinecartActive Valid 0
scoreboard players reset Timer mcartCount
kill @e[tag=mcart]
clear @a bow
