execute as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 1..1 run tp @s ~-.05 ~ ~.05 ~ ~
execute as @e[tag=larry,x=72,y=66,z=-399,distance=..1.5] at @s if score larryWalk ghost_sequences matches 1..1 run tp @e[tag=larry] 71 67 -399 90 ~
execute as @e[tag=larry,x=72,y=66,z=-399,distance=..1.5] at @s if score larryWalk ghost_sequences matches 1..1 run scoreboard players set larryWalk ghost_sequences 2
execute as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 2..2 run tp @s ~-.05 ~ ~ ~ ~
execute as @e[tag=larry,x=67,y=67,z=-399,distance=..1] at @s if score larryWalk ghost_sequences matches 2..2 run scoreboard players set larryWalk ghost_sequences 3
execute as @e[tag=larry,x=67,y=67,z=-399,distance=..1] at @s if score larryWalk ghost_sequences matches 3..3 run tp @s ~ ~ ~ 180 ~
execute as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 3..3 run tp @s ~ ~ ~-.05 180 ~
execute as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 3..3 if block ~ ~ ~ minecraft:dark_oak_stairs run tp @s ~ ~.25 ~ ~ ~
execute as @e[tag=larry,x=67,y=74,z=-410,distance=..1] at @s if score larryWalk ghost_sequences matches 3..3 run scoreboard players set larryWalk ghost_sequences 4
execute as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 4..4 run tp @s ~-.05 ~ ~ 90 ~
execute as @e[tag=larry,x=49,y=74,z=-410,distance=..1] at @s if score larryWalk ghost_sequences matches 4..4 run scoreboard players set larryWalk ghost_sequences 5
execute as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 5..5 run tp @s ~ ~ ~.05 0 ~
execute as @e[tag=larry,x=49,y=74,z=-402 ,distance=..1] at @s if score larryWalk ghost_sequences matches 5..5 run scoreboard players set larryWalk ghost_sequences 6
execute as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 6..6 run tp @s ~-.05 ~ ~ 90 ~
execute as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 6..6 run scoreboard players set benedict_talking ghost_sequences 0
execute as @e[tag=larry,x=47,y=74,z=-402,distance=..1] at @s if score larryWalk ghost_sequences matches 6..6 run scoreboard players set larryWalk ghost_sequences 7
execute as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 7..7 run tp @s ~ ~ ~ 90 ~
execute if score benedict_talking ghost_sequences matches ..4100 as @e[tag=larry] at @s if score larryWalk ghost_sequences matches 7..7 run execute as @e[tag=larry] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..18]
