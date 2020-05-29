#Lobby
setblock 254 66 184 air
scoreboard players set SIMSequence Valid 0
scoreboard players reset @a Valid
setblock 258 29 160 air
setblock 247 31 152 air
setblock 248 31 152 minecraft:redstone_block
setblock 244 31 151 minecraft:repeater[facing=south]
execute as @e[tag=elevator_bord] at @s run tp @s ~ 35 ~
kill @e[tag=pickle]
kill @e[name=LeefMan]
setblock 261 30 157 minecraft:air
scoreboard players set ElevatorDown Valid 3
fill 274 40 168 274 38 171 minecraft:barrier
tag @a remove playingMap
tag @a remove spectator
setblock 260 30 157 air
setblock 250 16 151 minecraft:chipped_anvil
scoreboard players set subLeefManTune Valid 230
scoreboard players set subLeefMan1Init Valid 0
setblock 275 14 145 minecraft:quartz_stairs
setblock 275 16 145 minecraft:quartz_pillar[axis=z]
setblock 275 15 145 minecraft:quartz_pillar[axis=z]
setblock 266 30 153 air
setblock 278 15 140 minecraft:lever[facing=east,face=floor,powered=false]
setblock 266 29 161 minecraft:air
tellraw @p ["",{"text":"Would you like to go back to spawn? ","color":"gray"},{"text":"Yes       ","color":"green","clickEvent":{"action":"run_command","value":"/tp @s 266 52 160"}},{"text":"No","color":"red","clickEvent":{"action":"run_command","value":"/say ok"}}]
setworldspawn 266 52 160
setblock 254 66 184 air
setblock 258 29 160 air

#Mine
fill 231 77 9 231 76 9 air
kill @e[x=232,y=76,z=9,distance=..1,type=item_frame]
kill @e[tag=start1]
setblock 231 76 9 minecraft:cobblestone_slab
setblock 237 71 9 minecraft:air
setblock 238 85 14 air
function tms:games/minecartreset
setblock 105 75 99 minecraft:air
setblock 105 75 99 minecraft:air
kill @e[tag=looks]

#jungle
function dev:junglereset

#gravyeard
kill @e[tag=skeleton]
function dev:graveyardreset

#temple
function tms:games/templereset
scoreboard players set tSequence templeSequence 0

#CREDITS
function tms:tools/creditreset
scoreboard players set subLeefManTune Valid 0
