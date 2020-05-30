#Spawn Area
#tag @a[scores={Joined=1..}] remove Joined

#scoreboard players set @a[tag=!Joined] Join 1

#execute as @a[scores={Join=1..}] at @s run tellraw @s ["",{"text":"-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"},{"text":"\n"},{"text":"           SALES","bold":true,"color":"red"},{"text":"\n"},{"text":" Inspired by \"Accounting\"","color":"dark_gray"},{"text":"\n\n"},{"text":"     [Instructions]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set sequence menu 1"}},{"text":"\n"},{"text":"-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"}]

#execute as @a[scores={Join=1..}] at @s run scoreboard players set @s Music 0
#execute as @a[scores={Join=1..}] at @s run gamemode adventure @s

#tag @a[tag=!Joined] add Joined
#scoreboard players set @a Join 0
#execute as @a[scores={Joined=1..}] at @s run scoreboard players set @s Joined 0
execute as @e[tag=toSpawn] at @s run execute as @a[distance=..4] at @s run tp @s 13.5 52 -216.5 0 0

execute if score active menu matches 0..0 run execute as @e[tag=logo] at @s run execute as @a[distance=..20] at @s run scoreboard players set active menu 1
execute if score active menu matches 1..1 run tellraw @a ["",{"text":"-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"},{"text":"\n"},{"text":"           SALES","bold":true,"color":"red"},{"text":"\n"},{"text":" Inspired by \"Accounting\"","color":"dark_gray"},{"text":"\n\n"},{"text":"     [Instructions]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set sequence menu 1"}},{"text":"\n"},{"text":"-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"}]
execute if score active menu matches 1..1 run scoreboard players set @a Music 0
execute if score active menu matches 1..1 run gamemode adventure @a
execute if score active menu matches 1..1 run scoreboard players set active menu 2

effect give @a saturation 10 255 true

#//scoreboard players set initGame global 1

#menu Sequences ,"clickEvent":{"action":"run_command","value":"/command lol"}
execute if score sequence menu matches 1..1 run tellraw @a ["",{"text":"           Setup","color":"dark_aqua"},{"text":"\n"},{"text":"  -Enable master sounds\n  -Player sounds 100%\n  ","color":"yellow"},{"text":"[NEXT]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set sequence menu 2"}},{"text":"\n"},{"text":"-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"}]
execute if score sequence menu matches 1..1 run playsound minecraft:block.bamboo.hit player @a ~ ~ ~ 1000 2
execute if score sequence menu matches 2..2 run tellraw @a ["",{"text":"        Interaction","color":"dark_aqua"},{"text":"\n"},{"text":"  You can right-click on\n  things, especially on\n  those in red, to interact\n  with them.","color":"yellow"},{"text":"\n"},{"text":"  [NEXT]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set sequence menu 3"}},{"text":"\n"},{"text":"-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"}]
execute if score sequence menu matches 2..2 run playsound minecraft:block.bamboo.hit player @a ~ ~ ~ 1000 2
execute if score sequence menu matches 3..3 run tellraw @a ["",{"text":"           Ready?","color":"dark_aqua"},{"text":"\n"},{"text":"  Ready to begin your\n  sales journey?\n\n        ","color":"yellow"},{"text":"[START]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set initGame global 1"}},{"text":"\n"},{"text":"-=-=-=-=-=-=-=-=-=-=-=-","color":"gold"}]
execute if score sequence menu matches 3..3 run playsound minecraft:block.bamboo.hit player @a ~ ~ ~ 1000 2
scoreboard players set sequence menu 0



#Init map
execute if score initGame global matches 1..1 run execute as @a at @s run tp @s -105.6 47 -227.9 -89 17.4
execute if score initGame global matches 1..1 run scoreboard players set sequence office 1
execute if score initGame global matches 1..1 run scoreboard players set initGame global 0
scoreboard players add ticks global 1


