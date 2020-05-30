#By ElectroBleach

#Note spawn location 96 127 857
#Note race start location -342 32 961 
#starting sign
#/give @p minecraft:warped_sign{BlockEntityTag:{Text1:'{"text":"=-=-=-=-=-=-=-=-=-=-=-=","clickEvent":{"action":"run_command","value":"tp @a -346 131 966"},"color":"gray"}',Text2:'{"text":"I am sign","bold":true,"color":"#8C5728"}',Text3:'{"text":"NOT SIN(x)","italic":true,"color":"#7F3849"}',Text4:'{"text":"=-=-=-=-=-=-=-=-=-=-=-=","color":"gray"}'},display:{Name:'{"text":"Custom Sign"}'}}


#gamemode adventure @a

kill @e[type=item,nbt={Item:{id:"minecraft:saddle",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:string",Count:1b}}]

#proper dimen tp
scoreboard players set @a[nbt={Dimension:0}] inOverworld 1
scoreboard players set @a[nbt={Dimension:-1}] inOverworld 0
execute as @a at @s if score @s inOverworld matches 1..1 run execute in minecraft:the_nether run tp @s 111.5 129 857.5 90 0
#execute as @a at @s in minecraft:overworld run execute in minecraft:the_nether run tp @s 111.5 129 857.5

effect give @a minecraft:saturation 1000000 255 true
effect give @a minecraft:fire_resistance 1000000 255 true

scoreboard players add @a volcanotimer 1
scoreboard players add @a launcher2 1
scoreboard players add @a shootTimer 1
scoreboard players add timer lightningtimer 1
scoreboard players add left lightningtimer 1
scoreboard players add @a ssc 1

#Start Button OnClickListener
execute as @a at @s if score @s playerSequence matches 1..1 run tag @a remove player1
execute as @a at @s if score @s playerSequence matches 1..1 run tag @a remove player2
execute as @a at @s if score @s playerSequence matches 1..1 run tag @a[limit=1] add player1
execute as @a at @s if score @s playerSequence matches 1..1 run tag @a[limit=1,tag=!player1] add player2
execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players reset @a striderDist
execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players set @a music 0
#execute as @a at @s run execute if block 58 129 853 minecraft:dark_oak_button[powered=true] run tp @a -346 129 966

execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players set minsTick clock 0
execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players set mins clock 0
execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players set secTick clock 0
execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players set sec clock 0
execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players set @a fancyScroll -1
execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players set @a powerupScroll 0
execute as @a at @s if score @s playerSequence matches 1..1 run kill @e[tag=banana]
#execute as @a at @s if score @s playerSequence matches 1..1 run kill @e[type=strider]
#execute as @a at @s if score @s playerSequence matches 1..1 run summon strider -341.5 32 961.5 {NoAI:1b,Rotation:[180f,0f],Saddle:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty"}
#execute as @a at @s if score @s playerSequence matches 1..1 run summon strider -345.5 32 961.5 {NoAI:1b,Rotation:[180f,0f],Saddle:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty"}
execute as @a at @s if score @s playerSequence matches 1..1 run setblock -338 30 969 air
execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players reset @a striderDist
execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players set startTimer playerSequence 0
execute as @a at @s if score @s playerSequence matches 1..1 run setblock -338 30 969 redstone_block
execute as @a at @s if score @s playerSequence matches 1..1 run clear @a






#execute as @a at @s if score @s playerSequence matches 1..1 run scoreboard players set @s playerSequence 2
execute as @a at @s if score @s playerSequence matches 2..2 run tellraw @s ["",{"text":"------------------------","color":"gold"},{"text":"\n"},{"text":" \u0020 \u0020 \u0020STRIDERUNNER","bold":true,"color":"#FF7900"},{"text":"\n\n \u0020 \u0020Mount yourself onto a\n \u0020 \u0020 \u0020 Strider to begin!\n\n"},{"text":"------------------------","color":"gold"}]
execute as @a at @s if score @s playerSequence matches 2..2 run execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1000
execute as @a at @s if score @s playerSequence matches 2..2 run scoreboard players set @s playerSequence 3

execute as @a at @s if score @s playerSequence matches 4..4 run execute if score @a[tag=player1,limit=1] striderDist matches 1.. if score @a[tag=player2,limit=1] striderDist matches 0..0 run scoreboard players set @a playerSequence -4
execute as @a at @s if score @s playerSequence matches 4..4 run execute if score @a[tag=player1,limit=1] striderDist matches 0..0 if score @a[tag=player2,limit=1] striderDist matches 1..1 run scoreboard players set @a playerSequence -4
execute as @a at @s if score @s playerSequence matches 3..3 run execute if score @a[tag=player1,limit=1] striderDist matches 1.. if score @a[tag=player2,limit=1] striderDist matches 1.. run scoreboard players set @a playerSequence 5

execute as @a at @s if score @s playerSequence matches -4..-4 run execute as @a[limit=1] at @s run tellraw @s ["",{"text":"------------------------","color":"gold"},{"text":"\n\n"},{"text":" \u0020 \u0020 \u0020 \u0020 Cannot begin!","color":"#FF7900"},{"text":"\n \u0020 \u0020 \u0020Not all players are\n \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ready!\n \u0020 \u0020\n"},{"text":"------------------------","color":"gold"}]
execute as @a at @s if score @s playerSequence matches -4..-4 run scoreboard players set @s playerSequence 3


scoreboard players add counter striderDist 1
execute as @a at @s if score @s playerSequence matches 3..3 if score counter striderDist matches 1..1 run execute as @e[type=strider] at @s run tp @s ~ ~ ~.1
execute as @a at @s if score @s playerSequence matches 3..3 if score counter striderDist matches 1..1 run execute as @e[type=strider] at @s run tp @s ~ ~ ~-.1

#starting
execute if score counter striderDist matches 5.. run scoreboard players set counter striderDist 0
execute as @a[limit=1] at @s if score @a[limit=1] playerSequence matches 5..5 run scoreboard players add startTimer playerSequence 1
execute as @a[limit=1] at @s if score startTimer playerSequence matches 1..1 run fill -349 31 968 -339 31 957 lava
execute as @a[limit=1] at @s if score startTimer playerSequence matches 2..2 run fill -349 32 968 -339 32 957 air
execute as @a[limit=1] at @s if score startTimer playerSequence matches 1..1 run title @a times 0 60 0
execute as @a[limit=1] at @s if score startTimer playerSequence matches 1..1 run title @a title {"text":"Race starting in...","bold":true,"color":"gold"}
execute as @a[limit=1] at @s if score startTimer playerSequence matches 60..60 run title @a title {"text":"3","bold":true,"color":"gold"}
execute as @a[limit=1] at @s if score startTimer playerSequence matches 60..60 run execute as @a at @s run playsound minecraft:sr.countdown player @s ~ ~ ~ 1000
execute as @a[limit=1] at @s if score startTimer playerSequence matches 80..80 run title @a title {"text":"2","bold":true,"color":"gold"}
execute as @a[limit=1] at @s if score startTimer playerSequence matches 80..80 run execute as @a at @s run playsound minecraft:sr.countdown player @s ~ ~ ~ 1000
execute as @a[limit=1] at @s if score startTimer playerSequence matches 100..100 run title @a title {"text":"1","bold":true,"color":"gold"}
execute as @a[limit=1] at @s if score startTimer playerSequence matches 100..100 run execute as @a at @s run playsound minecraft:sr.countdown player @s ~ ~ ~ 1000
execute as @a[limit=1] at @s if score startTimer playerSequence matches 120..120 run title @a times 0 20 0
execute as @a[limit=1] at @s if score startTimer playerSequence matches 120..120 run title @a title {"text":"Go!","bold":true,"color":"gold"}
execute as @a[limit=1] at @s if score startTimer playerSequence matches 120..120 run execute as @a at @s run playsound minecraft:sr.countgo player @s ~ ~ ~ 1000
execute as @a[limit=1] at @s if score startTimer playerSequence matches 120..120 run scoreboard players set @a lapcounter 0
execute as @a[limit=1] at @s if score startTimer playerSequence matches 120..120 run scoreboard players set @a lapChecker 0
execute as @a[limit=1] at @s if score startTimer playerSequence matches 140..140 run execute as @e[type=strider] at @s run data merge entity @s {NoAI:0}
execute as @a[limit=1] at @s if score startTimer playerSequence matches 140..140 run scoreboard players set @a playerSequence 6


#clock
execute as @a[limit=1] if score @s playerSequence matches 6..6 run scoreboard players add minsTick clock 1
execute as @a[limit=1] if score @s playerSequence matches 6..6 run execute if score minsTick clock matches 1200.. run scoreboard players add mins clock 1
execute as @a if score @s playerSequence matches 6..6 run execute if score minsTick clock matches 1200.. run scoreboard players set minsTick clock 0

execute as @a[limit=1] if score @s playerSequence matches 6..6 run scoreboard players add secTick clock 1
execute as @a[limit=1] if score @s playerSequence matches 6..6 run execute if score secTick clock matches 20.. run scoreboard players add sec clock 1
execute as @a[limit=1] if score @s playerSequence matches 6..6 run execute if score secTick clock matches 20.. run scoreboard players set secTick clock 0
execute as @a[limit=1] if score @s playerSequence matches 6..6 run execute if score sec clock matches 60.. run scoreboard players set sec clock 0
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 0..0 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"00","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 1..1 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"01","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 2..2 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"02","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 3..3 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"03","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 4..4 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"04","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 5..5 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"05","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 6..6 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"06","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 7..7 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"07","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 8..8 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"08","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]
execute as @a at @s if score @s playerSequence matches 6..6 run execute if score sec clock matches 9..9 run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"text":"09","color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]


execute as @a at @s if score @s playerSequence matches 6..6 if score sec clock matches 10.. run title @s actionbar ["",{"text":"Time: ","color":"gray"},{"score":{"name":"mins","objective":"clock"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"sec","objective":"clock"},"color":"red"},{"text":"     "},{"text":"Laps: ","color":"gray"},{"score":{"name":"@s","objective":"lapcounter"},"color":"red"}]


#lap
scoreboard players add @a lapChecker 1
execute as @e[tag=balance] at @s run execute as @a[distance=..3] at @s if score @s lapChecker matches 400.. run scoreboard players add @a[distance=..3] lapcounter 1
execute as @e[tag=balance] at @s run execute as @a[distance=..3] at @s if score @s lapChecker matches 400.. run scoreboard players set @a[distance=..3] lapChecker 0

#Volcano
execute as @e[tag=boomdetector] at @s run execute as @p[limit=1,distance=..3] at @s run clear @s minecraft:warped_fungus_on_a_stick
execute as @e[tag=boomdetector] at @s run particle minecraft:lava ~ ~1 ~ .5 .5 .5 .01 1 force
execute as @a if score @s volcanotimer matches 40.. run execute as @e[tag=boomdetector] at @s run execute as @a[distance=..3] at @s run execute as @e[type=strider,distance=..2] at @s run data merge entity @s {Motion:[0.75,2.7,-0.75]}
execute as @a if score @s volcanotimer matches 40.. run execute as @e[tag=boomdetector] at @s run execute as @a[distance=..3] at @s run execute as @e[type=strider,distance=..2] at @s run playsound minecraft:block.end_portal.spawn player @p ~ ~ ~ 100000 1
execute as @a if score @s volcanotimer matches 40.. run execute as @e[tag=boomdetector] at @s run execute as @a[distance=..3] at @s run scoreboard players set @s volcanotimer 0


execute as @a if score @s playerSequence matches 6..6 if entity @s[nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] if score @s volcanotimer matches 40.. run replaceitem entity @s weapon.offhand minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":" "}'}}
#xecute as @a[nbt={Inventory:[{id:"minecraft:redstone_block",Slot:-106b}]}] at @s run replaceitem entity @s weapon.offhand minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":" "}'}}
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] at @s run clear @s warped_fungus_on_a_stick

#spooky sound counter (ssc)
scoreboard players add @s ssc 1
execute as @e[tag=spookysound] at @s run execute as @a[distance=..2] at @s if score @s ssc matches 200.. run playsound minecraft:entity.hoglin.converted_to_zombified player @s ~ ~ ~ 1000 0
execute as @e[tag=spookysound] at @s run execute as @a[distance=..2] at @s if score @s ssc matches 200.. run scoreboard players set @s ssc 0



#speed management
execute as @a at @s run execute as @e[type=strider,distance=..2] at @s run execute unless block ~ ~-1 ~ lava run effect clear
execute as @a at @s unless block ~ ~-1 ~ lava run effect give @e[type=strider,distance=..2] speed 1000000 20 true
execute as @a at @s if block ~ ~-1 ~ lava run effect clear @e[type=strider,distance=..2]
execute as @a at @s if block ~ ~-1 ~ lava run effect give @e[type=strider,distance=..2] speed 1000000 11 true

#execute as @a at @s run execute as @e[type=strider,distance=..2] at @s run execute if block ~ ~-1 ~ lava run effect give @s speed 1000000 1 true

#ghast fireball
#execute as @e[tag=angryTester] at @s run execute as @a[distance=..3] at @s if score @s shootTimer matches 25..25 run execute as @e[tag=shooter] at @s run playsound minecraft:entity.hoglin.converted_to_zombified player @p ~ ~ ~ 1000 0
execute as @e[tag=angryTester] at @s run execute as @a[distance=..3] at @s if score @s shootTimer matches 75.. run execute as @e[tag=shooter] at @s run summon minecraft:fireball ~ ~ ~ {ExplosionPower:0,life:100,power:[-0.05,-0.015,0.0]}

execute as @e[tag=angryTester] at @s run execute as @a[distance=..3] at @s if score @s shootTimer matches 1..1 run execute as @e[type=strider,distance=..2] at @s run tp @s -169.5 58 549.5
execute as @e[tag=angryTester] at @s run execute as @a[distance=..3] at @s if score @s shootTimer matches 1..1 run clear @s minecraft:warped_fungus_on_a_stick
execute as @e[tag=angryTester] at @s run execute as @a[distance=..3] at @s if score @s shootTimer matches 1..1 run scoreboard players set @s volcanotimer 0

execute as @e[tag=angryTester] at @s run execute as @a[distance=..3] at @s if score @s shootTimer matches 25..25 run execute as @s at @s run execute as @e[type=strider,distance=..2,limit=1] at @s run data merge entity @s {Motion:[0.0,3.5,0.0]}
execute as @e[tag=angryTester] at @s run execute as @a[distance=..45] at @s if score @s shootTimer matches 60..60 run fill -172 89 550 -169 89 548 minecraft:air
#execute as @a at @s if score @s shootTimer matches 75.. run fill -172 89 550 -169 89 548 minecraft:iron_trapdoor
execute as @a at @s if score @s shootTimer matches 75.. run scoreboard players set @s shootTimer 0


#lightning
scoreboard players set lightningOn lightningtimer 0
execute as @a at @s if entity @s[x=-325,y=32,z=917,dx=-30,dy=50,dz=-154] run scoreboard players set lightningOn lightningtimer 1


#Lightning stuff RIGHT
execute as @e[tag=rightDetect] at @s run data merge entity @s {Fire: -1s}
execute as @e[tag=leftbound] at @s run tp @s ~-.5 ~ ~
execute as @e[tag=leftbound] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["leftKiller"],Invulnerable:1b,Invisible:1b}
execute if score timer lightningtimer matches 60..60 if score lightningOn lightningtimer matches 1..1 run execute as @e[tag=right,limit=4,sort=random] at @s run summon lightning_bolt ~ ~ ~
execute if score timer lightningtimer matches 1..1 run execute as @e[tag=right] at @s run execute as @e[type=creeper,distance=..1,nbt={powered:1b}] at @s run summon armor_stand ~ ~-2 ~ {Tags:["leftbound"],NoGravity:1b,Invisible:1b}
execute if score timer lightningtimer matches 60.. run execute as @e[tag=rightDetect] at @s run data merge entity @s {powered:0b}
execute if score timer lightningtimer matches 45..45 run kill @e[tag=leftbound]
execute if score timer lightningtimer matches 45..45 run kill @e[tag=leftKiller]
execute if score timer lightningtimer matches 60.. run scoreboard players set timer lightningtimer 0

execute as @e[tag=leftKiller] at @s run particle minecraft:cloud ~ ~ ~ .1 .1 .1 .0001 1 force


#Lightning stuff RIGHT
execute as @e[tag=leftDetect] at @s run data merge entity @s {Fire: -1s}
execute as @e[tag=rightbound] at @s run tp @s ~.5 ~ ~
execute as @e[tag=rightbound] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["rightKiller"],Invulnerable:1b,Invisible:1b}
execute if score left lightningtimer matches 60..60 if score lightningOn lightningtimer matches 1..1 run execute as @e[tag=left,limit=4,sort=random] at @s run summon lightning_bolt ~ ~ ~
execute if score left lightningtimer matches 1..1 run execute as @e[tag=left] at @s run execute as @e[type=creeper,distance=..1,nbt={powered:1b}] at @s run summon armor_stand ~ ~-2 ~ {Tags:["rightbound"],NoGravity:1b,Invisible:1b}
execute if score left lightningtimer matches 60.. run execute as @e[tag=leftDetect] at @s run data merge entity @s {powered:0b}
execute if score left lightningtimer matches 45..45 run kill @e[tag=rightbound]
execute if score left lightningtimer matches 45..45 run kill @e[tag=rightKiller]

execute as @e[tag=rightKiller] at @s run execute as @e[type=strider,distance=..2] at @s run execute as @p at @s run clear @s warped_fungus_on_a_stick
execute as @e[tag=rightKiller] at @s run execute as @e[type=strider,distance=..2] at @s run execute as @p at @s run scoreboard players set @s volcanotimer 0
execute as @e[tag=rightKiller] at @s run execute as @e[type=strider,distance=..2] at @s run execute as @p at @s run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 100000 1
execute as @e[tag=rightKiller] at @s run execute as @e[type=strider,distance=..2] at @s run data merge entity @s {Motion:[0.0,2.0,0.0]}

execute as @e[tag=leftKiller] at @s run execute as @e[type=strider,distance=..2] at @s run execute as @p at @s run clear @s warped_fungus_on_a_stick
execute as @e[tag=leftKiller] at @s run execute as @e[type=strider,distance=..2] at @s run execute as @p at @s run scoreboard players set @s volcanotimer 0
execute as @e[tag=leftKiller] at @s run execute as @e[type=strider,distance=..2] at @s run execute as @p at @s run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 100000 1
execute as @e[tag=leftKiller] at @s run execute as @e[type=strider,distance=..2] at @s run data merge entity @s {Motion:[0.0,2.0,0.0]}