#soundloop
  #roomambience
  scoreboard players add @a Music 1
    #office
      execute as @a[x=-117,y=57,z=-260,dx=36,dy=-30,dz=40,scores={Music=5..5}] at @s run playsound minecraft:music.acambience player @s ~ ~ ~ 1000
      scoreboard players reset @a[x=-117,y=57,z=-260,dx=36,dy=-30,dz=40,scores={Music=65..}] Music
      scoreboard players reset @a[x=-117,y=57,z=-260,dx=36,dy=-30,dz=40,tag=!office] Music
      tag @a remove office
      tag @a[x=-117,y=57,z=-260,dx=36,dy=-30,dz=40] add office
      stopsound @a[tag=!office] player music.acambience
    #dungeon
      execute as @a[x=-126,y=84,z=-330,dx=23,dy=-25,dz=-25,scores={Music=5..5}] at @s run playsound minecraft:music.dungeonambience player @s ~ ~ ~ 1000
      scoreboard players reset @a[x=-126,y=84,z=-330,dx=23,dy=-25,dz=-25,scores={Music=546..}] Music
      scoreboard players reset @a[x=-126,y=84,z=-330,dx=23,dy=-25,dz=-25,tag=!dungeon] Music
      tag @a remove dungeon
      tag @a[x=-126,y=84,z=-330,dx=23,dy=-25,dz=-25] add dungeon
      stopsound @a[tag=!dungeon] player music.dungeonambience
    #court
      execute as @a[x=-69,y=84,z=-330,dx=30,dy=-20,dz=-20,scores={Music=5..5}] at @s run playsound minecraft:music.whitenoise player @s ~ ~ ~ 1000
      scoreboard players reset @a[x=-69,y=84,z=-330,dx=30,dy=-20,dz=-20,scores={Music=90..}] Music
      scoreboard players reset @a[x=-69,y=84,z=-330,dx=30,dy=-20,dz=-20,tag=!court] Music
      tag @a remove court
      tag @a[x=-69,y=84,z=-330,dx=30,dy=-20,dz=-20] add court
      stopsound @a[tag=!court] player music.whitenoise
      #void
        execute as @a[x=29,y=60,z=-269,dx=-10,dy=-20,dz=29,scores={Music=5..5}] at @s run playsound minecraft:music.whitenoise2 player @s ~ ~ ~ 1000
        scoreboard players reset @a[x=29,y=60,z=-269,dx=-10,dy=-20,dz=29,scores={Music=90..}] Music
        scoreboard players reset @a[x=29,y=60,z=-269,dx=-10,dy=-20,dz=29,tag=!void] Music
        tag @a remove void
        tag @a[x=29,y=60,z=-269,dx=-10,dy=-20,dz=29] add void
        stopsound @a[tag=!void] player music.whitenoise2



#office
  #Sequence 1
  execute if score sequence office matches 1..1 run execute as @a at @s run playsound office.intro player @s ~ ~ ~ 10000
  execute if score sequence office matches 1..1 run scoreboard players set ticks global 0
  execute if score sequence office matches 1..1 run scoreboard players set sequence office 2

  #open drawer
  execute if score sequence office matches 2..2 run execute as @e[tag=activeDrawer] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run data merge entity @e[tag=activeDrawer,limit=1] {Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:dead_brain_coral_fan",Count:1b}]}
  execute if score sequence office matches 2..2 run execute as @e[tag=activeDrawer] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run playsound minecraft:block.wooden_trapdoor.open player @s ~ ~ ~ 1000 0
  execute if score sequence office matches 2..2 run execute as @e[tag=activeDrawer] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run stopsound @a player office.intro
  execute if score sequence office matches 2..2 run execute as @e[tag=activeDrawer] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run summon minecraft:armor_stand -109.8 46.5 -228.5 {Invulnerable:1b,Rotation:[97F,0F],Invisible:1b,Tags:["drawertape"],ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b,tag:{display:{Name:"{\"text\":\"Simulation Tape\",\"italic\":false}"}}}],NoGravity:1b}
  execute if score sequence office matches 2..2 run execute as @e[tag=activeDrawer] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run playsound minecraft:office.findtape player @a ~ ~ ~ 1000
  execute if score sequence office matches 2..2 run execute as @e[tag=activeDrawer] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run scoreboard players set sequence office 3

  #draweroccupied
  scoreboard players set drawerOccupied office 0
  execute as @e[nbt={Invulnerable:1b,Rotation:[97F,0F],Invisible:1b,Tags:["drawertape"],ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b}],NoGravity:1b}] at @s run scoreboard players set drawerOccupied office 1

  #cartridge sequence
  execute if score sequence office matches 3..3 if score drawerOccupied office matches 0..0 run scoreboard players set sequence office 4
  execute if score sequence office matches 4..4 run execute as @e[tag=player1] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run stopsound @a player minecraft:office.findtape
  execute if score sequence office matches 4..4 run execute as @e[tag=player1] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run playsound minecraft:office.startsim player @a ~ ~ ~ 1000
  execute if score sequence office matches 4..4 run execute as @e[tag=player1] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run scoreboard players set ticks global 0
  execute if score sequence office matches 4..4 run execute as @e[tag=player1] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run clear @a minecraft:dead_horn_coral_fan
  execute if score sequence office matches 4..4 run execute as @e[tag=player1] at @s run execute as @a[distance=..5,scores={clicking=1..1}] at @s run scoreboard players set sequence office 5
  execute if score sequence office matches 5..5 if score ticks global matches 400..400 run effect give @a minecraft:nausea 8 255 true
  execute if score sequence office matches 5..5 if score ticks global matches 400..400 run execute as @a at @s run playsound minecraft:block.portal.trigger player @s ~ ~ ~ 1000
  execute if score sequence office matches 5..5 if score ticks global matches 470..470 run execute as @a at @s run replaceitem entity @s armor.head minecraft:carved_pumpkin
  execute if score sequence office matches 5..5 if score ticks global matches 560..560 run scoreboard players set sequence forest 1
  execute if score sequence office matches 5..5 if score ticks global matches 560..560 run scoreboard players set sequence office 0