execute if score left lightningtimer matches 60.. run scoreboard players set left lightningtimer 0

execute as @e[tag=rightKiller] at @s run particle minecraft:cloud ~ ~ ~ .1 .1 .1 .0001 1 force


#Powerup boxes
execute as @e[tag=powerup] at @s run tp @s ~ ~ ~ ~3 ~

#Powerups
#options: speed, homing missile, fireball
#all of the @a shoudl be tagged with player1 so that everythign doesn't get screwed. just copy and paste this again. pretty simple, really.

#player1
    scoreboard players set counter pselectCounter 0
    execute as @e[team=pselect1] at @s run scoreboard players add counter pselectCounter 1

    execute as @e[tag=powerup] at @s run execute as @p[distance=..1,limit=1] at @s run scoreboard players set @s initpscroll 1
    execute as @e[tag=powerup] at @s run execute as @p[distance=..1,limit=1] at @s run tag @s add mbox
    execute as @e[tag=powerup] at @s run execute as @p[distance=..1,limit=1] at @s run execute as @e[tag=powerup,distance=..1] at @s run particle cloud ~ ~1 ~ .5 .5 .5 .01 20 force
    execute as @a[tag=player1] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @a[tag=player1] at @s run summon armor_stand ~ ~ ~ {Tags:["speed"],Team:"pselect1",NoGravity:1b, Invisible:1b}
    execute as @a[tag=player1] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @a[tag=player1] at @s run summon armor_stand ~ ~ ~ {Tags:["banana"],Team:"pselect1",NoGravity:1b, Invisible:1b}
    execute as @a[tag=player1] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @a[tag=player1] at @s run summon armor_stand ~ ~ ~ {Tags:["missile"],Team:"pselect1",NoGravity:1b, Invisible:1b}
    execute as @a[tag=player1] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @a[tag=player1] at @s run playsound minecraft:block.shulker_box.open player @s ~ ~ ~ 1000 .8
    execute as @a[tag=player1] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @e[tag=powerup,distance=..1] at @s run particle cloud ~ ~.5 ~ 1 1 1 .01 20 force
    execute as @a[tag=player1] at @s if score @s initpscroll matches 1..1 run execute as @a[tag=player1] at @s run scoreboard players set @s 
    execute as @a[tag=player1] at @s if score @s initpscroll matches 1..1 run execute as @a[tag=player1] at @s run scoreboard players set @s allowpscroll 1
    execute as @a[tag=player1] at @s if score @s initpscroll matches 1..1 run execute as @a[tag=player1] at @s run scoreboard players set @s initpscroll 0
    execute as @a[tag=player1] at @s run tp @e[team=pselect1] ~ ~3 ~
    execute as @a[tag=player1] at @s if score @s allowpscroll matches 1..1 run scoreboard players add @s powerupScroll 1

    #Fancy scrolling bar
        execute as @a[tag=player1] at @s if score @s allowpscroll matches 1..1 run scoreboard players add @a[tag=player1] fancyScroll 1

    #execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 0..0 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 .6
    #execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 0..0 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:oxeye_daisy{display:{Name:'{"text":"Banana Peel","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 2..2 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 .8
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 2..2 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:blue_orchid{display:{Name:'{"text":"Rocket","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 4..4 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 4..4 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:wooden_hoe{display:{Name:'{"text":"Speed Boost","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 6..6 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1.2
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 6..6 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:oxeye_daisy{display:{Name:'{"text":"Banana Peel","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 8..8 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1.5
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 8..8 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:blue_orchid{display:{Name:'{"text":"Rocket","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 10..10 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1.8
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 10..10 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:wooden_hoe{display:{Name:'{"text":"Speed Boost","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 12..12 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1.5
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 12..12 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:oxeye_daisy{display:{Name:'{"text":"Banana Peel","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 14..14 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 14..14 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:blue_orchid{display:{Name:'{"text":"Rocket","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 16..16 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 .75
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 16..16 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:wooden_hoe{display:{Name:'{"text":"Speed Boost","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player1,limit=1] at @s if score @s fancyScroll matches 16.. run scoreboard players set @s fancyScroll 0


    #random item selection
    execute as @a[tag=player1] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100..100 run execute as @e[team=pselect1,sort=random,limit=1] at @s run scoreboard players set @s itemVar 1
        execute as @e[team=pselect1,tag=speed] at @s run execute if score @s itemVar matches 1..1 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:oxeye_daisy{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}} 1
        execute as @e[team=pselect1,tag=speed] at @s run execute if score @s itemVar matches 1..1 run execute as @e[tag=player1] at @s run playsound minecraft:entity.squid.squirt player @s ~ ~ ~ 10000 1.2
        execute as @e[team=pselect1,tag=missile] at @s run execute if score @s itemVar matches 1..1 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:blue_orchid{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}} 1
        execute as @e[team=pselect1,tag=missile] at @s run execute if score @s itemVar matches 1..1 run execute as @e[tag=player1] at @s run playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 10000 1.2
        execute as @e[team=pselect1,tag=banana] at @s run execute if score @s itemVar matches 1..1 run replaceitem entity @a[tag=player1] hotbar.4 minecraft:wooden_hoe{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}} 1
        execute as @e[team=pselect1,tag=banana] at @s run execute if score @s itemVar matches 1..1 run execute as @e[tag=player1] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1000 1.2
    execute as @e[tag=pselect1] at @s run execute if score @s itemVar matches 1..1 run scoreboard players reset @e itemVar


    #reset
    execute as @a[tag=player1] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run scoreboard players set @s initpscroll 0
    execute as @a[tag=player1] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run scoreboard players set @e[team=pselect1] itemVar 0
    execute as @a[tag=player1] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run kill @e[team=pselect1]
    execute as @a[tag=player1] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run scoreboard players set @e[tag=player1] fancyScroll -1
    execute as @a[tag=player1] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run scoreboard players set @s powerupScroll 0
    execute as @a[tag=player1] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 0..0 run scoreboard players set @s allowpscroll 0


#player2
    scoreboard players set counter pselectCounter 0
    execute as @e[team=pselect2] at @s run scoreboard players add counter pselectCounter 1

    execute as @e[tag=powerup] at @s run execute as @p[distance=..1] at @s run scoreboard players set @s initpscroll 1
    execute as @e[tag=powerup] at @s run execute as @p[distance=..1] at @s run tag @s add mbox
    execute as @e[tag=powerup] at @s run execute as @p[distance=..1] at @s run execute as @e[tag=powerup,distance=..1] at @s run particle cloud ~ ~1 ~ .5 .5 .5 .01 20 force
    execute as @a[tag=player2] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @a[tag=player2] at @s run summon armor_stand ~ ~ ~ {Tags:["speed"],Team:"pselect2",NoGravity:1b, Invisible:1b}
    execute as @a[tag=player2] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @a[tag=player2] at @s run summon armor_stand ~ ~ ~ {Tags:["banana"],Team:"pselect2",NoGravity:1b, Invisible:1b}
    execute as @a[tag=player2] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @a[tag=player2] at @s run summon armor_stand ~ ~ ~ {Tags:["missile"],Team:"pselect2",NoGravity:1b, Invisible:1b}
    execute as @a[tag=player2] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @a[tag=player2] at @s run playsound minecraft:block.shulker_box.open player @s ~ ~ ~ 1000 .8
    execute as @a[tag=player2] at @s if score @s initpscroll matches 1..1 if score counter pselectCounter matches ..2 run execute as @e[tag=powerup,distance=..1] at @s run particle cloud ~ ~.5 ~ 1 1 1 .01 20 force
    execute as @a[tag=player2] at @s if score @s initpscroll matches 1..1 run execute as @a[tag=player2] at @s run scoreboard players set @s 
    execute as @a[tag=player2] at @s if score @s initpscroll matches 1..1 run execute as @a[tag=player2] at @s run scoreboard players set @s allowpscroll 1
    execute as @a[tag=player2] at @s if score @s initpscroll matches 1..1 run execute as @a[tag=player2] at @s run scoreboard players set @s initpscroll 0
    execute as @a[tag=player2] at @s run tp @e[team=pselect2] ~ ~3 ~
    execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 run scoreboard players add @s powerupScroll 1

    #Fancy scrolling bar
        execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 run scoreboard players add @a[tag=player2] fancyScroll2 1

   # execute as @a[tag=player2] at @s if score @s fancyScroll matches 0..0 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 .6
   # execute as @a[tag=player2] at @s if score @s fancyScroll matches 0..0 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:oxeye_daisy{display:{Name:'{"text":"Banana Peel","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 2..2 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 .8
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 2..2 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:blue_orchid{display:{Name:'{"text":"Rocket","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 4..4 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 4..4 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:wooden_hoe{display:{Name:'{"text":"Speed Boost","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 6..6 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1.2
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 6..6 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:oxeye_daisy{display:{Name:'{"text":"Banana Peel","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 8..8 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1.5
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 8..8 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:blue_orchid{display:{Name:'{"text":"Rocket","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 10..10 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1.8
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 10..10 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:wooden_hoe{display:{Name:'{"text":"Speed Boost","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 12..12 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1.5
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 12..12 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:oxeye_daisy{display:{Name:'{"text":"Banana Peel","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 14..14 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 14..14 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:blue_orchid{display:{Name:'{"text":"Rocket","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 16..16 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1000 .75
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 16..16 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:wooden_hoe{display:{Name:'{"text":"Speed Boost","color":"aqua","italic":false}'}} 1
    execute as @a[tag=player2] at @s if score @s fancyScroll2 matches 16.. run scoreboard players set @s fancyScroll2 0


    #random item selection
    execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100..100 run execute as @e[team=pselect2,sort=random,limit=1] at @s run scoreboard players set @s itemVar 1
        execute as @e[team=pselect2,tag=speed] at @s run execute if score @s itemVar matches 1..1 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:oxeye_daisy{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}} 1
        execute as @e[team=pselect2,tag=speed] at @s run execute if score @s itemVar matches 1..1 run execute as @e[tag=player2] at @s run playsound minecraft:entity.squid.squirt player @s ~ ~ ~ 10000 1.2
        execute as @e[team=pselect2,tag=missile] at @s run execute if score @s itemVar matches 1..1 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:blue_orchid{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}} 1
        execute as @e[team=pselect2,tag=missile] at @s run execute if score @s itemVar matches 1..1 run execute as @e[tag=player2] at @s run playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 10000 1.2
        execute as @e[team=pselect2,tag=banana] at @s run execute if score @s itemVar matches 1..1 run replaceitem entity @a[tag=player2] hotbar.4 minecraft:wooden_hoe{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}} 1
        execute as @e[team=pselect2,tag=banana] at @s run execute if score @s itemVar matches 1..1 run execute as @e[tag=player2] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1000 1.2
    execute as @e[tag=pselect2] at @s run execute if score @s itemVar matches 1..1 run scoreboard players reset @e itemVar


    #reset
    execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run scoreboard players set @s initpscroll 0
    execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run scoreboard players set @e[team=pselect2] itemVar 0
    execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run kill @e[team=pselect2]
    execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run scoreboard players set @e[tag=player2] fancyScroll -1
        execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run scoreboard players set @e[tag=player2] fancyScroll2 -1

    execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 100.. run scoreboard players set @s powerupScroll 0
    execute as @a[tag=player2] at @s if score @s allowpscroll matches 1..1 if score @s powerupScroll matches 0..0 run scoreboard players set @s allowpscroll 0

#powerup functionality p1
                #execute at @e[tag=FireBall] run tp @e[tag=FireBall,limit=1,sort=nearest] ^ ^ ^-0.8

#rocket
    execute as @e[tag=FireBall] at @s run scoreboard players add @s RocketTimer 1
    execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}}}}] run execute at @p[tag=player1] run summon armor_stand ^ ^ ^5 {Tags:["FireBall","Spell"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_orchid",Count:1b}],Invisible:1b}

    execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}}}}] run execute at @p[tag=player1] at @e[tag=FireBall,limit=1,sort=nearest] run tp @e[tag=FireBall,limit=1,sort=nearest] ~ ~0.02 ~ facing entity @p[tag=player1]
    execute as @e[tag=FireBall] at @s if score @s RocketTimer matches 5.. run execute at @e[tag=FireBall] run tp @e[tag=FireBall,limit=1,sort=nearest] ^ ^ ^-1.2
    execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @e[type=item,distance=..3,nbt={Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}}}}] at @s run kill @s

    execute as @e[tag=FireBall] at @s run execute unless block ~ ~ ~ air run particle lava ~ ~ ~ .8 .8 .8 .01 30
    execute as @e[tag=FireBall] at @s run execute unless block ~ ~ ~ air run execute as @a[distance=..50] at @s run playsound minecraft:rocket.choff player @s ~ ~ ~ 10000
    execute as @e[tag=FireBall] at @s run execute unless block ~ ~ ~ air run kill @s


    execute as @e[tag=FireBall] at @s if score @s RocketTimer matches 100.. run execute as @a[distance=..50] at @s run playsound minecraft:rocket.choff player @s ~ ~ ~ 10000
    execute as @e[tag=FireBall] at @s if score @s RocketTimer matches 100.. run particle lava ~ ~ ~ .8 .8 .8 .01 30
    execute as @e[tag=FireBall] at @s if score @s RocketTimer matches 100.. run kill @e[tag=FireBall]

    execute as @e[tag=FireBall] at @s run execute as @a[tag=player2,distance=..2] at @s run clear @s minecraft:warped_fungus_on_a_stick
   # execute as @e[tag=FireBall] at @s run execute as @a[tag=player2,distance=..2] at @s run execute as @e[type=strider,sort=nearest] at @s run data merge entity @s {Motion:[0.0,1.0,0.0]}
    execute as @e[tag=FireBall] at @s run execute as @a[tag=player2,distance=..2] at @s run scoreboard players set @s volcanotimer 0
    execute as @e[tag=FireBall] at @s run execute as @a[tag=player2,distance=..2] at @s run particle lava ~ ~ ~ .8 .8 .8 .01 30
    execute as @e[tag=FireBall] at @s run execute as @a[tag=player2,distance=..2] at @s run playsound minecraft:rocket.choff player @s ~ ~ ~ 10000
    execute as @a[tag=player2] at @s run execute as @e[tag=FireBall,distance=..2] at @s run kill @s


#banana
    execute as @e[tag=banana] at @s run scoreboard players add @s bananaAge 1
    execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player1] at @s if block ~ ~-1 ~ lava run summon armor_stand ~ 31.5 ~ {Tags:["banana"],NoGravity:1b,Marker:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oxeye_daisy",Count:1b}],Invisible:1b}
    execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player1] at @s run playsound minecraft:block.beehive.exit player @s ~ ~ ~ 1000 .8
    execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player1] at @s unless block ~ ~-1 ~ lava run summon armor_stand ~ ~-1.5 ~ {Tags:["banana"],Marker:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oxeye_daisy",Count:1b}],Invisible:1b}
    #execute as @e[tag=banana] at @s run playsound minecraft:block.beehive.exit player @s ~ ~ ~ 1000 .8
    execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player1] at @s run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}]

    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run execute as @a[distance=..3] at @s run clear @s minecraft:warped_fungus_on_a_stick
    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run data merge entity @s {Motion:[0.0,1.0,0.0]}
    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run execute as @a[distance=..3] at @s run playsound minecraft:entity.bee.sting player @s ~ ~ ~ 1000 .5
    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run execute as @a[distance=..3] at @s run scoreboard players set @s volcanotimer 0
    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run execute as @e[distance=..3] at @s run execute as @e[tag=banana,distance=..3] at @s run kill @s


#speed boost
execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player1] at @s run execute as @e[type=strider,distance=..2] at @s run effect give @s speed 3 100 true
execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player1] at @s run effect give @s speed 1 5 true
execute as @a[tag=player1] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player1] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2
kill @e[type=item,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}}}}]

kill @e[type=item,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Speed Boost","color":"aqua","italic":false}'}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel","color":"aqua","italic":false}'}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:'{"text":"Rocket","color":"aqua","italic":false}'}}}}]




#powerup functionality p2
                #execute at @e[tag=FireBall] run tp @e[tag=FireBall,limit=1,sort=nearest] ^ ^ ^-0.8

#rocket
    execute as @e[tag=FireBall2] at @s run scoreboard players add @s RocketTimer 1
    execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}}}}] run execute at @p[tag=player2] run summon armor_stand ^ ^ ^5 {Tags:["FireBall2","Spell"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_orchid",Count:1b}],Invisible:1b}

    execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}}}}] run execute at @p[tag=player2] at @e[tag=FireBall2,limit=1,sort=nearest] run tp @e[tag=FireBall2,limit=1,sort=nearest] ~ ~0.02 ~ facing entity @p[tag=player2]
    execute as @e[tag=FireBall2] at @s if score @s RocketTimer matches 5.. run execute at @e[tag=FireBall2] run tp @e[tag=FireBall2,limit=1,sort=nearest] ^ ^ ^-.6
    execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @e[type=item,distance=..3,nbt={Item:{id:"minecraft:blue_orchid",Count:1b,tag:{display:{Name:'{"text":"Rocket - Drop to use!","color":"aqua","italic":false}'}}}}] at @s run kill @s

    execute as @e[tag=FireBall2] at @s run execute unless block ~ ~ ~ air run particle lava ~ ~ ~ .8 .8 .8 .01 30
    execute as @e[tag=FireBall2] at @s run execute unless block ~ ~ ~ air run execute as @a[distance=..50] at @s run playsound minecraft:rocket.choff player @s ~ ~ ~ 10000
    execute as @e[tag=FireBall2] at @s run execute unless block ~ ~ ~ air run kill @s


    execute as @e[tag=FireBall2] at @s if score @s RocketTimer matches 100.. run execute as @a[distance=..50] at @s run playsound minecraft:rocket.choff player @s ~ ~ ~ 10000
    execute as @e[tag=FireBall2] at @s if score @s RocketTimer matches 100.. run particle lava ~ ~ ~ .8 .8 .8 .01 30
    execute as @e[tag=FireBall2] at @s if score @s RocketTimer matches 100.. run kill @e[tag=FireBall2]
    execute as @e[tag=Fireball] at @s if score @s RocketTimer matches 6..6 run execute as @a[distance=..100] at @s run playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 1000 0
    execute as @e[tag=FireBall2] at @s if score @s RocketTimer matches 6..6 run execute as @a[distance=..100] at @s run playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 1000 0


    execute as @e[tag=FireBall2] at @s run execute as @a[tag=player1,distance=..2] at @s run clear @s minecraft:warped_fungus_on_a_stick
    execute as @e[tag=FireBall2] at @s run execute as @a[tag=player1,distance=..2,limit=1] at @s run execute as @e[type=strider,distance=..2] at @s run data merge entity @s {Motion:[0.0,1.0,0.0]}
    execute as @e[tag=FireBall2] at @s run execute as @a[tag=player1,distance=..2] at @s run scoreboard players set @s volcanotimer 0
    execute as @e[tag=FireBall2] at @s run execute as @a[tag=player1,distance=..2] at @s run particle lava ~ ~ ~ .8 .8 .8 .01 30
    execute as @e[tag=FireBall2] at @s run execute as @a[tag=player1,distance=..2] at @s run playsound minecraft:rocket.choff player @s ~ ~ ~ 10000
    execute as @a[tag=player2] at @s run execute as @e[tag=FireBall2,distance=..2] at @s run kill @s