#forest
  #machine particles
  particle minecraft:end_rod -228.39 66.00 -259.06 0 .25 0 .01 1 force

  execute if score sequence forest matches 1..1 run execute as @a at @s run tp @s -230.8 64 -259
  execute if score sequence forest matches 1..1 run time set 6000
  execute if score sequence forest matches 1..1 run replaceitem entity @a armor.head air
  execute if score sequence forest matches 1..1 run scoreboard players set sequence forest 2


  execute as @e[tag=treeguy] at @s if score sequence forest matches 2..2 run execute as @a[distance=..10] at @s run execute as @e[tag=treeguy] at @s run playsound minecraft:treeguy.intro player @a ~ ~ ~ 100
  execute as @e[tag=treeguy] at @s if score sequence forest matches 2..2 run execute as @a[distance=..10] at @s run scoreboard players set ticks global 0
  execute as @e[tag=treeguy] at @s if score sequence forest matches 2..2 run execute as @a[distance=..10] at @s run scoreboard players set sequence forest 3
  execute if score sequence forest matches 3..3 run execute as @e[tag=treeguy] at @s run tp @s ~ ~ ~-.75
  execute if score sequence forest matches 3..3 run execute as @e[tag=treeguy] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Motion:[-.5,0.4,-.5],Tags:["killme"],ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b}]}
  execute if score sequence forest matches 3..3 run execute as @e[tag=treeguy] at @s run execute as @e[tag=detectthrow] at @s run data merge entity @s {DisabledSlots:4144959}
  execute if score sequence forest matches 3..3 run execute as @e[tag=treeguy] at @s run execute as @a at @s run playsound minecraft:block.lantern.fall player @s ~ ~ ~ 1000 0
  execute if score sequence forest matches 3..3 run execute as @e[tag=treeguy] at @s run execute as @a at @s run playsound minecraft:treeguy.theme player @s ~ ~ ~ 1000
  execute if score sequence forest matches 3..3 run scoreboard players set sequence forest 4

  execute if score sequence forest matches 4..4 if score ticks global matches 680..680 run execute as @a at @s run playsound minecraft:office.gonewrong player @s ~ ~ ~ 1000
  execute if score sequence forest matches 4..4 if score ticks global matches 680..680 run execute as @a at @s run playsound minecraft:treeguy.onphone player @s ~ ~ ~ 1000
  execute if score sequence forest matches 4..4 if score ticks global matches 680..680 run execute as @e[tag=detectthrow] at @s run data merge entity @s {DisabledSlots:4128768}
  execute if score sequence forest matches 4..4 if score ticks global matches 680..680 run scoreboard players set sequence forest 5

  execute if score sequence forest matches 5..5 run execute as @e[tag=machine] at @s run execute as @a[distance=..3,scores={clicking=1..1}] at @s run clear @s minecraft:dead_horn_coral_fan
  execute if score sequence forest matches 5..5 run execute as @e[tag=machine] at @s run execute as @a[distance=..3,scores={clicking=1..1}] at @s run stopsound @a player treeguy.onphone
  execute if score sequence forest matches 5..5 run execute as @e[tag=machine] at @s run execute as @a[distance=..3,scores={clicking=1..1}] at @s run execute as @a at @s run playsound minecraft:treeguy.mything player @s ~ ~ ~ 1000
  execute if score sequence forest matches 5..5 run execute as @e[tag=machine] at @s run execute as @a[distance=..3,scores={clicking=1..1}] at @s run scoreboard players set ticks global 0
  execute if score sequence forest matches 5..5 run execute as @e[tag=machine] at @s run execute as @a[distance=..3,scores={clicking=1..1}] at @s run scoreboard players set sequence forest 6

  execute if score sequence forest matches 6..6 if score ticks global matches 60..60 run effect give @a minecraft:nausea 8 255 true
  execute if score sequence forest matches 6..6 if score ticks global matches 60..60 run execute as @a at @s run playsound minecraft:block.portal.trigger player @s ~ ~ ~ 1000
  execute if score sequence forest matches 6..6 if score ticks global matches 130..130 run execute as @a at @s run replaceitem entity @s armor.head minecraft:carved_pumpkin
  execute if score sequence forest matches 6..6 if score ticks global matches 130..130 run execute as @a at @s run stopsound @a
  execute if score sequence forest matches 6..6 if score ticks global matches 200..200 run execute as @a at @s run tp @s -115.6 63 -341.37 -151 -3.3
  execute if score sequence forest matches 6..6 if score ticks global matches 200..200 run scoreboard players set sequence king 1
  execute if score sequence forest matches 6..6 if score ticks global matches 200..200 run execute as @a at @s run playsound minecraft:kingofvcr.intro player @s ~ ~ ~ 1000
  execute if score sequence forest matches 6..6 if score ticks global matches 200..200 run execute as @a at @s run playsound minecraft:kingofvcr.pretheme player @s ~ ~ ~ 1000
  execute if score sequence forest matches 6..6 if score ticks global matches 200..200 run replaceitem entity @a armor.head air
  execute if score sequence forest matches 6..6 if score ticks global matches 200..200 run scoreboard players set sequence forest 0

  #detectthrow
  execute as @e[tag=killme] at @s run execute as @e[tag=detectthrow,distance=..2] at @s run data merge entity @s {Invulnerable:1b,Invisible:1b,Tags:["detectthrow"],ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b,tag:{display:{Name:"{\"text\":\"Simulation Tape\",\"italic\":false}"}}}],DisabledSlots:4128768,NoGravity:1b,display:{Name:"{\"text\":\"Cartridge\",\"color\":\"black\",\"italic\":\"false\"}"}}
  execute as @e[tag=killme] at @s run execute as @e[tag=detectthrow,distance=..2] at @s run kill @e[tag=killme]