#banana
    execute as @e[tag=banana] at @s run scoreboard players add @s bananaAge 1
    execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player2] at @s if block ~ ~-1 ~ lava run summon armor_stand ~ 31.5 ~ {Tags:["banana"],NoGravity:1b,Marker:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oxeye_daisy",Count:1b}],Invisible:1b}
    execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player2] at @s run playsound minecraft:block.beehive.exit player @s ~ ~ ~ 1000 .8
    execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player2] at @s unless block ~ ~-1 ~ lava run summon armor_stand ~ ~-1.5 ~ {Tags:["banana"],Marker:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oxeye_daisy",Count:1b}],Invisible:1b}
    #playsound minecraft:block.beehive.exit player @s ~ ~ ~ 1000 .8
    execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player2] at @s run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b,tag:{display:{Name:'{"text":"Banana Peel - Drop to use!","color":"aqua","italic":false}'}}}}]

    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run execute as @a[distance=..3] at @s run clear @s minecraft:warped_fungus_on_a_stick
    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run data merge entity @s {Motion:[0.0,1.0,0.0]}
    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run execute as @a[distance=..3] at @s run playsound minecraft:entity.bee.sting player @s ~ ~ ~ 1000 .5
    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run execute as @a[distance=..3] at @s run scoreboard players set @s volcanotimer 0
    execute as @e[tag=banana] at @s if score @s bananaAge matches 40.. run execute as @e[distance=..2,type=strider] at @s run execute as @e[distance=..3] at @s run execute as @e[tag=banana,distance=..3] at @s run kill @s


#speed boost
execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player2] at @s run execute as @e[type=strider,distance=..2] at @s run effect give @s speed 3 100 true
execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player2] at @s run effect give @s speed 1 5 true
execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player2] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2
execute as @a[tag=player2] at @s run execute if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}}}}] run execute as @p[tag=player2] at @s run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_hoe",Count:1b,tag:{display:{Name:'{"text":"Lava Speed Boost - Drop to use!","color":"aqua","italic":false}'}}}}]

#global powerup
execute as @a at @s if score @s powerupScroll matches 0..0 run scoreboard players set @s fancyScroll -1




#Music
execute as @a at @s if score startTimer playerSequence matches 1.. run scoreboard players add @s music 1
execute as @a at @s if score startTimer playerSequence matches 1.. if score @s music matches 1..1 run playsound minecraft:music.bgmusic record @s ~ ~ ~ 1000
execute as @a at @s if score startTimer playerSequence matches 1.. if score @s music matches 3357.. run scoreboard players set @s music 0


#rewarding
execute as @a[limit=1,scores={lapcounter=3..3}] at @s run scoreboard players add endingTimer countDown 1


execute if score endingTimer countDown matches 1..1 run title @a times 0 120 0
execute if score endingTimer countDown matches 1..1 run execute as @a at @s run title @a title ["",{"selector":"@a[scores={lapcounter=3..3}]","color":"gold"},{"text":" has won!","color":"gold"}]
#execute if score endingTimer countDown matches 1..1 run execute as @a at @s run title @a title [{"text":"SplinkySplonk has won!","color":"gold"}]
execute if score endingTimer countDown matches 1..1 run clear @a
execute if score endingTimer countDown matches 1..1 run execute as @a at @s run playsound minecraft:sr.finish player @s ~ ~ ~ 1000
execute if score endingTimer countDown matches 1..1 run scoreboard players set startTimer playerSequence 0
execute if score endingTimer countDown matches 1..1 run replaceitem entity @a weapon.offhand air
execute if score endingTimer countDown matches 1..1 run replaceitem entity @a[scores={lapcounter=3..3}] hotbar.4 minecraft:gold_ingot{display:{Name:'{"text":"First Place Trophy","color":"gold","italic":false}'}} 1
execute if score endingTimer countDown matches 1..1 run replaceitem entity @a[scores={lapcounter=0..2}] hotbar.4 minecraft:iron_ingot{display:{Name:'{"text":"Second Place Trophy","color":"white","italic":false}'}} 1
execute if score endingTimer countDown matches 120..120 run execute in minecraft:the_nether run tp @a 111 128 857 90 0
execute if score endingTimer countDown matches 120..120 run scoreboard players set @a lapcounter 0
execute if score endingTimer countDown matches 120..120 run scoreboard players set @a playerSequence 0
execute if score endingTimer countDown matches 120..120 run stopsound @a
execute if score endingTimer countDown matches 120..120 run scoreboard players set endingTimer countDown 0

#scoreboard players set @s playerSequence 7