#kingOfVCR
  #tp
  execute as @e[tag=king] at @s run tp @s ~ ~ ~ facing entity @p[distance=..10]
  execute as @e[tag=judge] at @s run tp @s ~ ~ ~ facing entity @p[distance=..20]
  #begin
    scoreboard players set hammerExist king 0
    execute as @e[nbt={NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["hammer"],DisabledSlots:262144,ArmorItems:[{},{},{},{id:"minecraft:birch_sapling",Count:1b,tag:{display:{Name:"{\"text\":\"Hammer\",\"italic\":false}"}}}]}] at @s run scoreboard players set hammerExist king 1

execute if score hammerExist king matches 0..0 if score sequence king matches 1..1 run execute as @a at @s run stopsound @s
    execute if score hammerExist king matches 0..0 if score sequence king matches 1..1 run scoreboard players set sequence king 2
    execute if score sequence king matches 2..2 run execute as @a at @s run playsound minecraft:kingofvcr.thanks player @s ~ ~ ~ 1000
    execute if score sequence king matches 2..2 run execute as @a at @s run playsound minecraft:kingofvcr.drones player @s ~ ~ ~ 1000
    execute if score sequence king matches 2..2 run execute as @a at @s run team join red @e[tag=king]
    execute if score sequence king matches 2..2 run execute as @a at @s run data merge entity @e[tag=king,limit=1] {Glowing:1b}
    execute if score sequence king matches 2..2 run scoreboard players set sequence king 3
    execute as @e[tag=king] at @s run execute if score sequence king matches 3..3 run execute as @a[distance=..4] at @s run execute if score @s clicking matches 1..1 run scoreboard players set sequence king 4

    execute if score sequence king matches 4..4 run stopsound @a player minecraft:kingofvcr.drones
    execute if score sequence king matches 4..4 run stopsound @a player minecraft:kingofvcr.thanks
    execute if score sequence king matches 4..4 run execute as @e[tag=king] at @s run particle minecraft:firework ~ ~ ~ 1 1 1 .01 100 force
    execute if score sequence king matches 4..4 run playsound minecraft:entity.squid.squirt player @a ~ ~ ~ 1000 0
    execute if score sequence king matches 4..4 run playsound minecraft:block.scaffolding.place player @a ~ ~ ~ 1000 0
    execute if score sequence king matches 4..4 run execute as @e[tag=king] at @s run tp @s ~ ~-15 ~
    execute if score sequence king matches 4..4 run data merge entity @e[tag=king,limit=1] {Glowing:0}
    execute if score sequence king matches 4..4 run scoreboard players set ticks global 0
    #execute if score sequence king matches 4..4 run execute as @a at @s run playsound minecraft:office.kingstuff player @s ~ ~ ~ 1000
    execute if score sequence king matches 4..4 run execute as @a at @s run data merge entity @e[tag=cartridge2,limit=1] {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cartridge2"],Rotation:[30f,0f],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b}]}
    execute if score sequence king matches 4..4 run execute as @a at @s run execute as @e[tag=cartridge2] at @s run particle minecraft:campfire_cosy_smoke ~ ~1.8 ~ .01 .01 .01 .01 5 force
    execute if score sequence king matches 4..4 run scoreboard players set sequence king 5

        execute if score sequence king matches 5..5 if score ticks global matches 100..100 run execute as @a at @s run playsound minecraft:office.kingstuff player @s ~ ~ ~ 1000
        #execute if score sequence king matches 5..5 if score ticks global matches 1500..1500 run execute as @a at @s run data merge entity @e[tag=cartridge2,limit=1] {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cartridge2"],Rotation:[30f,0f],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b}]}
        #execute if score sequence king matches 5..5 if score ticks global matches 1500..1500 run execute as @a at @s run execute as @e[tag=cartridge2] at @s run particle minecraft:campfire_cosy_smoke ~ ~1.8 ~ .01 .01 .01 .01 5 force
        execute if score sequence king matches 5..5 if score ticks global matches 1500..1500 run scoreboard players set sequence king 6


    execute if score sequence king matches 6..6 run execute as @e[tag=cartridge2] at @s run execute as @a[distance=..3,scores={clicking=1..1}] at @s run replaceitem entity @e[tag=cartridge2] armor.head air
    execute if score sequence king matches 6..6 run execute as @e[tag=cartridge2] at @s run execute as @a[distance=..3,scores={clicking=1..1}] at @s run execute as @a at @s run playsound minecraft:block.bamboo.hit player @s ~ ~ ~ 1000 2
    execute if score sequence king matches 6..6 run execute as @e[tag=cartridge2] at @s run execute as @a[distance=..3,scores={clicking=1..1}] at @s run scoreboard players set ticks global 0
    execute if score sequence king matches 6..6 run execute as @e[tag=cartridge2] at @s run execute as @a[distance=..3,scores={clicking=1..1}] at @s run scoreboard players set sequence king 7


    execute if score sequence king matches 7..7 if score ticks global matches 60..60 run effect give @a minecraft:nausea 8 255 true
    execute if score sequence king matches 7..7 if score ticks global matches 60..60 run execute as @a at @s run playsound minecraft:block.portal.trigger player @s ~ ~ ~ 1000
    execute if score sequence king matches 7..7 if score ticks global matches 130..130 run execute as @a at @s run replaceitem entity @s armor.head minecraft:carved_pumpkin
    execute if score sequence king matches 7..7 if score ticks global matches 130..130 run stopsound @a
    execute if score sequence king matches 7..7 if score ticks global matches 200..200 run execute as @a at @s run tp @s -56 73 -334 -171 2
    execute if score sequence king matches 7..7 if score ticks global matches 200..200 run clear @a
    execute if score sequence king matches 7..7 if score ticks global matches 200..200 run scoreboard players set sequence court 1
    #execute if score sequence king matches 7..7 if score ticks global matches 200..200 run execute as @a at @s run playsound minecraft:judge.part1 player @s ~ ~ ~ 1000
    execute if score sequence king matches 7..7 if score ticks global matches 200..200 run scoreboard players set sequence king 8

    execute if score sequence king matches 8..8 run scoreboard players set ticks global 0
    execute if score sequence king matches 8..8 run scoreboard players set sequence king 9




#court
  #Sequencing
  team join red @e[tag=defendant]

  execute if score sequence court matches 1..1 if score ticks global matches 1..1 run execute as @a at @s run playsound minecraft:judge.part1 player @s ~ ~ ~ 1000

  execute if score sequence court matches 1..1 if score ticks global matches 1370..1370 run scoreboard players set dWalkSequence court 1
  execute if score sequence court matches 1..1 if score ticks global matches 1371..1371 run scoreboard players set dWalkSequence court 0
  execute if score sequence court matches 1..1 if score ticks global matches 1400..1400 run scoreboard players set dWalkSequence court 2
  execute if score sequence court matches 1..1 if score ticks global matches 1401..1401 run scoreboard players set dWalkSequence court 0

  execute if score sequence court matches 1..1 if score ticks global matches 1370..1370 run summon minecraft:armor_stand -64 71.65 -336.9 {DisabledSlots:4144959,Rotation:[-90f,0f],NoGravity:1b,Invisible:1b,PersistenceRequired:1b,Tags:["defendant"],ArmorItems:[{},{},{},{id:"minecraft:dead_bubble_coral_fan",Count:1b}]}
  execute if score sequence court matches 1..1 if score ticks global matches 1370..1470 run execute as @e[tag=defendant] at @s run tp @s ~.07 ~ ~
  execute if score sequence court matches 1..1 if score ticks global matches 1471..1501 run execute as @e[tag=defendant] at @s run tp @s ~ ~ ~.07 0 0
  execute if score sequence court matches 1..1 if score ticks global matches 1501..1501 run execute as @e[tag=defendant] at @s run data merge entity @s {NoGravity:0,Motion:[0.0,0.5,0.0]}
  execute if score sequence court matches 1..1 if score ticks global matches 1506..1506 run execute as @e[tag=defendant] at @s run data merge entity @s {NoGravity:0,Motion:[0.75,0.0,0.0]}
  execute if score sequence court matches 1..1 if score ticks global matches 1515..1515 run execute as @e[tag=defendant] at @s run data merge entity @s {NoGravity:1b}
  execute if score sequence court matches 1..1 if score ticks global matches 1515..1515 run execute as @e[tag=defendant] at @s run execute as @e[tag=defendant] at @s run tp @s -54.3867 72.65 -334.57
  execute if score sequence court matches 1..1 if score ticks global matches 1501..1501 run execute as @e[tag=defendant] at @s run tp @s ~ ~ ~ facing entity @e[tag=judge,limit=1]

  execute if score sequence court matches 1..1 if score ticks global matches 1371.. run execute as @e[tag=turnSide] at @s run execute as @e[tag=defendant,distance=..1] at @s run tp @s ~ ~ ~ 0 0

  #after
    #execute if score sequence court matches 1..1 if score ticks global matches 3600.. run execute as @e[tag=defendant] at @s run  data merge entity @s {Glowing:1b}
  execute if score sequence court matches 1..1 if score ticks global matches 3600.. run title @a actionbar ["",{"text":"Throw the defendant at the judge","color":"red"}]
  execute if score sequence court matches 1..1 if score ticks global matches 3600.. run execute as @a[scores={clicking=1..1}] at @s run execute as @e[tag=defendant] at @s run summon minecraft:armor_stand ~1.5 ~1.5 ~ {PersistenceRequired:1b,Motion:[1.15,0.72,-0.8],Tags:["shootDefendant"],Invisible:1b}
  execute if score sequence court matches 1..1 if score ticks global matches 3600.. run execute as @a[scores={clicking=1..1}] at @s run kill @e[tag=defendant]
  execute as @e[tag=shootDefendant] at @s run particle minecraft:enchanted_hit ~ ~ ~ .01 .01 .01 .01 100 force
  execute as @e[tag=judge] at @s run kill @e[tag=shootDefendant,distance=..3]
  execute if score sequence court matches 1..1 if score ticks global matches 3600.. run execute as @a[scores={clicking=1..1}] at @s run scoreboard players set sequence court 2

  execute if score sequence court matches 2..2 run scoreboard players set ticks global 0
  execute if score sequence court matches 2..2 run scoreboard players set sequence court 3

  execute if score sequence court matches 3..3 if score ticks global matches 1..1 run execute as @a at @s run playsound minecraft:judge.death player @s ~ ~ ~ 1000
  execute if score sequence court matches 3..3 if score ticks global matches 6..6 run execute as @e[tag=judge] at @s run particle minecraft:damage_indicator ~ ~3 ~ 1 1 1 .01 25 force
    #commandblock
    execute if score sequence court matches 3..3 if score ticks global matches 640..640 run summon minecraft:armor_stand -64 72.65 -336.9 {Rotation:[-90f,0f],NoGravity:1b,Invisible:1b,PersistenceRequired:1b,Tags:["commandblock"],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b}]}
    execute if score sequence court matches 3..3 if score ticks global matches 640..640 run summon minecraft:armor_stand -64 73 -336.9 {Rotation:[-90f,0f],NoGravity:1b,Invisible:1b,PersistenceRequired:1b,Tags:["cart"],ArmorItems:[{},{},{},{id:"minecraft:dead_tube_coral_fan",Count:1b}]}
    execute if score sequence court matches 3..3 if score ticks global matches 640..640 run execute as @e[tag=cart] at @s run summon minecraft:armor_stand ~ ~-.35 ~.35 {NoGravity:1b,Invisible:1b,PersistenceRequired:1b,Tags:["button"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{BlockStateTag:{facing:"south"}}}]}
    execute if score sequence court matches 3..3 if score ticks global matches 640..985 run execute as @e[tag=cart] at @s run tp @s ~.02 ~ ~
    execute if score sequence court matches 3..3 if score ticks global matches 640..985 run execute as @e[tag=commandblock] at @s run tp @s ~.02 ~ ~
    execute if score sequence court matches 3..3 if score ticks global matches 640..985 run execute as @e[tag=button] at @s run tp @s ~.02 ~ ~
    execute if score sequence court matches 3..3 if score ticks global matches 640..640 run scoreboard players set dWalkSequence court 1
    execute if score sequence court matches 3..3 if score ticks global matches 641..641 run scoreboard players set dWalkSequence court 0
    execute if score sequence court matches 3..3 if score ticks global matches 641..641 run spawnpoint @a -204 47 24
    execute if score sequence court matches 3..3 if score ticks global matches 985.. run execute as @a[scores={clicking=1..}] at @s run stopsound @a
    execute if score sequence court matches 3..3 if score ticks global matches 985.. run execute as @a[scores={clicking=1..}] at @s run scoreboard players set sequence fireforest -1
    execute if score sequence court matches 3..3 if score ticks global matches 985.. run execute as @a[scores={clicking=1..}] at @s run kill @a
    execute if score sequence court matches 3..3 if score ticks global matches 985.. run execute as @a[scores={clicking=1..}] at @s run scoreboard players set sequence court 4

  #open door
  execute if score dWalkSequence court matches 1..1 run setblock -63 73 -337 dark_oak_door[open=false,half=lower]
  execute if score dWalkSequence court matches 1..1 run setblock -63 74 -337 dark_oak_door[open=false,half=upper]
  execute if score dWalkSequence court matches 1..1 run setblock -63 73 -338 dark_oak_door[open=false,half=lower,hinge=right,facing=south]
  execute if score dWalkSequence court matches 1..1 run setblock -63 74 -338 dark_oak_door[open=false,half=upper,hinge=right,facing=south]
  execute if score dWalkSequence court matches 1..1 run execute as @a at @s run playsound minecraft:block.wooden_door.open player @s ~ ~ ~ 1000

  #close door
  execute if score dWalkSequence court matches 2..2 run setblock -63 73 -337 dark_oak_door[open=true,half=lower]
  execute if score dWalkSequence court matches 2..2 run setblock -63 74 -337 dark_oak_door[open=true,half=upper]
  execute if score dWalkSequence court matches 2..2 run setblock -63 73 -338 dark_oak_door[open=true,half=lower,hinge=right,facing=south]
  execute if score dWalkSequence court matches 2..2 run setblock -63 74 -338 dark_oak_door[open=true,half=upper,hinge=right,facing=south]
  execute if score dWalkSequence court matches 2..2 run execute as @a at @s run playsound minecraft:block.wooden_door.close player @s ~ ~ ~ 1000

  #summon defendant
  execute if score dWalkSequence court matches 3..3 run summon minecraft:armor_stand -64 71.65 -336.9 {Rotation:[-90f,0f],NoGravity:1b,Invisible:1b,PersistenceRequired:1b,Tags:["defendant"],ArmorItems:[{},{},{},{id:"minecraft:dead_bubble_coral_fan",Count:1b}]}

  #defendant walk forward
  execute if score dWalkSequence court matches 4..4 run execute as @e[tag=defendant] at @s run tp @s ~.07 ~ ~

#fireforest


    execute if score sequence fireforest matches -1..-1 run execute as @a[x=-205,y=46,z=26,distance=..3] at @s run scoreboard players set ticks global 0
    execute if score sequence fireforest matches -1..-1 run execute as @a[x=-205,y=46,z=26,distance=..3] at @s run scoreboard players set sequence fireforest 1
    execute if score sequence fireforest matches -1..-1 run execute as @a[x=-205,y=46,z=26,distance=..3] at @s run worldborder warning distance 1000000000
    execute if score sequence fireforest matches -1..-1 run execute as @a[x=-205,y=46,z=26,distance=..3] at @s run scoreboard players set sequence fireforest 1
    execute if score sequence fireforest matches 1..1 run time set night
    execute if score sequence fireforest matches 1..1 if score ticks global matches 1..1 run execute as @a at @s run playsound minecraft:treeguy.onfire player @s ~ ~ ~ 1000
    execute if score sequence fireforest matches 1..1 if score ticks global matches 174..174 run replaceitem entity @a hotbar.0 minecraft:turtle_egg{display:{Name:"{\"text\":\"Dynamite\",\"italic\":false}"}} 1
    execute if score sequence fireforest matches 1..1 if score ticks global matches 174.. run execute as @a[nbt={SelectedItem:{id:"minecraft:turtle_egg"}}] at @s run summon minecraft:armor_stand ^-.3 ^ ^.6 {Tags:["tntparticle"],Small:1b,Invisible:1b}
    execute as @e[tag=tntparticle] at @s run particle minecraft:flame ~ ~1 ~ .01 .01 .01 .01 1 force
    kill @e[tag=tntparticle]

    execute if score sequence fireforest matches 1..1 if score ticks global matches 786..786 run execute as @a at @s run clear @a
    execute if score sequence fireforest matches 1..1 if score ticks global matches 786..786 run replaceitem entity @a armor.head minecraft:carved_pumpkin
    execute if score sequence fireforest matches 1..1 if score ticks global matches 786..786 run execute as @a at @s run playsound minecraft:entity.dragon_fireball.explode player @s ~ ~ ~ 1000
    execute if score sequence fireforest matches 1..1 if score ticks global matches 786..786 run execute as @a at @s run tp @s -105.6 47 -227.9 -89 17.4
    execute if score sequence fireforest matches 1..1 if score ticks global matches 786..786 run scoreboard players set sequence fireforest 2
    execute if score sequence fireforest matches 2..2 run scoreboard players set ticks global 0
    execute if score sequence fireforest matches 2..2 run scoreboard players set sequence fireforest 3
    execute if score sequence fireforest matches 3..3 if score ticks global matches 100..100 run replaceitem entity @a armor.head minecraft:air
    execute if score sequence fireforest matches 3..3 if score ticks global matches 100..100 run execute as @a at @s run playsound minecraft:office.outro player @s ~ ~ ~ 1000
    execute if score sequence fireforest matches 3..3 if score ticks global matches 100..100 run execute as @a at @s run playsound minecraft:music.outromusic player @s ~ ~ ~ 1000
    execute if score sequence fireforest matches 3..3 if score ticks global matches 2600..2600 run stopsound @a
    execute if score sequence fireforest matches 3..3 if score ticks global matches 2600..2600 run tp @a 24 51 -266 0 0
    execute if score sequence fireforest matches 3..3 if score ticks global matches 2700..2700 run execute as @a at @s run playsound king.void player @s ~ ~ ~ 1000











  #right click detection
  replaceitem entity @a weapon.offhand minecraft:carrot_on_a_stick
  scoreboard players set @a clicking 0
