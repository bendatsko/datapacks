#TMSII for Minecraft Realms by ElectroBleach
######################
#CHAT SCORE KEY
#1: execution for beginning
#2: Intervening score after opening door
#3: Undefined
#4: Pickle talking and walk score
#5: Intervening score for leefman intro setup
#6: Pickle leefman intro
#7: Leefman Intervening score
#8: Leefman Sequence

#Essential Loops
execute as @a[team=!main] at @s run team join main @s
team modify main color aqua
team modify main friendlyFire false

  #particle Loops
    #lab teleporter
      particle minecraft:witch 275 15.5 137.50 .01 .01 .01 100 1
      particle minecraft:witch 275 16 137.50 .01 .01 .01 100 1
      particle minecraft:witch 275 15 137.50 .01 .01 .01 100 1
      particle minecraft:witch 275 14.5 137.5 .01 .01 .01 100 1
      particle minecraft:witch 275 14 137.5 .01 .01 .01 100 1
        #tag @a add lab1 - test without this active
    #minecart Loops
      execute at @a if score MinecartActive Valid matches 0..0 run effect give @a minecraft:fire_resistance 1000000 255
      execute at @a if score MinecartActive Valid matches 1.. run effect clear @a minecraft:fire_resistance


#Lobby
  #Lobby and join message
    scoreboard players set @a[tag=!Joined] Join 1
    execute as @e[tag=spawntp,limit=1] at @s run tp @a[scores={Join=1..},distance=..30,limit=1] @s
    tag @a[tag=!Joined] add Joined
    scoreboard players set @a[scores={Join=1..}] Music 5
    tellraw @a[scores={Join=1..}] ["",{"text":"--------------------------------------","color":"gold"},{"text":"\n "},{"text":" Welcome to:","color":"gray"},{"text":" "},{"text":"The Missing Sandwich II","bold":true,"color":"green"},{"text":"\n             "},{"text":"By ElectroBleach","bold":true,"color":"dark_gray"},{"text":"\n \n  "},{"text":"","italic":true},{"text":"Set player Sound and Master Sound to\n        nearly 100% in settings!\n      Set render distance to 10+!","italic":true,"color":"red"},{"text":"\n\n   "},{"text":"Click here for a short tutorial!","bold":true,"italic":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @s tutorial 1"}},{"text":"\n"},{"text":"--------------------------------------","color":"gold"}]
    execute as @a[scores={Join=1..}] at @s run gamemode adventure @a
    execute as @a[scores={Join=1..}] at @s run scoreboard players set @s Music 0
    execute as @e[tag=spawntp] at @s run effect give @a[distance=..18] minecraft:saturation 1000000 255 true
    execute as @e[tag=spawntp] at @s run effect give @a[distance=..18] minecraft:fire_resistance 1000000 255 true
    scoreboard players set @a Join 0
    #team join team @a
    team modify team friendlyFire false
    tellraw @a[scores={tutorial=1..}] ["",{"text":"--------------------------------------","color":"gold"},{"text":"\n    "},{"text":"                ","color":"gray"},{"text":"Tutorial!","underlined":true,"color":"red"},{"text":"\n\n When text in the chat is bold and italicized,\n this indicates that you can interact with it.\n It will be used on a few occasions in this\n game, including for performing actions and\n in dialogue. "},{"text":"[Try it now!]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/playsound minecraft:voices.sneeze player @s ~ ~ ~ 1000 1.12"},"hoverEvent":{"action":"show_text","value":"click me to make a funny guy sneeze!"}},{"text":"\n\n"},{"text":"--------------------------------------","color":"gold"}]
    playsound minecraft:item.bottle.fill player @a[scores={tutorial=1..}] ~ ~ ~ 1000 2
    execute as @a[scores={tutorial=1..}] at @s run scoreboard players set @s tutorial 0

  #No Fall Damage
  execute as @a at @s if block ~ ~-1 ~ air if score canFall Valid matches 0..0 run effect give @s minecraft:jump_boost 1 255 true


  #NoSandwichInterface
    #Sandwich 1
      execute as @a at @s run execute if block 250 16 151 minecraft:beacon if score @s anvilTest matches 1.. run scoreboard players set settingBlock1 anvilTest 1
      execute if score settingBlock1 anvilTest matches 1..1 run setblock 250 16 151 air
      execute if score settingBlock1 anvilTest matches 1..1 run setblock 250 16 151 beacon
      execute if score settingBlock1 anvilTest matches 1..1 run scoreboard players set @a anvilTest 0
      execute if score settingBlock1 anvilTest matches 1..1 run scoreboard players set settingBlock1 anvilTest 0
      #Sandwich 2
        execute as @a at @s run execute if block -13272 61 1230 minecraft:beacon if score @s anvilTest2 matches 1.. run scoreboard players set settingBlock1 anvilTest2 1
        execute if score settingBlock1 anvilTest2 matches 1..1 run setblock -13272 61 1230 air
        execute if score settingBlock1 anvilTest2 matches 1..1 run setblock -13272 61 1230 beacon
        execute if score settingBlock1 anvilTest2 matches 1..1 run scoreboard players set @a anvilTest2 0
        execute if score settingBlock1 anvilTest2 matches 1..1 run scoreboard players set settingBlock1 anvilTest2 0




  #Lobby Credits
    execute as @a[x=276,y=53,z=169,limit=1,distance=1..] at @s if block 276 53 169 minecraft:oak_button[powered=true] run tellraw @a[x=276,y=53,z=169,distance=..10] ["",{"text":"ElectroBleach","color":"gold"},{"text":" on "},{"text":"YouTube","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCPdvSH54JR86cuTGJZXBwcg"},"hoverEvent":{"action":"show_text","value":"Click to visit ElectroBleach on YouTube!"}},{"text":"\n"},{"text":"GenericallyNamed","color":"gold"},{"text":" on "},{"text":"YouTube","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCL-F8EQQc6iaI8HSDGq3V2w"},"hoverEvent":{"action":"show_text","value":"Click to visit GenericallyNamed on YouTube!"}},{"text":"\n"},{"text":"Meeepy12","color":"gold"},{"text":" on "},{"text":"YouTube","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCHurffXObV5y3zgzFtdVVZg"},"hoverEvent":{"action":"show_text","value":"Click to visit Meeepy12 on YouTube!"}}]
    execute as @a[x=276,y=53,z=169,distance=..4] at @s if block 276 53 169 oak_button[powered=true] run playsound minecraft:voices.pop master @p ~ ~ ~ 1000 2
    setblock 276 53 169 minecraft:oak_button[powered=false,facing=west] replace

#Start button
  execute as @a[x=274,y=53,z=160,distance=1..] at @s if block 274 53 160 minecraft:oak_button[powered=true] run scoreboard players add players PlayersFound 1
  execute as @a[x=274,y=53,z=160,distance=1..] at @s if block 274 53 160 minecraft:oak_button[powered=true] run scoreboard players operation @a PlayersFound = players PlayersFound
  execute as @a[x=274,y=53,z=160,distance=1..,limit=1,scores={PlayersFound=4..}] at @s if block 274 53 160 minecraft:oak_button[powered=true] run tellraw @a[x=274,y=53,z=160,distance=..10] ["",{"text":" Error! ","color":"red","bold":true},{"text":"The Missing Sandwich 2 cannot begin. This map is for three (or less) players only!","color":"none","bold":false}]
  execute as @a[x=274,y=53,z=160,distance=1..,limit=1,scores={PlayersFound=4..}] at @s if block 274 53 160 minecraft:oak_button[powered=true] run playsound minecraft:block.note_block.bass player @a[x=274,y=53,z=160,distance=..10] ~ ~ ~ 1000
  execute as @a[x=274,y=53,z=160,distance=1..,limit=1,scores={PlayersFound=..3}] at @s if block 274 53 160 minecraft:oak_button[powered=true] run tellraw @a ["",{"selector":"@p[distance=..4] ","color":"green"},{"text":" has started the map!","color":"green"}]
  execute as @a[x=274,y=53,z=160,distance=1..,limit=1,scores={PlayersFound=..3}] at @s if block 274 53 160 minecraft:oak_button[powered=true] run setblock 254 66 184 minecraft:redstone_block
  execute as @a[x=274,y=53,z=160,distance=1..] at @s if block 274 53 160 minecraft:oak_button[powered=true] run setblock 274 53 160 minecraft:oak_button[powered=false,facing=west] replace
  scoreboard players reset @a PlayersFound
  scoreboard players reset players PlayersFound

#Spectator Mode
  execute if score SIMSequence Valid matches 1.. run tag @a[tag=!playingMap] add spectator
  gamemode spectator @a[tag=spectator]
  title @a[tag=spectator] actionbar ["",{"text":"You're spectating! ","color":"gold"},{"text":"Join before the game starts to play!","color":"gray"}]
  #scoreboard players reset @a[tag=spectator]



#Music
  #Spawn
    scoreboard players add @a Music 1
    execute as @a[x=232,y=46,z=114,dx=53,dy=23,dz=62,scores={Music=5..5}] at @s run playsound minecraft:custom.shoot player @s ~ ~ ~ 1000
    scoreboard players reset @a[x=232,y=46,z=114,dx=53,dy=23,dz=62,scores={Music=238..238}] Music
    scoreboard players reset @a[x=232,y=46,z=114,dx=53,dy=23,dz=62,tag=!spawn] Music
    tag @a remove spawn
    tag @a[x=232,y=46,z=114,dx=53,dy=23,dz=62] add spawn
    stopsound @a[tag=!spawn] player custom.shoot

  #Cavern
    execute as @a[x=241,y=29,z=156,dx=-41,dy=38,dz=45,scores={Music=5..5}] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 1000
    scoreboard players reset @a[x=241,y=29,z=156,dx=-41,dy=38,dz=45,scores={Music=300..300}] Music
    scoreboard players reset @a[x=241,y=29,z=156,dx=-41,dy=38,dz=45,tag=!cavern] Music
    tag @a remove cavern
    tag @a[x=241,y=29,z=156,dx=-41,dy=38,dz=45] add cavern
    stopsound @a[tag=!cavern] player minecraft:entity.wither.death

  #Lab
    execute as @e[tag=doortest] at @s run execute as @a[distance=..1] at @s run scoreboard players set @s Music 0
    #lab11
      execute as @a at @s run execute as @a[x=244,y=34,z=143,dx=39,dy=9,dz=35,scores={Music=5..5}] at @s run playsound minecraft:entity.wolf.whine player @s ~ ~ ~ 1000
      tag @a remove lab11
      execute as @a[x=244,y=34,z=143,dx=39,dy=9,dz=35] at @s run tag @s add lab11
      #Lab2
        execute as @a[x=269,y=12,z=127,dx=13,dy=31,dz=51,scores={Music=5..5}] at @s run playsound minecraft:entity.wolf.whine player @s ~ ~ ~ 1000
        tag @a remove lab2
        execute as @a[x=269,y=12,z=127,dx=13,dy=31,dz=51] at @s run tag @s add lab2
        #Lab3
          execute as @a[x=234,y=45,z=143,dx=28,dy=-11,dz=-56,scores={Music=5..5}] at @s run playsound minecraft:entity.wolf.whine player @s ~ ~ ~ 1000
          tag @a remove lab3
            execute as @a[x=234,y=45,z=143,dx=28,dy=-11,dz=-56] at @s run tag @s add lab3
              #Lab4
              execute as @a[x=270,y=12,z=127,dx=-28,dy=18,dz=35,scores={Music=5..5}] at @s run playsound minecraft:entity.wolf.whine player @s ~ ~ ~ 1000
              tag @a remove lab4
                execute as @a[x=270,y=12,z=127,dx=-28,dy=18,dz=35] at @s run tag @s add lab4
          #Outer StopSounds
            execute as @e[tag=lab11] at @s run team join Lab
            execute as @e[tag=lab2] at @s run team join Lab
            execute as @e[tag=lab3] at @s run team join Lab
            execute as @e[tag=lab4] at @s run team join Lab
            execute as @a[team=!Lab] at @s run stopsound @s player minecraft:entity.wolf.whine
          team leave @a[team=Lab]
            #Area resets
          execute as @a[tag=lab11,scores={Music=300..}] at @s run scoreboard players reset @s Music
          execute as @a[tag=lab2,scores={Music=300..}] at @s run scoreboard players reset @s Music
          execute as @a[tag=lab3,scores={Music=300..}] at @s run scoreboard players reset @s Music
          execute as @a[tag=lab4,scores={Music=300..}] at @s run scoreboard players reset @s Music

          #Space Odyssey
            #execute as @a[x=270,y=12,z=127,dx=-28,dy=18,dz=35,scores={Music=5..5}] at @s run playsound minecraft:custom.odyssey player @s ~ ~ ~ 1000
            #scoreboard players reset @a[x=270,y=12,z=127,dx=-28,dy=18,dz=35,scores={Music=316..316}] Music
            #scoreboard players reset @a[x=270,y=12,z=127,dx=-28,dy=18,dz=35,tag=!odyssey] Music
            #tag @a remove odyssey
            #tag @a[x=270,y=12,z=127,dx=-28,dy=18,dz=35] add odyssey
            #stopsound @a[tag=!odyssey] player minecraft:custom.odyssey
          #execute as @e[tag=fartguy] at @s run execute as @a[distance=..2] at @s run scoreboard players reset @s Music

  #SubLeefManMusic
    execute if score subLeefMan1Init Valid matches 1..1 run scoreboard players add subLeefManTune Valid 1
    execute if score subLeefManTune Valid matches 5..5 run playsound minecraft:custom.after player @a ~ ~ ~ 1000
    execute if score subLeefManTune Valid matches 231.. run scoreboard players set subLeefManTune Valid 0
    execute if score subLeefMan1Init Valid matches 0..0 run stopsound @a player custom.after

      #Mine1
        execute as @a[x=211,y=91,z=-2,dx=43,dy=-23,dz=29,scores={Music=5..5}] at @s run playsound minecraft:custom.mine player @s ~ ~ ~ 1000
        scoreboard players reset @a[x=211,y=91,z=-2,dx=43,dy=-23,dz=29,scores={Music=490..490}] Music
        scoreboard players reset @a[x=211,y=91,z=-2,dx=43,dy=-23,dz=29,tag=!mine1] Music
        tag @a remove mine1
        tag @a[x=211,y=91,z=-2,dx=43,dy=-23,dz=29] add mine1
      #Mine2
        execute as @a[x=209,y=90,z=-6,dx=-147,dy=-35,dz=140,scores={Music=5..5}] at @s run playsound minecraft:custom.mine player @s ~ ~ ~ 1000
        scoreboard players reset @a[x=209,y=90,z=-6,dx=-147,dy=-35,dz=140,scores={Music=490..490}] Music
        scoreboard players reset @a[x=209,y=90,z=-6,dx=-147,dy=-35,dz=140,tag=!mine2] Music
        tag @a remove mine2
        tag @a[x=209,y=90,z=-6,dx=-147,dy=-35,dz=140] add mine2

    #Snow Ambient
      execute as @a[x=4412,y=41,z=-4100,dx=79,dy=-41,dz=49,scores={Music=5..5}] at @s run playsound minecraft:custom.snow_amb player @s ~ ~ ~ 1000
      scoreboard players reset @a[x=4412,y=41,z=-4100,dx=79,dy=-41,dz=49,scores={Music=150..}] Music
      scoreboard players reset @a[x=4412,y=41,z=-4100,dx=79,dy=-41,dz=49,tag=!snowCavern] Music
      tag @a remove snowCavern
      tag @a[x=4412,y=41,z=-4100,dx=79,dy=-41,dz=49] add snowCavern
      stopsound @a[tag=!snowCavern] player custom.snow_amb


      #Junngle Ambient
        execute as @a[x=4331,y=58,z=-3980,dx=163,dy=50,dz=-122,scores={Music=5..5}] at @s run playsound minecraft:music_disc.mall player @s ~ ~ ~ 1000
        scoreboard players reset @a[x=4331,y=58,z=-3980,dx=163,dy=50,dz=-122,scores={Music=295..}] Music
        scoreboard players reset @a[x=4331,y=58,z=-3980,dx=163,dy=50,dz=-122,tag=!jungle] Music
        tag @a remove jungle
        tag @a[x=4331,y=58,z=-3980,dx=163,dy=50,dz=-122] add jungle
        stopsound @a[tag=!jungle] player minecraft:music_disc.mall

        execute as @a[x=210,y=74,z=25,dx=2,dy=20,dz=-21] at @s run stopsound @s player minecraft:custom.mine
                stopsound @a[tag=!mine1,tag=!mine2] player minecraft:custom.mine


        #Graveyard Sounds
          execute as @a[x=6047,y=57,z=-3882,dx=131,dy=43,dz=-143,scores={Music=5..5}] at @s run playsound minecraft:custom.gyamb player @s ~ ~ ~ 1000
          scoreboard players reset @a[x=6047,y=57,z=-3882,dx=131,dy=43,dz=-143,scores={Music=390..}] Music
          scoreboard players reset @a[x=6047,y=57,z=-3882,dx=131,dy=43,dz=-143,tag=!graveyard] Music
          tag @a remove graveyard
          tag @a[x=6047,y=57,z=-3882,dx=131,dy=43,dz=-143] add graveyard
          stopsound @a[tag=!graveyard] player minecraft:custom.gyamb

        #Temple music
        execute as @a[x=-13332,y=51,z=1270,dx=207,dy=98,dz=-80,scores={Music=5..5}] at @s run playsound minecraft:custom.templemusic player @s ~ ~ ~ 1000
        scoreboard players reset @a[x=-13332,y=51,z=1270,dx=207,dy=98,dz=-80,scores={Music=1390..}] Music
        scoreboard players reset @a[x=-13332,y=51,z=1270,dx=207,dy=98,dz=-80,tag=!temple] Music
        tag @a remove temple
        tag @a[x=-13332,y=51,z=1270,dx=207,dy=98,dz=-80] add temple
        stopsound @a[tag=!temple] player minecraft:custom.templemusic



#Door
    #open
      #left outer
        execute if score DoorStatus Door matches 1..1 run execute as @e[tag=LcDoor,scores={Door=1..1}] at @s run data merge entity @s {Time:-2147483648}
        execute if score DoorStatus Door matches 1..1 run execute as @e[tag=LcDoor] at @s run tp @s ~ ~ ~-.06
      #  execute if score DoorStatus Door matches 1..1 run fill 260 30 159 260 29 159 air
      #  execute if score DoorStatus Door matches 1..1 run fill 260 30 163 260 29 163 air
        execute as @e[tag=LcDoor] at @s if block ~ ~ ~-1 bedrock run scoreboard players set DoorStatus Door 2
        #execute if score DoorStatus Door matches 1..1 run fill 242 40 169 242 38 170 minecraft:air

        #left inner
          execute if score DoorStatus Door matches 1..1 run execute as @e[tag=cLcDoor,scores={Door=1..1}] at @s run data merge entity @s {Time:-2147483648}
          execute if score DoorStatus Door matches 1..1 run execute as @e[tag=cLcDoor] at @s run tp @s ~ ~ ~-.06
          execute if score DoorStatus Door matches 1..1 run fill 260 30 159 260 29 159 air
        #  execute if score DoorStatus Door matches 1..1 run fill 260 30 163 260 29 163 air
          execute as @e[tag=cLcDoor] at @s if block ~ ~ ~-1 bedrock run scoreboard players set DoorStatus Door 2

          #right outer
            execute if score DoorStatus Door matches 1..1 run execute as @e[tag=RcDoor,scores={Door=1..1}] at @s run data merge entity @s {Time:-2147483648}
            execute if score DoorStatus Door matches 1..1 run execute as @e[tag=RcDoor] at @s run tp @s ~ ~ ~.06
            execute if score DoorStatus Door matches 1..1 run fill 260 30 159 260 29 159 air
          #  execute if score DoorStatus Door matches 1..1 run fill 260 30 163 260 29 163 air
            execute as @e[tag=RcDoor] at @s if block ~ ~ ~1 bedrock run scoreboard players set DoorStatus Door 2

            #right inner
              execute if score DoorStatus Door matches 1..1 run execute as @e[tag=cRcDoor,scores={Door=1..1}] at @s run data merge entity @s {Time:-2147483648}
              execute if score DoorStatus Door matches 1..1 run execute as @e[tag=cRcDoor] at @s run tp @s ~ ~ ~.06
              execute if score DoorStatus Door matches 1..1 run fill 260 30 159 260 29 159 air
          #    execute if score DoorStatus Door matches 1..1 run fill 260 30 163 260 29 163 air
              execute as @e[tag=cRcDoor] at @s if block ~ ~ ~1 bedrock run scoreboard players set DoorStatus Door 2
              #execute if score DoorStatus Door matches 2..2 run setblock 245 31 151 minecraft:air
      #Closing
          #outer left
            execute if score DoorStatusClose Door matches 1..1 run execute as @e[tag=LcDoor] at @s run data merge entity @s {Time:-2147483648}
            execute if score DoorStatusClose Door matches 1..1 run execute as @e[tag=LcDoor] at @s run tp @s ~ ~ ~.06
            execute positioned 242.00 38.00 170.35 run execute as @e[tag=LcDoor,distance=..1] run scoreboard players set DoorStatusClose Door 0

            #outer right
              execute if score DoorStatusClose Door matches 1..1 run execute as @e[tag=RcDoor] at @s run data merge entity @s {Time:-2147483648}
              execute if score DoorStatusClose Door matches 1..1 run execute as @e[tag=RcDoor] at @s run tp @s ~ ~ ~-.06
              execute positioned 242.00 38.00 169.6 run execute as @e[tag=RcDoor,distance=..1] run scoreboard players set DoorStatusClose Door 0

            #door barriers
            #  execute if score DoorStatusClose Door matches 0 run fill 242 40 169 242 38 170 minecraft:barrier
            #  execute if score DoorStatus Door matches 2 run fill 242 40 169 242 38 170 minecraft:air

            #InnerLeft
              execute if score DoorStatusClose Door matches 1..1 run execute as @e[tag=cLcDoor] at @s run data merge entity @s {Time:-2147483648}
              execute if score DoorStatusClose Door matches 1..1 run execute as @e[tag=cLcDoor] at @s run tp @s ~ ~ ~.06

            #InnerRight
              execute if score DoorStatusClose Door matches 1..1 run execute as @e[tag=cRcDoor] at @s run data merge entity @s {Time:-2147483648}
              execute if score DoorStatusClose Door matches 1..1 run execute as @e[tag=cRcDoor] at @s run tp @s ~ ~ ~-.06

              execute if score DoorStatusClose Door matches 3..3 run execute as @e[tag=RcDoor] at @s run tp @s ~ ~ 170.5
              execute if score DoorStatusClose Door matches 3..3 run execute as @e[tag=LcDoor] at @s run tp @s ~ ~ 169.5
              execute if score DoorStatusClose Door matches 3..3 run execute as @e[tag=cRcDoor] at @s run tp @s ~ ~ 170.5
              execute if score DoorStatusClose Door matches 3..3 run execute as @e[tag=cLcDoor] at @s run tp @s ~ ~ 169.5
#Cavern Sequence
    #Intro
    execute if score SIMSequence Valid matches 1.. run scoreboard players add @a[tag=playingMap,limit=1] Valid 1
      execute as @a[scores={Valid=200..200},limit=1] if score SIMSequence Valid matches 1..1 at @s run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Ah, it's so nice to be back at the lab!","color":"white"}]
        execute as @a[scores={Valid=200..200},limit=1] if score SIMSequence Valid matches 1..1 at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 100 1
      execute as @a[scores={Valid=300..300},limit=1] if score SIMSequence Valid matches 1..1 at @s run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": I haven't see Doctor Pickle in ages!","color":"white"}]
          execute as @a[scores={Valid=300..300},limit=1] if score SIMSequence Valid matches 1..1 at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 100 1
        execute as @a[scores={Valid=400..400},limit=1] if score SIMSequence Valid matches 1..1 at @s run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Gah, I remember Dr. Pickle's lab entryway being located in an abandoned mineshaft.","color":"white"},{"text":" I'll try getting in through there. ","color":"green"}]
          execute as @a[scores={Valid=400..400},limit=1] if score SIMSequence Valid matches 1..1 at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 100 1
            #Activate Door
              execute as @a[scores={Valid=..400},limit=1] if score SIMSequence Valid matches 1..1 at @s run setblock 247 31 152 air
              execute as @a[scores={Valid=400..401},limit=1] if score SIMSequence Valid matches 1..1 at @s run setblock 247 31 152 redstone_block
    #Dr. Pickle 1
          execute as @a[scores={Valid=5..5},limit=1] if score SIMSequence Valid matches 4..4 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"Welcome back ","color":"gold"},{"selector":"@p","color":"gold"},{"text":"!","color":"gold"}]
          execute as @a[scores={Valid=5..5},limit=1] if score SIMSequence Valid matches 4..4 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1
          execute as @a[scores={Valid=5..5},limit=1] if score SIMSequence Valid matches 4..4 at @s run data merge entity @e[tag=pickle,limit=1] {Glowing:0}

          execute as @a[scores={Valid=194..194},limit=1] if score SIMSequence Valid matches 4..4 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"It's been quite some time!","color":"gold"}]
          execute as @a[scores={Valid=194..194},limit=1] if score SIMSequence Valid matches 4..4 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1

          execute as @a[scores={Valid=228..228},limit=1] if score SIMSequence Valid matches 4..4 at @s run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Yes, quite.","color":"white"}]
          execute as @a[scores={Valid=228..228},limit=1] if score SIMSequence Valid matches 4..4 at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 100 1

          execute as @a[scores={Valid=338..338},limit=1] if score SIMSequence Valid matches 4..4 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"I've been working on a project recently. A project like none other. It's truly fascinating. ","color":"gold"}]
          execute as @a[scores={Valid=338..338},limit=1] if score SIMSequence Valid matches 4..4 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1

          execute as @a[scores={Valid=527..527},limit=1] if score SIMSequence Valid matches 4..4 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"It's called “The Mighty Sandwich.” Now I know you may be thinking, how can a sandwich be of such significance?","color":"gold"}]
          execute as @a[scores={Valid=527..527},limit=1] if score SIMSequence Valid matches 4..4 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1

          execute as @a[scores={Valid=727..727},limit=1] if score SIMSequence Valid matches 4..4 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":" Well... This sandwich is different. It possesses incredibly delicious qualities. In fact, it's among the most delicious food items ever created!","color":"gold"}]
          execute as @a[scores={Valid=727..727},limit=1] if score SIMSequence Valid matches 4..4 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1

          execute as @a[scores={Valid=927..927},limit=1] if score SIMSequence Valid matches 4..4 at @s run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": How intriguing! Would you be willing to take me to this sandwich you speak of?","color":"white"}]
          execute as @a[scores={Valid=927..927},limit=1] if score SIMSequence Valid matches 4..4 at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 100 1

          execute as @a[scores={Valid=1077..1077},limit=1] if score SIMSequence Valid matches 4..4 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"Ah yes, of course! Follow me!","color":"gold"}]
          execute as @a[scores={Valid=1077..1077},limit=1] if score SIMSequence Valid matches 4..4 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1
          execute as @a[scores={Valid=1080..1080},limit=1] if score SIMSequence Valid matches 4..4 at @s run data merge entity @e[tag=pickle,limit=1] {NoAI:0}
          execute as @a[scores={Valid=1080..1080},limit=1] if score SIMSequence Valid matches 4..4 at @s run fill 274 40 168 274 38 171 minecraft:air


          #Lab Mics.
            #Dr. Spinner
              execute as @e[tag=funnyspin] at @s run tp @s ~ ~ ~ ~150 ~
              setblock 244 28 166 air
              execute as @e[tag=funnyspin] at @s run execute if entity @p[distance=..3] run setblock 244 28 166 minecraft:redstone_block
                #keyboard sounds
                  scoreboard players add keyboardSound Valid 1
                    execute as @e[tag=keyboard] at @s if score keyboardSound Valid matches 300..300 run playsound minecraft:custom.keyboard player @a[distance=..10] ~ ~ ~
                    execute if score keyboardSound Valid matches 305.. run scoreboard players reset keyboardSound Valid

  #Pickle Walk Cycle
    #+x
      execute as @e[tag=pickle] at @s if block ~ ~-2 ~ minecraft:light_blue_terracotta run data merge entity @s {Motion:[0.17,0.0,0.0]}
      execute as @e[tag=pickle] at @s if block ~ ~-2 ~ minecraft:light_blue_terracotta run tp @s ~ ~ ~ -90 0
        #alt +x1
          execute as @e[tag=pickle] at @s if block ~ ~-6 ~ minecraft:barrier run data merge entity @s {Motion:[0.5,0.0,0.0]}
              #+x alt 2 (-4y red nether brick)
          #execute as @e[tag=pickle] at @s if block ~ ~-4 ~ minecraft:red_nether_bricks run data merge entity @s {Motion:[0.17,0.0,0.0]}
          #execute as @e[tag=pickle] at @s if block ~ ~-4 ~ minecraft:red_nether_bricks run tp @s ~ ~ ~ -90 0
    #-x
      execute as @e[tag=pickle] at @s if block ~ ~-2 ~ minecraft:brown_terracotta run data merge entity @s {Motion:[-0.17,0.0,0.0]}
      execute as @e[tag=pickle] at @s if block ~ ~-2 ~ minecraft:brown_terracotta run tp @s ~ ~ ~ 90 0
        #-xalt
          execute as @e[tag=pickle] at @s if block ~ ~-4 ~ minecraft:red_nether_bricks run data merge entity @s {Motion:[-0.17,0.0,0.0]}
          execute as @e[tag=pickle] at @s if block ~ ~-4 ~ minecraft:red_nether_bricks run tp @s ~ 14 ~ 90 0
    #+z
      execute as @e[tag=pickle] at @s if block ~ ~-2 ~ minecraft:white_terracotta run data merge entity @s {Motion:[0.0,0.0,0.17]}
      execute as @e[tag=pickle] at @s if block ~ ~-2 ~ minecraft:white_terracotta run tp @s ~ ~ ~ 0 0
        #alt +z
          execute as @e[tag=pickle] at @s if block ~ ~-6 ~ minecraft:end_stone_bricks run data merge entity @s {Motion:[0.0,0.0,0.17]}
          execute as @e[tag=pickle] at @s if block ~ ~-6 ~ end_stone_bricks run tp @s ~ ~ ~ 0 0

    #-z
      execute as @e[tag=pickle] at @s if block ~ ~-2 ~ minecraft:red_terracotta run data merge entity @s {Motion:[0.0,0.0,-0.17]}
      execute as @e[tag=pickle] at @s if block ~ ~-2 ~ minecraft:red_terracotta run tp @s ~ ~ ~ -180 0

      #SubLeefMan Walking
        execute if score SIMSequence Valid matches ..9 run fill 255 10 151 274 10 151 red_nether_bricks
        execute if score SIMSequence Valid matches ..9 run fill 274 12 151 254 12 151 air

                  execute if score SIMSequence Valid matches 9..9 run fill 274 12 151 254 12 151 minecraft:light_blue_terracotta
                            execute if score SIMSequence Valid matches 9..9 run fill 255 10 151 274 10 151 air
        #set the nether bricks that make pickle walk toward the sandwich to air


        #turn on pickle's walk back


        #make pickle have AI during Walking
          execute if score SIMSequence Valid matches 9..9 run data merge entity @e[tag=pickle,limit=1] {NoAI:0}

  #Lift
    #Activation
      execute as @p[x=280,y=37,z=169,distance=..4] at @s run setblock 257 30 157 redstone_block
    #Teleport Down
      execute if score ElevatorDown Valid matches 1..1 run execute as @e[tag=elevator_bord] at @s run tp @s ~ ~-.09 ~
      execute positioned 279 11 170 if entity @e[tag=elevator_bord,distance=..1] run scoreboard players set ElevatorDown Valid 0
      execute if score ElevatorDown Valid matches 1..1 run setblock 260 30 157 redstone_block

    execute positioned 279 11 170 if entity @e[tag=elevator_bord,distance=..1] run setblock 261 30 157 minecraft:redstone_block


  #Leefman Sequence Interlude and Init
      execute as @e[tag=PickleTest] at @s if score SIMSequence Valid matches 4..4 if entity @a[distance=..4] run scoreboard players set SIMSequence Valid 5

      execute if score SIMSequence Valid matches 5..5 run scoreboard players reset @a Valid
      execute if score SIMSequence Valid matches 5..5 run scoreboard players set SIMSequence Valid 6

      execute as @a[scores={Valid=10..10},limit=1] if score SIMSequence Valid matches 6..6 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"This is the beloved Mighty Sandwich. ","color":"gold"}]
      execute as @a[scores={Valid=10..10},limit=1] if score SIMSequence Valid matches 6..6 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1

      execute as @a[scores={Valid=150..150},limit=1] if score SIMSequence Valid matches 6..6 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"Go ahead. Gaze upon its magnificence and feel your soul fill with perplexity.","color":"gold"}]
      execute as @a[scores={Valid=150..150},limit=1] if score SIMSequence Valid matches 6..6 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1

      execute as @a[scores={Valid=380..380},limit=1] if score SIMSequence Valid matches 6..6 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"This sandwich must be protected at all costs.","color":"gold"}]
      execute as @a[scores={Valid=380..380},limit=1] if score SIMSequence Valid matches 6..6 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1

      execute as @a[scores={Valid=520..520},limit=1] if score SIMSequence Valid matches 6..6 at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"For if it falls into the wrong hands, darkness and terror will reign upon this planet.","color":"gold"}]
      execute as @a[scores={Valid=520..520},limit=1] if score SIMSequence Valid matches 6..6 at @s run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100 1

      execute as @a[scores={Valid=720..720},limit=1] if score SIMSequence Valid matches 6..6 at @s run scoreboard players set SIMSequence Valid 7


        execute if score SIMSequence Valid matches 7..7 as @a at @s run difficulty normal
        execute if score SIMSequence Valid matches 7..7 as @a at @s run particle item_slime 252 14 151 2 2 2 5 50 force
        execute if score SIMSequence Valid matches 7..7 as @a at @s run particle end_rod 252 14 151 1 1 1 .1 25 force
        execute if score SIMSequence Valid matches 7..7 as @a[limit=1] at @s run summon enderman 252 14 151 {CustomName:"{\"text\":\"Leefman\"}",Rotation:[-90f,0f],NoAI:1,Attributes:[{Name:generic.followRange,Base:0}],Silent:1,Invulnerable:1b,Tags:["leefman_intro"]}
        execute if score SIMSequence Valid matches 7..7 as @a at @s run playsound minecraft:music_disc.wait player @s ~ ~ ~ 1000
        execute if score SIMSequence Valid matches 7..7 as @a at @s run scoreboard players reset @a Valid
        execute if score SIMSequence Valid matches 7..7 as @a at @s run scoreboard players set SIMSequence Valid 10


      #LEEFMAN
        execute as @a[scores={Valid=2..2},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" Blah blah blah blah! My name is Leefman; the king, the overlord, and other synonyms for ruler, of all leaves!","color":"none"}]
        execute as @a[scores={Valid=2..2},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


        execute as @a[scores={Valid=147..147},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: What are you doing here?","color":"gold"}
        execute as @a[scores={Valid=147..147},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.ambient player @s ~ ~ ~ 1000 1
        execute as @a[scores={Valid=147..147},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


        execute as @a[scores={Valid=200..200},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" Pshh, I don't know.","color":"white"}]
        execute as @a[scores={Valid=200..200},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


        execute as @a[scores={Valid=230..230},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" Oh wait how convenient, I remembered.","color":"white"}]



        execute as @a[scores={Valid=280..280},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" I am here because I am hosting a birthday party filled with leafy goodness and leaves. All of my leaves will be invited to my fun-filled party.","color":"white"}]



        execute as @a[scores={Valid=430..430},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" However, I see you have one of my lettuce pieces held hostage in that sandwich there. ","color":"white"}]



        execute as @a[scores={Valid=531..531},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" I feel as if that poor little piece of lettuce feels left out since he cannot attend this wonderful celebration that is celebrating literally nothing at all.","color":"white"}]



        execute as @a[scores={Valid=690..690},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" After all, I am the ruler of all leaves and must do what is good for all of my leaf minions.","color":"white"}]



        execute as @a[scores={Valid=815..815},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" So, like, if you don't mind, I'm just going to kind of like take your sandwich. I mean, like...","color":"white"}]



        execute as @a[scores={Valid=930..930},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" It's not like a big deal or anything so... I'm just gonna do it. ","color":"white"}]



        execute as @a[scores={Valid=1028..1028},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: No! There's no way you'll be taking this sandwich from us!","color":"gold"}
          execute as @a[scores={Valid=1028..1028},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.ambient player @s ~ ~ ~ 1000 1
          execute as @a[scores={Valid=1028..1028},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


        execute as @a[scores={Valid=1070..1070},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" No, calm down bro. Let's have a bro talk. ","color":"white"}]
        execute as @a[scores={Valid=1070..1070},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


        execute as @a[scores={Valid=1140..1140},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: No! This is the eighth time you've come requesting my sandwich!","color":"gold"}
          execute as @a[scores={Valid=1140..1140},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.ambient player @s ~ ~ ~ 1000 1
          execute as @a[scores={Valid=1140..1140},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


          execute as @a[scores={Valid=1210..1210},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" ...Do you want a glass of orange juice or something? ","color":"white"}]
          execute as @a[scores={Valid=1210..1210},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


          execute as @a[scores={Valid=1260..1260},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: No! What is this trickery!","color":"gold"}
            execute as @a[scores={Valid=1260..1260},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.ambient player @s ~ ~ ~ 1000 1
            execute as @a[scores={Valid=1260..1260},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


          execute as @a[scores={Valid=1293..1293},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" Seriously, I've got a lot of orange juice right now. It's like, the best stuff out there for realsies! ","color":"white"}]
          execute as @a[scores={Valid=1293..1293},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


          execute as @a[scores={Valid=1420..1420},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: What is the meaning of this? Prepare for death!","color":"gold"}
            execute as @a[scores={Valid=1420..1420},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.ambient player @s ~ ~ ~ 1000 1
            execute as @a[scores={Valid=1420..1420},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


          execute as @a[scores={Valid=1493..1493},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" You need to chill out bro, you're not making any sense!","color":"white"}]
          execute as @a[scores={Valid=1493..1493},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


          execute as @a[scores={Valid=1547..1547},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: No, you're not making any sense!","color":"gold"}
            execute as @a[scores={Valid=1547..1547},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.ambient player @s ~ ~ ~ 1000 1
            execute as @a[scores={Valid=1547..1547},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


          execute as @a[scores={Valid=1569..1569},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" Uh-uh!","color":"white"}]
          execute as @a[scores={Valid=1569..1569},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


          execute as @a[scores={Valid=1590..1590},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: Yuh-huh!","color":"gold"}
          execute as @a[scores={Valid=1590..1590},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.ambient player @s ~ ~ ~ 1000 1
            execute as @a[scores={Valid=1590..1590},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


          execute as @a[scores={Valid=1608..1608},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" Nuh-uh!","color":"white"}]
            execute as @a[scores={Valid=1608..1608},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


          execute as @a[scores={Valid=1620..1620},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: That's enough!","color":"gold"}
          execute as @a[scores={Valid=1620..1620},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1000 1
            execute as @a[scores={Valid=1620..1620},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


          execute as @a[scores={Valid=1677..1677},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" Bro! Just give me five seconds, bro.","color":"white"}]
            execute as @a[scores={Valid=1677..1677},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


          execute as @a[scores={Valid=1720..1720},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: Why!","color":"gold"}
          execute as @a[scores={Valid=1720..1720},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1000 1
            execute as @a[scores={Valid=1720..1720},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


          execute as @a[scores={Valid=1749..1749},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" Bro, five seconds, bro.","color":"white"}]
            execute as @a[scores={Valid=1749..1749},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


          execute as @a[scores={Valid=1760..1760},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a {"text":"Dr. Pickle: Fine.","color":"gold"}
          execute as @a[scores={Valid=1760..1760},limit=1] if score SIMSequence Valid matches 10..10 at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1000 1
            execute as @a[scores={Valid=1749..1749},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 3


          #INSERT STEALING Sandwich
          execute as @a[scores={Valid=1775..1775},limit=1] if score SIMSequence Valid matches 10..10 at @s run execute as @e[name=Leefman] at @s run tp @s ~ ~ ~ 90 ~
          execute as @a[scores={Valid=1790..1790},limit=1] if score SIMSequence Valid matches 10..10 at @s run setblock 250 16 151 air
          execute as @a[scores={Valid=1790..1790},limit=1] if score SIMSequence Valid matches 10..10 at @s run data merge entity @e[name=Leefman,limit=1] {carriedBlockState:{Name:"minecraft:beacon"}}
          execute as @a[scores={Valid=1820..1820},limit=1] if score SIMSequence Valid matches 10..10 at @s run execute as @e[name=Leefman] at @s run tp @s ~ ~ ~ -90 ~


          execute as @a[scores={Valid=1842..1842},limit=1] if score SIMSequence Valid matches 10..10 at @s run tellraw @a ["",{"text":"Leefman:","color":"dark_green"},{"text":" Haha! I just totally took your sandwich and neither of you noticed! See you later I guess!","color":"white"}]
            execute as @a[scores={Valid=1842..1842},limit=1] if score SIMSequence Valid matches 10..10 at @s run scoreboard players set bossHead Valid 2


              #leefman disappears
                execute as @a[scores={Valid=1960..1960},limit=1] if score SIMSequence Valid matches 10..10 at @s run particle item_slime 252 14 151 2 2 2 5 50 force
                execute as @a[scores={Valid=1960..1960},limit=1] if score SIMSequence Valid matches 10..10 at @s run particle end_rod 252 14 151 1 1 1 .1 25 force
                execute as @a[scores={Valid=1960..1960},limit=1] if score SIMSequence Valid matches 10..10 at @s run execute as @e[name=Leefman] at @s run tp @s ~ ~-50 ~

                  #Pickle can't move during leefman talk
                  execute if score SIMSequence Valid matches 6..8 as @e[tag=pickle] at @s run tp @s ~ ~ ~ 92 0
                  execute if score SIMSequence Valid matches 6..8 as @e[tag=pickle] at @s run data merge entity @e[tag=pickle,limit=1] {NoAI:1}

                  #Leefman Looking
                    #look down
                      execute if score bossHead Valid matches 1..1 run execute as @e[tag=leefman_intro] at @s run tp @s ~ ~ ~ ~ ~15
                      execute if score bossHead Valid matches 1..1 run execute as @e[tag=leefman_intro,x_rotation=30..] at @s run scoreboard players set bossHead Valid 2

                      #look up
                        execute if score bossHead Valid matches 2..2 run execute as @e[tag=leefman_intro] at @s run tp @s ~ ~ ~ ~ ~-10
                        execute if score bossHead Valid matches 2..2 run execute as @e[tag=leefman_intro,x_rotation=-20..] at @s run scoreboard players set bossHead Valid 1

                          #static score
                            execute if score bossHead Valid matches 3..3 run execute as @e[tag=leefman_intro] at @s run tp @s ~ ~ ~ ~ 0

#SubLeefMan
  execute as @a[scores={Valid=2060..2060},limit=1] if score SIMSequence Valid matches 10..10 run scoreboard players set subLeefMan1Init Valid 1
    execute as @a[scores={Valid=2060..2060},limit=1] if score SIMSequence Valid matches 10..10 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": ...and he just disappeared like that.","color":"white"}]
    execute as @a[scores={Valid=2060..2060},limit=1] if score SIMSequence Valid matches 10..10 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

    execute as @a[scores={Valid=2130..2130},limit=1] if score SIMSequence Valid matches 10..10 run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"The sandwich... gone. ","color":"gold"}]
    execute as @a[scores={Valid=2130..2130},limit=1] if score SIMSequence Valid matches 10..10 run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 1000 1

    execute as @a[scores={Valid=2270..2270},limit=1] if score SIMSequence Valid matches 10..10 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Where you do suppose he's taken it?","color":"white"}]
    execute as @a[scores={Valid=2270..2270},limit=1] if score SIMSequence Valid matches 10..10 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1


    execute as @a[scores={Valid=2410..2410},limit=1] if score SIMSequence Valid matches 10..10 run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"He's likely taken it to ","color":"gold"},{"text":"The Great Temple Of Saladia","color":"green"},{"text":", the home of everything leaf-related. ","color":"gold"}]
    execute as @a[scores={Valid=2410..2410},limit=1] if score SIMSequence Valid matches 10..10 run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 1000 1

    execute as @a[scores={Valid=2560..2560},limit=1] if score SIMSequence Valid matches 10..10 run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"Would you like to go retrieve my missing sandwich from the temple of Saladia? ","color":"gold"}]
    execute as @a[scores={Valid=2560..2560},limit=1] if score SIMSequence Valid matches 10..10 run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 1000 1
      #Yes/No
        execute as @a[scores={Valid=2600..2600},limit=1] if score SIMSequence Valid matches 10..10 run tellraw @a ["",{"text":"(Click to select your option!)","color":"yellow"}]
        execute as @a[scores={Valid=2601..2601},limit=1] if score SIMSequence Valid matches 10..10 run tellraw @a ["",{"text":"Yes!","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set YES/NO Valid 1"}},{"text":" No!","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set YES/NO Valid 2"}}]
        execute as @a[scores={Valid=2601..2601},limit=1] if score SIMSequence Valid matches 10..10 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000

            #YES
              execute if score YES/NO Valid matches 1..1 run execute as @a at @s run tellraw @s ["",{"text":"Dr. Pickle: Great! Follow me to the teleporter. Once we're there, stand on it and I'll tell you where you'll begin your journey. Quickly though, we don't have much time!","color":"gold"}]
              execute if score YES/NO Valid matches 1..1 run playsound minecraft:entity.villager.yes player @a ~ ~ ~ 1000
              execute if score YES/NO Valid matches 1..1 run scoreboard players set SIMSequence Valid 9
              execute if score YES/NO Valid matches 1..1 run scoreboard players set YES/NO Valid 0
            #No
              execute if score YES/NO Valid matches 2..2 run execute as @a at @s run tellraw @s ["",{"text":"Dr. Pickle: Do you mean  'no' as in 'No I would not like to stand here for the rest of eternity and therefore I will agree to this immense and egregious task that you've bestowed upon me'? You know what? I don't care, you'll be going anyway haha.","color":"gold"}]
              execute if score YES/NO Valid matches 2..2 run playsound minecraft:entity.villager.no player @a ~ ~ ~ 1000
              execute if score YES/NO Valid matches 2..2 run scoreboard players set YES/NO Valid 0

              #testfor pickle at door
                execute as @e[tag=pickledoortest] at @s run execute if entity @e[tag=pickle,distance=..1] run setblock 266 30 153 minecraft:redstone_block


              execute as @a[x=275,y=14,z=137,distance=..2] at @s run setblock 266 29 161 minecraft:redstone_block


###############################################################################################################################################################################################################################
#######################       END OF INTRO    #################################################################################################################################################################################
###############################################################################################################################################################################################################################




####################
#######     MINECART
####################
#mcartcount: counts minecarts & houses beginning timer countdown
#miner: timer for miner animation

#targets
  #1
    execute as @e[x=193,y=79,z=8,distance=..2,type=arrow] at @s run tellraw @a ["",{"text":"Target hit!","color":"green","bold":true}]
    execute as @e[x=193,y=79,z=8,distance=..2,type=arrow] at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2
    execute as @e[x=193,y=79,z=8,distance=..2,type=arrow] at @s run setblock 184 76 9 minecraft:rail[shape=south_east]
    execute as @e[x=193,y=79,z=8,distance=..2,type=arrow] at @s run particle minecraft:happy_villager 193 79 8 1 1 1 .1 12
    execute as @e[x=193,y=79,z=8,distance=..2,type=arrow] at @s run kill @s

    #2
      execute as @e[x=185,y=78,z=30,distance=..2,type=arrow] at @s run tellraw @a ["",{"text":"Target hit!","color":"green","bold":true}]
      execute as @e[x=185,y=78,z=30,distance=..2,type=arrow] at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2
      execute as @e[x=185,y=78,z=30,distance=..2,type=arrow] at @s run setblock 184 75 37 minecraft:rail
      execute as @e[x=185,y=78,z=30,distance=..2,type=arrow] at @s run particle minecraft:happy_villager 185 78 30 1 1 1 .1 12
      execute as @e[x=185,y=78,z=30,distance=..2,type=arrow] at @s run kill @s

      #3
      execute as @e[x=173,y=78,z=44,distance=..2,type=arrow] at @s run tellraw @a ["",{"text":"Target hit!","color":"green","bold":true}]
      execute as @e[x=173,y=78,z=44,distance=..2,type=arrow] at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2
      execute as @e[x=173,y=78,z=44,distance=..2,type=arrow] at @s run setblock 168 75 44 rail[shape=south_east]
      execute as @e[x=173,y=78,z=44,distance=..2,type=arrow] at @s run particle minecraft:happy_villager 173 78 44 1 1 1 .1 12
      execute as @e[x=173,y=78,z=44,distance=..2,type=arrow] at @s run kill @s

      #4
        execute as @e[x=164,y=76,z=57,distance=..2,type=arrow] at @s run tellraw @a ["",{"text":"Target hit!","color":"green","bold":true}]
        execute as @e[x=164,y=76,z=57,distance=..2,type=arrow] at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2
        execute as @e[x=164,y=76,z=57,distance=..2,type=arrow] at @s run fill 168 72 60 168 72 62 minecraft:spruce_slab[type=top]
        execute as @e[x=164,y=76,z=57,distance=..2,type=arrow] at @s run setblock 168 73 60 rail[shape=ascending_north]
        execute as @e[x=164,y=76,z=57,distance=..2,type=arrow] at @s run fill 168 73 62 168 73 61 minecraft:rail
        execute as @e[x=164,y=76,z=57,distance=..2,type=arrow] at @s run particle minecraft:happy_villager 164 76 57 1 1 1 .1 12
        execute as @e[x=164,y=76,z=57,distance=..2,type=arrow] at @s run kill @s

        #5
          execute as @e[x=171,y=77,z=73,distance=..2,type=arrow] at @s run tellraw @a ["",{"text":"Target hit!","color":"green","bold":true}]
          execute as @e[x=171,y=77,z=73,distance=..2,type=arrow] at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2
          execute as @e[x=171,y=77,z=73,distance=..2,type=arrow] at @s run setblock 168 73 69 minecraft:rail[shape=north_south]
          execute as @e[x=171,y=77,z=73,distance=..2,type=arrow] at @s run setblock 168 73 69 minecraft:rail[shape=north_south]
          execute as @e[x=171,y=77,z=73,distance=..2,type=arrow] at @s run particle minecraft:happy_villager 171 77 73 1 1 1 .1 12
          execute as @e[x=171,y=77,z=73,distance=..2,type=arrow] at @s run kill @s

          #6
            execute as @e[x=178,y=71,z=111,distance=..2,type=arrow] at @s run tellraw @a ["",{"text":"Target hit!","color":"green","bold":true}]
            execute as @e[x=178,y=71,z=111,distance=..2,type=arrow] at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2
            execute as @e[x=178,y=71,z=111,distance=..2,type=arrow] at @s run setblock 182 66 110 minecraft:rail[shape=east_west]
            execute as @e[x=178,y=71,z=111,distance=..2,type=arrow] at @s run particle minecraft:happy_villager 178 71 111 1 1 1 .1 12
            execute as @e[x=178,y=71,z=111,distance=..2,type=arrow] at @s run kill @s

            #7
              execute as @e[x=176,y=70,z=102,distance=..2,type=arrow] at @s run tellraw @a ["",{"text":"Target hit!","color":"green","bold":true}]
              execute as @e[x=176,y=70,z=102,distance=..2,type=arrow] at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2
              execute as @e[x=176,y=70,z=102,distance=..2,type=arrow] at @s run setblock 176 66 103 rail[shape=east_west]
              execute as @e[x=176,y=70,z=102,distance=..2,type=arrow] at @s run particle minecraft:happy_villager 176 70 102 1 1 1 .1 12
              execute as @e[x=176,y=70,z=102,distance=..2,type=arrow] at @s run kill @s

              #8
                execute as @e[x=137,y=72,z=90,distance=..2,type=arrow] at @s run tellraw @a ["",{"text":"Target hit!","color":"green","bold":true}]
                execute as @e[x=137,y=72,z=90,distance=..2,type=arrow] at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2
                execute as @e[x=137,y=72,z=90,distance=..2,type=arrow] at @s run setblock 127 68 86 rail[shape=south_west]
                execute as @e[x=137,y=72,z=90,distance=..2,type=arrow] at @s run particle minecraft:happy_villager 137 72 90 1 1 1 .1 12
                #WubLub
                  execute as @e[x=137,y=72,z=90,distance=..2,type=arrow] at @s run summon minecraft:zombie_pigman 82.5 67 83.5 {CustomName:"{\"text\":\"WubLub\"}",Tags:["looks"],IsBaby:0,HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{}],Invulnerable:1b,PersistenceRequired:1,NoAI:1,Silent:1}
                  execute as @e[tag=looks] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..7]
                  execute as @e[tag=looks] at @s run execute as @p[distance=..3] at @s run setblock 105 75 99 minecraft:redstone_block
                execute as @e[x=137,y=72,z=90,distance=..2,type=arrow] at @s run kill @s

      #Miners
          #Timer
              scoreboard players add @e[type=armor_stand,name=miner1] miner 1
              scoreboard players reset @e[type=armor_stand,scores={miner=21..}] miner
              execute as @e[type=armor_stand,name=miner1,scores={miner=1..5}] at @s run data merge entity @s {Pose:{RightArm:[228f,0f,0f]}}
              execute as @e[type=armor_stand,name=miner1,scores={miner=5..10}] at @s run data merge entity @s {Pose:{RightArm:[268f,0f,0f]}}
             execute as @e[type=armor_stand,name=miner1,scores={miner=10..15}] at @s run data merge entity @s {Pose:{RightArm:[313f,0f,0f]}}
              execute as @e[type=armor_stand,name=miner1,scores={miner=15..20}] at @s run data merge entity @s {Pose:{RightArm:[268f,0f,0f]}}
              execute as @a at @s if entity @a[x=236,y=76,z=9.5,distance=..4] at @s run setblock 237 71 9 minecraft:redstone_block
              execute as @a at @s if entity @a[x=236,y=76,z=9.5,distance=..4] at @s run gamemode adventure @s[tag=playingMap]
                #Activation
                  execute as @a[x=237,y=76,z=9,distance=..4] at @s run setblock 237 71 9 minecraft:redstone_block
                 #Tags
                  tag @a remove rootedMinecart
                  tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] add rootedMinecart
                   #TestIfValid
                    execute if block 232 76 9 minecraft:oak_button[powered=true] run tellraw @a[tag=!rootedMinecart] ["",{"text":"Whoops! It seems as if you're not in a minecart! Please enter one to begin the minecart sequence!","color":"green"}]
                    execute if block 232 76 9 minecraft:oak_button[powered=true] run playsound minecraft:block.note.xylophone player @a[tag=!rootedMinecart] ~ ~ ~ 1000 .8
                    execute if block 232 76 9 minecraft:oak_button[powered=true] run execute as @a[tag=rootedMinecart,limit=1] at @s run scoreboard players set MinecartActive Valid 1
                    execute if block 232 76 9 minecraft:oak_button[powered=true] run execute as @a[tag=rootedMinecart,limit=1] at @s run execute as @a[tag=!rootedMinecart] run tag @s add mSpectator
                    execute if block 232 76 9 minecraft:oak_button[powered=true] run execute as @a[tag=rootedMinecart,limit=1] at @s run replaceitem entity @s hotbar.4 minecraft:bow{Enchantments:[{id:infinity,lvl:1}],Unbreakable:1}
                    execute if block 232 76 9 minecraft:oak_button[powered=true] run execute as @a[tag=rootedMinecart,limit=1] at @s run replaceitem entity @s inventory.0 minecraft:arrow
                    execute if block 232 76 9 minecraft:oak_button[powered=true] run execute as @a[tag=rootedMinecart,limit=1] at @s run execute as @e[type=minecart] at @s run tag @a[distance=..1] add shooting
                    execute if block 232 76 9 minecraft:oak_button[powered=true] run setblock 232 76 9 minecraft:oak_button[face=wall,facing=east]

                      #Spectator Mode
                        gamemode spectator @a[tag=mSpectator]
                      execute as @e[tag=rootedMinecart] at @s run tp @e[tag=mSpectator] ~ ~0 ~ ~ .8
                      execute as @e[tag=rootedMinecart] at @s run tp @e[tag=mSpectator] ^ ^ ^1
                      title @a[tag=mSpectator] actionbar ["",{"text":"You're spectating, ","color":"gold"},{"text":"and are currently not playing the mine game.","color":"gray"}]

                      #Mine Death reset
                        execute as @a[scores={deaths=1..}] at @s run kill @e[tag=mcart]
                        execute as @a[scores={deaths=1..}] at @s run clear @a minecraft:bow
                        execute as @a[scores={deaths=1..}] at @s run summon minecraft:minecart 234 76 8 {Invulnerable:1b,Tags:["mcart"],Team:"minecart"}

                        execute as @a[scores={deaths=1..}] at @s run stopsound @a player minecraft:music_disc.11
                        execute as @a[scores={deaths=1..}] at @s run stopsound @a player minecraft:custom.mine
                        execute as @a[scores={deaths=1..}] at @s run function tms:games/minecartreset
                        execute as @a[scores={deaths=1..}] at @s run kill @a[tag=!spectator]
                        execute as @a[scores={deaths=1..}] at @s run gamemode adventure @a[tag=playingMap]
                        execute as @a[scores={deaths=1..}] at @s run tag @a[tag=mSpectator] remove mSpectator
                        execute as @a[scores={deaths=1..}] at @s run scoreboard players reset @s Music
                        execute as @a[scores={deaths=1..}] at @s run kill @e[tag=mcart]
                        execute as @a[scores={deaths=1..}] at @s run scoreboard players set @a deaths 0

                          #minecart population control
                            scoreboard players reset @e mcartCount
                            scoreboard players set total mcartCount 0
                            execute as @e[tag=mcart] at @s run scoreboard players set @s mcartCount 1
                            scoreboard players operation total mcartCount += @e[tag=mcart] mcartCount
                            execute if score total mcartCount matches 2.. run kill @e[tag=mcart]
                            execute if score total mcartCount matches 0 run summon minecraft:minecart 234 76 8 {Invulnerable:1b,Tags:["mcart"],Team:"minecart"}

                              #minecart Init
                                execute if score MinecartActive Valid matches 1..1 run scoreboard players add Timer mcartCount 1
                                execute as @a[x=243,y=78,z=9,distance=..2] at @s run setblock 238 85 14 minecraft:redstone_block
                                  execute if score Timer mcartCount matches 10..150 run tp @e[tag=mcart] 222 76 9
                                  execute if score Timer mcartCount matches 49..50 run title @a times 5 60 5

                                  execute if score Timer mcartCount matches 50..50 run title @a subtitle {"text":" "}
                                  execute if score Timer mcartCount matches 50..50 run title @a title ["",{"text":"3","color":"green"}]
                                  execute if score Timer mcartCount matches 50..50 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 0

                                  execute if score Timer mcartCount matches 70..70 run title @a title ["",{"text":"2","color":"yellow"}]
                                  execute if score Timer mcartCount matches 70..70 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 0

                                  execute if score Timer mcartCount matches 90..90 run title @a title ["",{"text":"1","color":"red"}]
                                  execute if score Timer mcartCount matches 90..90 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 0

                                  execute if score Timer mcartCount matches 110..110 run title @a title ["",{"text":"GO!","color":"green"}]
                                  execute if score Timer mcartCount matches 110..110 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2

                                  execute if score Timer mcartCount matches 150..150 run playsound minecraft:music_disc.11 player @a ~ ~ ~ 1000
                                  execute if score Timer mcartCount matches 150..150 run data merge entity @e[tag=mcart,limit=1] {Motion:[-0.53,0.0,0.0]}
                                  execute as @e[tag=mcart] at @s if block ~ ~-1 ~ lava run kill @s

                                  #AntiCheat & Misc.
                                  execute positioned 88.53 68.00 84.51 run kill @e[tag=mcart,distance=..2]
                                  execute as @a[x=98,y=67,z=84,distance=..3] at @s run scoreboard players set MinecartActive Valid 0
                                  execute as @a[x=98,y=67,z=84,distance=..3] at @s run execute as @a[tag=mSpectator] run tp @a[tag=rootedMinecart]
                                  execute as @a[x=98,y=67,z=84,distance=..3] at @s run gamemode adventure @a[tag=mSpectator]
                                  execute as @a[x=98,y=67,z=84,distance=..3] at @s run tag @a remove mSpectator
                                  execute as @a[x=98,y=67,z=84,distance=..3] at @s run kill @e[tag=mcart]
                                  execute as @a[x=98,y=67,z=84,distance=..3] run tp @a 90 68 84

                                  execute as @a[tag=!rootedMinecart,tag=!mSpectator] at @s if score MinecartActive Valid matches 1..1 run kill @s

                #Teleport to Jungle
                execute as @a[x=66,y=67,z=85,distance=..2] at @s run clear @a minecraft:bow
                execute as @a[x=66,y=67,z=85,distance=..2] at @s run clear @a minecraft:arrow
                execute as @a[x=66,y=67,z=85,distance=..2] at @s run stopsound @a
                execute as @a[x=66,y=67,z=85,distance=..2] at @s run effect give @a minecraft:saturation 1000000 10 true
                execute as @a[x=66,y=67,z=85,distance=..2] at @s run tp @a 4416 60 -4083


###############################################################################################################################################################################################################################
#######################       END OF MINE: START JUNGLE    #################################################################################################################################################################################
###############################################################################################################################################################################################################################
#JUNGLE

  #Villagers talking
    #Yub
      execute as @e[tag=yub] at @s if score jub jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Yub McToods: ","color":"yellow"},{"text":"Welcome to the village of Coleslaw!","color":"none"}]
      execute as @e[tag=yub] at @s if score jub jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
      execute as @e[tag=yub] at @s if score jub jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set jub jungleVValid 1
      #McFoo
        execute as @e[tag=mcfoo] at @s if score mcfoo jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Dorothy McFoo: ","color":"yellow"},{"text":"Don't you just love my bird!?","color":"none"}]
        execute as @e[tag=mcfoo] at @s if score mcfoo jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
        execute as @e[tag=mcfoo] at @s if score mcfoo jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set mcfoo jungleVValid 1
        #Farmer Tim
          execute as @e[tag=tim] at @s if score tim jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Farmer Tim: ","color":"yellow"},{"text":"I love onions!","color":"none"}]
          execute as @e[tag=tim] at @s if score tim jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
          execute as @e[tag=tim] at @s if score tim jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set tim jungleVValid 1
          #Ger Flershenberger/Raz Matazz
            execute as @e[tag=raz] at @s if score raz jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Ger Flershenberger: ","color":"yellow"},{"text":"I like staring at the sun for extended periods of time.","color":"none"}]
            execute as @e[tag=raz] at @s if score raz jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
            execute as @e[tag=raz] at @s if score raz jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set raz jungleVValid 1
            #P'tuder Shafooder
              execute as @e[tag=ptudr] at @s if score ptudr jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"P'Tuder Shafooder: ","color":"yellow"},{"text":"Ugh, what a horrible day! I wish I had some potatoes.","color":"none"}]
              execute as @e[tag=ptudr] at @s if score ptudr jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
              execute as @e[tag=ptudr] at @s if score ptudr jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set ptudr jungleVValid 1
              #P'tuder Shafooder
                execute as @e[tag=chudu] at @s if score chudu jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Chen Durns: ","color":"yellow"},{"text":"Whenever I startup my PC it says it can't boot. It all started when I deleted system32 to speed the PC up.","color":"none"}]
                execute as @e[tag=chudu] at @s if score chudu jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
                execute as @e[tag=chudu] at @s if score chudu jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set chudu jungleVValid 1
                #Guard Tom
                  execute as @e[tag=gtom] at @s if score gtom jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Guard Tom: ","color":"yellow"},{"text":"Nobody's getting past me!","color":"none"}]
                  execute as @e[tag=gtom] at @s if score gtom jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
                  execute as @e[tag=gtom] at @s if score gtom jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set gtom jungleVValid 1
                  #Jalbona Foob
                    execute as @e[tag=jfoob] at @s if score jfoob jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Jalbona Foob: ","color":"yellow"},{"text":"I love the sound of a steel guitar.","color":"none"}]
                    execute as @e[tag=jfoob] at @s if score jfoob jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
                    execute as @e[tag=jfoob] at @s if score jfoob jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set jfoob jungleVValid 1
                    #Warb
                      execute as @e[tag=warb] at @s if score warb jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Warb: ","color":"yellow"},{"text":"Hey have you ever tried candy wrappers? They're so good!","color":"none"}]
                      execute as @e[tag=warb] at @s if score warb jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
                      execute as @e[tag=warb] at @s if score warb jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set warb jungleVValid 1
                      #Mr miss
                        execute as @e[tag=mrmiss] at @s if score mrmiss jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Mr. Miss: ","color":"yellow"},{"text":"I have a strange obsession with swallowing coins.","color":"none"}]
                        execute as @e[tag=mrmiss] at @s if score mrmiss jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
                        execute as @e[tag=mrmiss] at @s if score mrmiss jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set mrmiss jungleVValid 1
                        #Bartholomew Phew
                          execute as @e[tag=barth] at @s if score barth jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Bartholomew Phew: ","color":"yellow"},{"text":"I am proud to say I haven't slept once in my life! Yes, you heard me, not once!","color":"none"}]
                          execute as @e[tag=barth] at @s if score barth jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
                          execute as @e[tag=barth] at @s if score barth jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set barth jungleVValid 1
                          #Ron Thomas
                            execute as @e[tag=rtom] at @s if score rtom jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Ron Thomas: ","color":"yellow"},{"text":"My nose feels large today.","color":"none"}]
                            execute as @e[tag=rtom] at @s if score rtom jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
                            execute as @e[tag=rtom] at @s if score rtom jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set rtom jungleVValid 1
                            #Goober Goo
                              execute as @e[tag=goo] at @s if score goo jungleVValid matches 0..0 as @a[distance=..3] at @s run tellraw @s ["",{"text":"Goober Goo: ","color":"yellow"},{"text":"Where is all the goo?","color":"none"}]
                              execute as @e[tag=goo] at @s if score goo jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
                              execute as @e[tag=goo] at @s if score goo jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set goo jungleVValid 1
      #Edmund Sequence 1
        #Trigger
          execute as @e[tag=ed] at @s if score ed jungleVValid matches 0..0 as @a[distance=..3,limit=1] at @s run tellraw @a ["",{"text":"Edmund: ","color":"yellow"},{"text":"Ah, yes! Welcome to the lovely village of Coleslaw!","color":"white","insertion":"/tellraw @a %s"}]
          execute as @e[tag=ed] at @s if score ed jungleVValid matches 0..0 as @a[distance=..3] at @s run playsound minecraft:entity.wolf.step player @s
          execute as @e[tag=ed] at @s if score ed jungleVValid matches 0..0 as @a[distance=..3] at @s run scoreboard players set ed jungleVValid 1
          execute if score ed jungleVValid matches 1.. run scoreboard players add ed jungleVValid 1

          execute if score ed jungleVValid matches 100..100 as @a at @s run tellraw @s ["",{"selector":"@p","color":"aqua"},{"text":": Hello, Edmund! I'm currently in search of a key. More explicitly, the second key to the Temple of Saladia! Do you have any idea where this could be located? ","color":"white"}]
          execute if score ed jungleVValid matches 100..100 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1000 1

          execute if score ed jungleVValid matches 200..200 as @a at @s run tellraw @s ["",{"text":"Edmund: ","color":"yellow"},{"text":"Yes, actually! I have it right here.","color":"white","insertion":"/tellraw @a %s"}]
          execute if score ed jungleVValid matches 200..200 as @a at @s run playsound minecraft:entity.wolf.step player @s ~ ~ ~ 1000

          execute if score ed jungleVValid matches 320..320 as @a at @s run tellraw @s ["",{"text":"Edmund: ","color":"yellow"},{"text":"Here! I hope this is what you're looking for!","color":"white","insertion":"/tellraw @a %s"}]
          execute if score ed jungleVValid matches 320..320 as @a at @s run playsound minecraft:entity.wolf.step player @s ~ ~ ~ 1000
          execute if score ed jungleVValid matches 320..320 as @a[limit=1] at @s run summon item 4415 89 -4048 {CustomName:"{\"text\":\"Temple Key 2\"}",Tags:["key2"],Item:{id:"minecraft:fermented_spider_eye",Count:1b,tag:{display:{Name:"Temple Key 2"}}},PickupDelay:32768,Unbreakable:1,Age:-2147483648}
          execute if score ed jungleVValid matches 320..320 as @a at @s run playsound minecraft:voices.pop player @a ~ ~ ~ 1000 2

          execute if score ed jungleVValid matches 440..440 as @a at @s run playsound minecraft:entity.zombie.break_wooden_door player @s ~ ~ ~ 1000
          execute if score ed jungleVValid matches 440..440 as @a at @s run setblock 4415 88 -4048 barrier
          execute if score ed jungleVValid matches 440..440 as @a at @s run kill @e[tag=key2]
          execute if score ed jungleVValid matches 440..440 as @a[limit=1] at @s run summon item 4415 87.5 -4048 {CustomName:"{\"text\":\"Temple Key 2\"}",Tags:["key2"],Item:{id:"minecraft:fermented_spider_eye",Count:1b,tag:{display:{Name:"Temple Key 2"}}},PickupDelay:32768,Unbreakable:1,Age:-2147483648}

          execute if score ed jungleVValid matches 540..540 as @a at @s run tellraw @s ["",{"text":"Edmund: ","color":"yellow"},{"text":"Oh no! The key fell through a hole in the platform! Can you get it? I've got nose aches that are proving to be a bit bothersome, and thus I can't go down myself.","color":"white","insertion":"/tellraw @a %s"}]
          execute if score ed jungleVValid matches 540..540 as @a at @s run playsound minecraft:entity.wolf.step player @s ~ ~ ~ 1000

          execute if score ed jungleVValid matches 580..580 as @a at @s run tellraw @s ["",{"text":"(Click to select your option!)","color":"yellow"}]
          execute if score ed jungleVValid matches 580..580 as @a at @s run tellraw @s ["",{"text":"Yes. ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set jYES/NO Valid 1"},"insertion":"/tellraw @a %s"}]
          execute if score ed jungleVValid matches 580..580 as @a at @s run tellraw @s ["",{"text":"No. ","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set jYES/NO Valid 2"},"insertion":"/tellraw @a %s"}]
          execute if score ed jungleVValid matches 580..580 as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1000
          execute if score ed jungleVValid matches 580..580 as @a at @s run setworldspawn 4479 7 -4075


        execute if score jYES/NO Valid matches 1..1 run execute as @a at @s run tellraw @s ["",{"text":"Edmund: ","color":"yellow"},{"text":"Great! However, you're going to venture into the jungle, so it's probably best you equip yourself with some armor. ","color":"white","insertion":"/tellraw @a %s"},{"text":"I recommend you visit the blacksmith and grab yourself some armor and a sword before you go!","color":"green"}]
        execute if score jYES/NO Valid matches 1..1 run execute as @a at @s run playsound minecraft:entity.wolf.step player @s ~ ~ ~ 1000
        execute if score jYES/NO Valid matches 1.. run scoreboard players set carlsonDetect Valid 1

        execute if score jYES/NO Valid matches 2..2 run execute as @a at @s run tellraw @s ["",{"text":"Edmund: ","color":"yellow"},{"text":"Welp, that's rather unfortunate. I'm definitely not going down there, so it seems as if we won't be seeing that key again!","color":"white","insertion":"/tellraw @a %s"}]
        execute if score jYES/NO Valid matches 2..2 run execute as @a at @s run playsound minecraft:entity.wolf.step player @s ~ ~ ~ 1000

          execute if score jYES/NO Valid matches 1.. run execute as @a at @s run scoreboard players set jYES/NO Valid 0
#Carlson
        execute as @e[tag=blacksm] at @s if score carlsonDetect Valid matches 1..1 run execute as @a[distance=..5] at @s run scoreboard players set carlsonAdd Valid 1
        execute if score carlsonAdd Valid matches 1..1 run scoreboard players add carlsonTimer Valid 1

          execute if score carlsonTimer Valid matches 1..1 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": We'll be setting out into the jungle on a quest to find a key. Do you have any armor recommendations?","color":"white"}]
          execute if score carlsonTimer Valid matches 1..1 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

        execute if score carlsonTimer Valid matches 150..150 run tellraw @a ["",{"text":"Blacksmith Carlson: ","color":"blue"},{"text":"Of course! Only the best armour can be given to those venturing out into the jungle. My products are the best around, so feel free to take anything you'd like from my assemblage of armour!","color":"white","insertion":"/tellraw @a %s"}]
        execute if score carlsonTimer Valid matches 150..150 run playsound minecraft:entity.wolf.step player @a ~ ~ ~ 1000 .82

        execute if score carlsonTimer Valid matches 300..300 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Thank you!","color":"white"}]
        execute if score carlsonTimer Valid matches 300..300 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

        execute if score carlsonTimer Valid matches 350..350 run tellraw @a ["",{"text":"Blacksmith Carlson: ","color":"blue"},{"text":"Have a wonderful day!","color":"white","insertion":"/tellraw @a %s"}]
        execute if score carlsonTimer Valid matches 350..350 run playsound minecraft:entity.wolf.step player @a ~ ~ ~ 1000 .82
        execute if score carlsonTimer Valid matches 350..350 run kill @e[tag=key2]

#Return to Edmund
  execute if score carlsonTimer Valid matches 350..350 run execute as @a[limit=1] at @s run scoreboard players set ed2 jungleVValid 1
  execute if score ed2 jungleVValid matches 1.. run execute as @e[tag=ed] at @s run tellraw @a[distance=..6] ["",{"text":"Edmund: ","color":"yellow"},{"text":"Drop down this hole to get to the key. I wish you the best of luck!","color":"white","insertion":"/tellraw @a %s"}]
  execute if score ed2 jungleVValid matches 1.. run execute as @e[tag=ed] at @s run playsound minecraft:entity.wolf.step player @a[distance=..6] ~ ~ ~ 1000
  execute if score ed2 jungleVValid matches 1.. run execute as @e[tag=ed] at @s run setblock 4415 88 -4048 air
  execute if score ed2 jungleVValid matches 1.. run execute as @e[tag=ed] at @s run execute as @a[distance=..6] at @s run scoreboard players set ed2 jungleVValid 0
  execute if score carlsonTimer Valid matches 350..350 run execute as @a[limit=1] at @s run scoreboard players set summonSpider spiderSequence 0


#Decklin the Spider
  #summon decklin
    execute if score ed2 jungleVValid matches 1.. run scoreboard players set summonSpider spiderSequence 0
      #spider sequence key
        #0: after Blacksmith, test for a player
        #1: summon spider
        #3: after & pre spider fall
          #spiderAtLocation:
            #1: bottom of tree
            #2: at ice Cavern
            #3: begin fight
    execute if score summonSpider spiderSequence matches 0..0 run execute positioned 4415.61 86.26 -4048.00 run execute as @a[distance=..3] at @s run scoreboard players set summonSpider spiderSequence 1
    execute if score summonSpider spiderSequence matches 1..1 run summon spider 4416.40 87.00 -4050.63 {Rotation:[0f,0f],Attributes:[{Name:generic.followRange,Base:0}],Tags:["spiderboss"],NoAI:0,Silent:1,Invulnerable:1b,Time:-2147483648,PersistenceRequired:1,NoGravity:1b}
    execute if score summonSpider spiderSequence matches 1..1 run scoreboard players set summonSpider spiderSequence 3
    #activate spider down
      execute as @a[x=4415,y=83,z=-4048,distance=..2] at @s if score playedFallSound spiderSequence matches 0..0 run scoreboard players set spiderDown spiderSequence 1
      execute as @e[x=4416,y=79,z=-4051,distance=..2,type=spider] at @s if score playedFallSound spiderSequence matches 0..0 run playsound minecraft:entity.wolf.pant player @a ~ ~ ~ 1000 1
      execute as @e[x=4416,y=79,z=-4051,distance=..2,type=spider] at @s if score playedFallSound spiderSequence matches 0..0 run scoreboard players set playedFallSound spiderSequence 1
      #tp decklin down
        execute as @e[tag=spiderboss] at @s if score spiderDown spiderSequence matches 1..1 run tp @s ~ ~-.25 ~ 0 ~
        execute as @e[tag=spiderboss] at @s if score spiderDown spiderSequence matches 1..1 run summon minecraft:llama_spit ~ ~1.6 ~-.3 {NoGravity:1b,Tags:["poopspit"]}
        execute as @e[tag=spiderboss] at @s if score spiderDown spiderSequence matches 1..1 run tp @s 4416.40 ~ -4050.63 0 ~
          #stop fall
            execute if score spiderDown spiderSequence matches 1..1 as @e[x=4416,y=69,z=-4051,distance=..1,tag=spiderboss] at @s run scoreboard players set spiderDown spiderSequence 0
              #spiderweb
                execute as @e[x=4416,y=70,z=-4051,distance=..1,tag=spiderboss] at @s if score spiderDown spiderSequence matches 1..1 run execute as @e[tag=spiderboss] at @s if score spiderDown spiderSequence matches 1..1 run summon minecraft:llama_spit ~ ~1 ~-.3 {NoGravity:1b,Tags:["poopspit"]}
                execute as @e[x=4416,y=70,z=-4051,distance=..1,tag=spiderboss] at @s if score spiderDown spiderSequence matches 1..1 run summon minecraft:llama_spit 4416.4 71.75 -4050.93 {NoGravity:1b,Tags:["poopspit"]}
            #correct spider location
              execute as @e[tag=spiderboss] at @s if score spiderTalk Valid matches 0..769 run tp @s 4416.40 ~ -4050.63
              execute as @e[tag=spiderboss] at @s if score spiderTalk Valid matches 769..3985 run tp @s 4475 7.5 -4075

              #Decklin Conversation
                #init and essentials
                execute as @e[x=4416,y=69,z=-4050,distance=..2,tag=spiderboss] at @s run scoreboard players set spiderAtLocation spiderSequence 1
                execute if score spiderAtLocation spiderSequence matches 1..1 run scoreboard players add spiderTalk Valid 1
                  #Conversation Part 1 (9 lines)
                    execute if score spiderTalk Valid matches 2..2 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Oh hey. Sorry about my sneezing. I rub cats on my nose and I'm allergic to cats lol.","color":"white"}]
                    execute if score spiderTalk Valid matches 2..2 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                      execute if score spiderTalk Valid matches 150..150 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"How are you doing today?","color":"white"}]
                      execute if score spiderTalk Valid matches 150..150 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                        execute if score spiderTalk Valid matches 250..250 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": I'm doing just fine.","color":"white"}]
                        execute if score spiderTalk Valid matches 250..250 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                          execute if score spiderTalk Valid matches 350..350 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"How wonderful! I was casually hanging out beneath the village platforms when I saw this weird key fall from above, which I later took!","color":"white"}]
                          execute if score spiderTalk Valid matches 350..350 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                            execute if score spiderTalk Valid matches 500..500 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"So yes. I wanted you to become aware of that.","color":"white"}]
                            execute if score spiderTalk Valid matches 500..500 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                              execute if score spiderTalk Valid matches 575..575 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Ok.","color":"white"}]
                              execute if score spiderTalk Valid matches 575..575 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                execute if score spiderTalk Valid matches 630..630 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Hey, wanna see my cave?","color":"white"}]
                                execute if score spiderTalk Valid matches 630..630 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                  execute if score spiderTalk Valid matches 700..700 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": No.","color":"white"}]
                                  execute if score spiderTalk Valid matches 700..700 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                    execute if score spiderTalk Valid matches 740..740 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Ok, let's go!","color":"white"}]
                                    execute if score spiderTalk Valid matches 740..740 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000
                                        #teleport to cavern
                                          execute if score spiderTalk Valid matches 770..770 run playsound minecraft:custom.unnfect player @a ~ ~ ~ 1000 2
                                          execute if score spiderTalk Valid matches 770..770 run tp @a 4479 7.5 -4075.5 83.8 -6
                                          execute if score spiderTalk Valid matches 770..770 run stopsound @a player minecraft:music_disc.mall
                                          execute if score spiderTalk Valid matches 770..770 run spawnpoint @a 4479 7 -4075
                                          execute if score spiderTalk Valid matches 770..770 run execute as @e[tag=spiderboss] at @s run tp @e[tag=spiderboss] 4475 7.5 -4075

                    #Conversation Part 2 (30 lines)
                  #saturation
                    execute if score spiderTalk Valid matches ..4090 run effect give @a minecraft:saturation 1000 255 true
                      execute if score spiderTalk Valid matches 820..820 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Well, this is it. It's much colder than I remember. Oh noo! How fantastic. I left the refrigerator door open. Now everything is all messed up!","color":"white"}]
                      execute if score spiderTalk Valid matches 820..820 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                        execute if score spiderTalk Valid matches 1000..1000 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": What?","color":"white"}]
                        execute if score spiderTalk Valid matches 1000..1000 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                          execute if score spiderTalk Valid matches 1050..1050 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"I mean, ah-ha! This is exactly how I wanted things.","color":"white"}]
                          execute if score spiderTalk Valid matches 1050..1050 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                            execute if score spiderTalk Valid matches 1255..1255 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": I thought you just said you left your refrigerator open and now your plan is totally messed up.","color":"white"}]
                            execute if score spiderTalk Valid matches 1255..1255 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                              execute if score spiderTalk Valid matches 1360..1360 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"No I didn't.","color":"white"}]
                              execute if score spiderTalk Valid matches 1360..1360 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                execute if score spiderTalk Valid matches 1465..1465 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": I just heard you say that.","color":"white"}]
                                execute if score spiderTalk Valid matches 1465..1465 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                  execute if score spiderTalk Valid matches 1570..1570 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"What are you talking about?","color":"white"}]
                                  execute if score spiderTalk Valid matches 1570..1570 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                    execute if score spiderTalk Valid matches 1675..1675 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": You just said that you ruined your plan.","color":"white"}]
                                    execute if score spiderTalk Valid matches 1675..1675 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                      execute if score spiderTalk Valid matches 1780..1780 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"No, you just said that.","color":"white"}]
                                      execute if score spiderTalk Valid matches 1780..1780 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                        execute if score spiderTalk Valid matches 1885..1885 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": No, you said that.","color":"white"}]
                                        execute if score spiderTalk Valid matches 1885..1885 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                          execute if score spiderTalk Valid matches 1990..1990 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Nope, this is all in accordance with my plan... which I came up with just now.","color":"white"}]
                                          execute if score spiderTalk Valid matches 1990..1990 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                            execute if score spiderTalk Valid matches 2095..2095 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": You just made up a new plan?","color":"white"}]
                                            execute if score spiderTalk Valid matches 2095..2095 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                              execute if score spiderTalk Valid matches 2200..2200 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"No.","color":"white"}]
                                              execute if score spiderTalk Valid matches 2200..2200 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                execute if score spiderTalk Valid matches 2305..2305 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Isn't that what you just said?","color":"white"}]
                                                execute if score spiderTalk Valid matches 2305..2305 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                  execute if score spiderTalk Valid matches 2410..2410 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"No, this was my plan all along.","color":"white"}]
                                                  execute if score spiderTalk Valid matches 2410..2410 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                    execute if score spiderTalk Valid matches 2515..2515 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": That makes no sense.","color":"white"}]
                                                    execute if score spiderTalk Valid matches 2515..2515 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                      execute if score spiderTalk Valid matches 2620..2620 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"No, you make no sense!","color":"white"}]
                                                      execute if score spiderTalk Valid matches 2620..2620 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                        execute if score spiderTalk Valid matches 2725..2725 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": So... why are we here again?","color":"white"}]
                                                        execute if score spiderTalk Valid matches 2725..2725 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                          execute if score spiderTalk Valid matches 2830..2830 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Ah, yes! I was going to kill yo-I mean, show you my snowman collection!","color":"white"}]
                                                          execute if score spiderTalk Valid matches 2830..2830 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                            execute if score spiderTalk Valid matches 2935..2935 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Snowmen?","color":"white"}]
                                                            execute if score spiderTalk Valid matches 2935..2935 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                              execute if score spiderTalk Valid matches 3040..3040 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Yes, I hold snowmen captive in my giant refrigerator.","color":"white"}]
                                                              execute if score spiderTalk Valid matches 3040..3040 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                execute if score spiderTalk Valid matches 3145..3145 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Didn't you leave it open?","color":"white"}]
                                                                execute if score spiderTalk Valid matches 3145..3145 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                                  execute if score spiderTalk Valid matches 3250..3250 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Indeed. They could be anywhere in this room.","color":"white"}]
                                                                  execute if score spiderTalk Valid matches 3250..3250 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                    execute if score spiderTalk Valid matches 3355..3355 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Aren't you at all concerned about carnivorous snowmen running amok inside these caverns?","color":"white"}]
                                                                    execute if score spiderTalk Valid matches 3355..3355 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                                      execute if score spiderTalk Valid matches 3460..3460 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Not at all. They only eat people and spiders.","color":"white"}]
                                                                      execute if score spiderTalk Valid matches 3460..3460 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                        execute if score spiderTalk Valid matches 3565..3565 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Aren't you a spider?","color":"white"}]
                                                                        execute if score spiderTalk Valid matches 3565..3565 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                                          execute if score spiderTalk Valid matches 3670..3670 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Now that you've mentioned it, I realize we may be in trouble. Welp, time to panic. I never would've thought something like this would happen!","color":"white"}]
                                                                          execute if score spiderTalk Valid matches 3670..3670 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                            execute if score spiderTalk Valid matches 3775..3775 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": How many do you have?","color":"white"}]
                                                                            execute if score spiderTalk Valid matches 3775..3775 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                                              execute if score spiderTalk Valid matches 3880..3880 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"I've never actually counted them. If I were to estimate, I'd say around 25.","color":"white"}]
                                                                              execute if score spiderTalk Valid matches 3880..3880 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                                execute if score spiderTalk Valid matches 3985..3985 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Hey! I think I see some of them right now!","color":"white"}]
                                                                                execute if score spiderTalk Valid matches 3985..3985 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                                #Initiate snowman fight
                                                                                  execute if score spiderTalk Valid matches 4090..4090 run tellraw @a ["",{"text":"[Objective] ","color":"green","bold":true},{"text":"Eliminate the snowmen from Decklin's cavern!","color":"none","bold":false}]
                                                                                  execute if score spiderTalk Valid matches 4090..4090 run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1000 1.5
                                                                                  execute if score spiderTalk Valid matches 4090..4090 run title @a times 20 100 20
                                                                                  execute if score spiderTalk Valid matches 4090..4090 run title @a title " "
                                                                                  execute if score spiderTalk Valid matches 4090..4090 run title @a subtitle {"text":"Eliminate the snowmen!","color":"green"}
                                                                                  execute if score spiderTalk Valid matches 4090..4090 run execute as @e[tag=stp1] at @s run summon snow_golem ~ ~ ~ {Pumpkin:0b}
                                                                                  execute if score spiderTalk Valid matches 4090..4090 run scoreboard players set snowmanActive Valid 1

                                                                                  execute as @a[limit=1] at @s if score snowmanActive Valid matches 1..1 run function tms:games/snowmanbattle
                                                                                  execute as @a at @s if score snowmanActive Valid matches ..0 run kill @e[type=silverfish]

                                                                                #Subsequenct Spider sequence
                                                                                  execute if score snowmanActive Valid matches 3..3 run scoreboard players add spiderTalk2 Valid 1

                                                                                  execute if score spiderTalk2 Valid matches 2..2 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Wow! Thank you so much for getting rid of all those pesky snowmen! I truly couldn't have done it without you!","color":"white"}]
                                                                                  execute if score spiderTalk2 Valid matches 2..2 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                                  execute if score spiderTalk2 Valid matches 100..100 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": It was no problem at all! Can I have the key now?","color":"white"}]
                                                                                  execute if score spiderTalk2 Valid matches 100..100 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                                                  execute if score spiderTalk2 Valid matches 167..167 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Pssh, no! I'm going to eat you! It'd be of no use to get your key now. Buh-bye! ","color":"white"}]
                                                                                  execute if score spiderTalk2 Valid matches 167..167 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                                  execute if score spiderTalk2 Valid matches 300..300 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": What? Why?","color":"white"}]
                                                                                  execute if score spiderTalk2 Valid matches 300..300 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                                                  execute if score spiderTalk2 Valid matches 400..400 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Well, I'm kind of hungry I guess.","color":"white"}]
                                                                                  execute if score spiderTalk2 Valid matches 400..400 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                                  execute if score spiderTalk2 Valid matches 500..500 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Can you just give me the key?","color":"white"}]
                                                                                  execute if score spiderTalk2 Valid matches 500..500 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

                                                                                  execute if score spiderTalk2 Valid matches 600..600 run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Like I said before; no! It's time you meet your destiny... destiny of death!","color":"white"}]
                                                                                  execute if score spiderTalk2 Valid matches 600..600 run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000

                                                                                  execute if score spiderTalk2 Valid matches 700..700 run scoreboard players set spiderBossActive Valid 1
                                                                                  #execute if score spiderTalk2 Valid matches 699..699 run tellraw @a ["",{"text":"[Objective] ","color":"green","bold":true},{"text":"Kill Decklin!","color":"none","bold":false}]
                                                                                  execute if score spiderBossActive Valid matches 1..1 run function tms:games/spiderboss
                                                                                  execute if score spiderTalk2 Valid matches 700..700 run scoreboard players set spiderBoss Valid 1



                                                                                  #Buttercreme
                                                                                  execute as @e[tag=creme] at @s run execute as @a[distance=..3] run scoreboard players set talkActive Buttercreme 1

                                                                                  execute if score talkActive Buttercreme matches 1..1 run scoreboard players add buttConvo Buttercreme 1


                                                                                  execute if score buttConvo Buttercreme matches 10..10 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"Hi, wanna try my pancakes?","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 10..10 run playsound minecraft:custom.gyes player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 150..150 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Hey, do you know where the third key to the Temple of Saladia is located?","color":"white"}]
                                                                                  execute if score buttConvo Buttercreme matches 150..150 run playsound minecraft:block.note_block.hat hostile @a ~ ~ ~ 1000 1


                                                                                  execute if score buttConvo Buttercreme matches 270..270 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"Yes, in fact I do. But first however, let me tell you a little story about it.","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 270..270 run playsound minecraft:custom.gohmy player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 460..460 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"So it all started a million years ago when I was born in 1922. There used to be a key-keeper, a man that had collected twenty billion keys.","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 460..460 run playsound minecraft:custom.gyes player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 660..660 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"Three of his keys were keys to the Temple of Saladia. One day, he walked up to the great temple and placed his three keys on the ground.","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 660..660 run playsound minecraft:custom.gyes player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 840..840 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"Shortly afterward, an incredibly ugly leaf monster encumbered to lift the heavy temple doors and snatched the keys. It stood in the courtyard annoyed, and told him 'C'mon bro, I was playing Xbox! Why did you have to bother me?'","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 840..840 run playsound minecraft:custom.gohmy player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 1030..1030 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"Afterward, he hid the three keys in various places throughout the world, so he could never be bothered again.","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 1030..1030 run playsound minecraft:custom.gyes player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 1120..1120 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"For some odd reason, the key keeper desperately wanted to have an in-depth conversation regarding leaves with Leefman.","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 1120..1120 run playsound minecraft:custom.gyes player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 1410..1410 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"As a result, he spent the next 30 years of his life searching for the keys, until one day, he found one -- the third key to the temple. ","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 1410..1410 run playsound minecraft:custom.gohmy player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 1600..1600 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"Unfortunately, a few days afterward the key-keeper died mysteriously, and the key was buried with him.","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 1600..1600 run playsound minecraft:custom.gohmy player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 1800..1800 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":" You may be able to find some information in the Foodersnitchelz graveyard. Actually, to make things easier for you, I'll lead you there.","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 1800..1800 run playsound minecraft:custom.gyes player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 1900..1900 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"Just let me know when you're ready to go!","color":"none"}]
                                                                                  execute if score buttConvo Buttercreme matches 1900..1900 run playsound minecraft:custom.gyes player @a ~ ~ ~ 1000


                                                                                  execute if score buttConvo Buttercreme matches 1950..1950 run tellraw @a ["",{"text":"Let's go!","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set letsGo Buttercreme 1"}}]
                                                                                  execute if score buttConvo Buttercreme matches 1950..1950 run playsound minecraft:custom.gohmy player @a ~ ~ ~ 1000
                                                                                  execute if score buttConvo Buttercreme matches 1950..1950 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000

                                                                                  execute if score letsGo Buttercreme matches 1..1 run tellraw @a ["",{"text":"Grandma Buttercreme: ","color":"red"},{"text":"Alright then. Let's get a move on! I'll show you the way!","color":"none"}]
                                                                                  execute if score letsGo Buttercreme matches 1..1 run execute as @a at @s run playsound minecraft:custom.gyes player @s ~ ~ ~ 1000


                                                                                  execute if score letsGo Buttercreme matches 1..1 run replaceitem entity @a armor.head minecraft:carved_pumpkin
                                                                                  execute if score letsGo Buttercreme matches 1..1 run playsound minecraft:custom.walk hostile @a ~ ~ ~ 1000
                                                                                  execute if score letsGo Buttercreme matches 1..1 run execute as @a at @s run playsound minecraft:custom.gyes player @s ~ ~ ~ 1000
                                                                                  execute if score letsGo Buttercreme matches 1..1 run scoreboard players set countDownTp Buttercreme 0
                                                                                  execute if score letsGo Buttercreme matches 1..1 run scoreboard players set letsGo Buttercreme 2

                                                                                  execute if score letsGo Buttercreme matches 2..2 run scoreboard players add countDownTp Buttercreme 1
                                                                                  execute if score letsGo Buttercreme matches 2..2 if score countDownTp Buttercreme matches 100..100 run stopsound @a
                                                                                  execute if score letsGo Buttercreme matches 2..2 if score countDownTp Buttercreme matches 100..100 run tp @a 6067 68 -3911
                                                                                  execute if score letsGo Buttercreme matches 2..2 if score countDownTp Buttercreme matches 100..100 run time set 18000
                                                                                  execute if score letsGo Buttercreme matches 2..2 if score countDownTp Buttercreme matches 100..100 run replaceitem entity @a armor.head minecraft:diamond_helmet
                                                                                  execute if score letsGo Buttercreme matches 2..2 if score countDownTp Buttercreme matches 100..100 run scoreboard players set letsGo Buttercreme 3
                                                                                  #execute if score letsGo Buttercreme matches 2..2 if score countDownTp Buttercreme matches 100..100 run summon husk 6149.5 70 -3926.58 {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-45F,0F],Tags:["skeleton"],HandItems:[{id:"minecraft:apple",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}]}




###############################################################################################################################################################################################################################
#######################       END OF Jungle: START GRAVEYARD    #################################################################################################################################################################################
###############################################################################################################################################################################################################################

#skeleton ShowParticles
  execute as @e[tag=skeleton] at @s run particle minecraft:block dirt 6150.32 70 -3925.51 .03 .03 .03 1 15 force
  execute as @e[tag=skeleton] at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 .5 1 force

  #Correct Horse position
    execute as @e[name=Garfunkle] at @s run tp @s 6138 70 -3933 90 0
    execute as @e[name=Gerald] at @s run tp @s 6138 70 -3931 90 0

  #start skeleton Timer
    execute as @e[tag=skeleton] at @s if score gSequence skeletonStatus matches 0..0 run execute as @a[distance=..6] at @s run scoreboard players set gSequence skeletonStatus 1
    execute if score gSequence skeletonStatus matches 1..1 run scoreboard players add gTimer skeletonStatus 1

      execute if score gTimer skeletonStatus matches 50..50 run tellraw @a ["",{"text":"Key-keeper: ","color":"light_purple"},{"text":"Welcome to the Foodersnitchelz Graveyard; the best place to... uh... stare at old rocks 'n' stuff.","color":"none"}]
      execute if score gTimer skeletonStatus matches 50..50 run playsound minecraft:custom.spook1 player @a ~ ~ ~ 1000

      execute if score gTimer skeletonStatus matches 200..200 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Who are you?","color":"white"}]
      execute if score gTimer skeletonStatus matches 200..200 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

      execute if score gTimer skeletonStatus matches 350..350 run tellraw @a ["",{"text":"Key-keeper: ","color":"light_purple"},{"text":"Why, I'm the great key-keeper! The keeper of over twenty billion keys! ","color":"none"}]
      execute if score gTimer skeletonStatus matches 350..350 run playsound minecraft:custom.spook2 player @a ~ ~ ~ 1000

      execute if score gTimer skeletonStatus matches 500..500 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Greetings. I'm here to retrieve the third key to the Temple of Saladia!","color":"white"}]
      execute if score gTimer skeletonStatus matches 500..500 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

      execute if score gTimer skeletonStatus matches 650..650 run tellraw @a ["",{"text":"Key-keeper: ","color":"light_purple"},{"text":"Ah, yes of course. I have it right here in my rib cage! However, you won't be able to leave this graveyard alive unless we settle this fair and square.","color":"none"}]
      execute if score gTimer skeletonStatus matches 650..650 run playsound minecraft:custom.spook2 player @a ~ ~ ~ 1000

      execute if score gTimer skeletonStatus matches 800..800 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Settle what?","color":"white"}]
      execute if score gTimer skeletonStatus matches 800..800 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

      execute if score gTimer skeletonStatus matches 875..875 run tellraw @a ["",{"text":"Key-keeper: ","color":"light_purple"},{"text":"You see, I spent 30 years of my life searching for those keys after Leefman scattered them throughout the world. This was the only key I could ever find, and it's been my prized possession. I won't let someone come up and take this from me without reason.","color":"none"}]
      execute if score gTimer skeletonStatus matches 875..875 run playsound minecraft:custom.spook1 player @a ~ ~ ~ 1000

      execute if score gTimer skeletonStatus matches 1050..1050 run tellraw @a ["",{"text":"Key-keeper: ","color":"light_purple"},{"text":"You're going to have to do much more to get this key from me. Thus, I challenge you to an epic duel of Rock-Paper-Scissors!","color":"none"}]
      execute if score gTimer skeletonStatus matches 1050..1050 run playsound minecraft:custom.spook1 player @a ~ ~ ~ 1000
      execute if score gTimer skeletonStatus matches 1050..1050 run execute as @e[tag=skeleton] at @s run tag @a[limit=1,tag=playingMap] add gPlaying

      execute if score gTimer skeletonStatus matches 1200..1200 run scoreboard players set gSequence skeletonStatus 3
      execute if score gTimer skeletonStatus matches 1200..1200 run scoreboard players set gTimer skeletonStatus 0

#Graveyard Key
  #1: skeleton introduction
  #2: conclusion
  #3: place items in player inventory and prepare game
  #4: round 1
  #5: round ended
  #6: end interval round

  #7: round 2
  #8: round ended
  #9: announce round

  #10: round 3
  #11: round ended
  #12: announce round

  #13: round 4
  #14: round ended
  #15: announce round

execute if score gSequence skeletonStatus matches 3..14 run effect give @a minecraft:saturation 5 255 true


              #game beginning
                execute if score gSequence skeletonStatus matches 3..3 run replaceitem entity @a[tag=gPlaying] hotbar.3 minecraft:ink_sac{display:{Name:"{\"text\":\"Rock\"}"}} 1
                execute if score gSequence skeletonStatus matches 3..3 run replaceitem entity @a[tag=gPlaying] hotbar.4 minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Paper\"}"}} 1
                execute if score gSequence skeletonStatus matches 3..3 run replaceitem entity @a[tag=gPlaying] hotbar.5 minecraft:cocoa_beans{display:{Name:"{\"text\":\"Scissors\"}"}} 1
                execute if score gSequence skeletonStatus matches 3..3 run clear @a minecraft:fermented_spider_eye
                execute if score gSequence skeletonStatus matches 3..3 run playsound minecraft:entity.armor_stand.break player @a ~ ~ ~ 1000 2
                execute if score gSequence skeletonStatus matches 3..3 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 2
                execute if score gSequence skeletonStatus matches 3..3 run title @a title ["",{"text":"Rock-Paper-Scissors","color":"red"}]
                execute if score gSequence skeletonStatus matches 3..3 run tellraw @a ["",{"text":"Rock-Paper-Scissors -- How to play:","color":"red","underlined":true}]
                execute if score gSequence skeletonStatus matches 3..3 run tellraw @a ["",{"text":"You and your opponent will choose from one of three objects -- either rock, paper or scissors. A winner will then be named based on the object played, where each object wins against another. For instance, rock 'crushes' scissors but is 'covered' by paper, which is then 'cut' by scissors. The player that plays the stronger object of the two is dubbed the winner of the match!","color":"green"}]
                #execute if score gSequence skeletonStatus matches 3..3 run scoreboard players set timer skeletonStatus 0
                execute if score gSequence skeletonStatus matches 3..3 run scoreboard players set gSequence skeletonStatus 4


                #spec. announcement
                execute if score gSequence skeletonStatus matches 4..11 run title @a actionbar ["",{"text":"Currently playing: ","color":"gray"},{"selector":"@a[tag=gPlaying]","color":"yellow"}]

                  #Round 1 GAME
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose rock!","color":"green","italic":false}]
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 1
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 5

                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose paper!","color":"green","italic":false}]
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 2
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 5

                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose scissors!","color":"green","italic":false}]
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 3
                      execute if score gSequence skeletonStatus matches 4..4 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 5



                        #round 1 conc.
                          #execute if score gSequence skeletonStatus matches 5..5 run title @a times 20 100 20
                          execute if score gSequence skeletonStatus matches 5..5 run scoreboard players add timer skeletonStatus 1
                          execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 1..1 run tellraw @a ["",{"text":"Key-keeper chose paper!","color":"light_purple","italic":false}]
                          execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 2..2 run tellraw @a ["",{"text":"Key-keeper chose scissors!","color":"light_purple","italic":false}]
                          execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 3..3 run tellraw @a ["",{"text":"Key-keeper chose rock!","color":"light_purple","italic":false}]
                          execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 40..40 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2


                          execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 101..101 run title @a times 20 100 20
                            execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 101..101 run title @a title ["",{"text":"You lose!","color":"red"}]
                            execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 101..101 run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1000
                                execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 150..150 run title @a subtitle ["",{"text":"Round 1/4","color":"green"}]
                                execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 150..150 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 0


                                      execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 220..220 run tellraw @a ["",{"text":"Key-keeper: ","color":"light_purple"},{"text":"Haha! Looks like I'm one step closer to keeping my key!","color":"none"}]
                                      execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 220..220 run playsound minecraft:custom.spook1 player @a ~ ~ ~ 1000

                                        execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 299..299 run title @a title ["",{"text":"Round 2","color":"red","italic":false,"clickEvent":{"action":"run_command","value":"/setblock 6007 64 -4198 minecraft:redstone_block"}}]
                                        execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 299..299 run playsound minecraft:entity.armor_stand.break player @a ~ ~ ~ 1000 2
                                        execute if score gSequence skeletonStatus matches 5..5 if score timer skeletonStatus matches 299..299 run scoreboard players set gSequence skeletonStatus 6
                                    execute if score timer skeletonStatus matches 300.. run scoreboard players set timer skeletonStatus 0


                                    #Round 2 GAME
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose rock!","color":"green","italic":false}]
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 1
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 7

                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose paper!","color":"green","italic":false}]
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 2
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 7

                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose scissors!","color":"green","italic":false}]
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 3
                                        execute if score gSequence skeletonStatus matches 6..6 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 7



                                          #round 2 conc.
                                            #execute if score gSequence skeletonStatus matches 7..7 run title @a times 20 100 20
                                            execute if score gSequence skeletonStatus matches 7..7 run scoreboard players add timer skeletonStatus 1
                                            execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 1..1 run tellraw @a ["",{"text":"Key-keeper chose scissors!","color":"light_purple","italic":false}]
                                            execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 2..2 run tellraw @a ["",{"text":"Key-keeper chose rock!","color":"light_purple","italic":false}]
                                            execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 3..3 run tellraw @a ["",{"text":"Key-keeper chose paper!","color":"light_purple","italic":false}]
                                            execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 40..40 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2


                                              execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 101..101 run title @a times 20 100 20
                                              execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 101..101 run title @a title ["",{"text":"You win!","color":"green"}]
                                              execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 101..101 run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1000 1.3
                                                  execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 150..150 run title @a subtitle ["",{"text":"Round 2/4","color":"green"}]
                                                  execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 150..150 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 0

                                                          execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 225..225 run title @a title ["",{"text":"Round 3","color":"red","italic":false,"clickEvent":{"action":"run_command","value":"/setblock 6007 64 -4198 minecraft:redstone_block"}}]
                                                          execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 225..225 run title @a subtitle ["",{"text":"  ","color":"green"}]
                                                          execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 225..225 run playsound minecraft:entity.armor_stand.break player @a ~ ~ ~ 1000 2
                                                          execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 225..225 run scoreboard players set gSequence skeletonStatus 8
                                                          execute if score gSequence skeletonStatus matches 7..7 if score timer skeletonStatus matches 225..225 run scoreboard players set timer skeletonStatus 0




                                                      #Round 3 GAME
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose rock!","color":"green","italic":false}]
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 1
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set timer skeletonStatus 0
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 9


                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose paper!","color":"green","italic":false}]
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 2
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set timer skeletonStatus 0
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 9


                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose scissors!","color":"green","italic":false}]
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 3
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set timer skeletonStatus 0
                                                          execute if score gSequence skeletonStatus matches 8..8 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 9




                                                            #round 3 conc.
                                                              #execute if score gSequence skeletonStatus matches 9..9 run title @a times 20 100 20

                                                              execute if score gSequence skeletonStatus matches 9..9 run scoreboard players add timer skeletonStatus 1
                                                              execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 1..1 run tellraw @a ["",{"text":"Key-keeper chose scissors!","color":"light_purple","italic":false}]
                                                              execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 2..2 run tellraw @a ["",{"text":"Key-keeper chose rock!","color":"light_purple","italic":false}]
                                                              execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 3..3 run tellraw @a ["",{"text":"Key-keeper chose paper!","color":"light_purple","italic":false}]
                                                              execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 40..40 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2


                                                                execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 101..101 run title @a times 20 100 20
                                                                execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 101..101 run title @a title ["",{"text":"You win!","color":"green"}]
                                                                execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 101..101 run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1000 1.3
                                                                    execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 150..150 run title @a subtitle ["",{"text":"Round 3/4","color":"green"}]
                                                                    execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 150..150 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 0

                                                                            execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 225..225 run title @a title ["",{"text":"Round 4","color":"red","italic":false,"clickEvent":{"action":"run_command","value":"/setblock 6007 64 -4198 minecraft:redstone_block"}}]
                                                                            execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 225..225 run title @a subtitle ["",{"text":"  ","color":"green"}]
                                                                            execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 225..225 run playsound minecraft:entity.armor_stand.break player @a ~ ~ ~ 1000 2
                                                                            execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 225..225 run scoreboard players set gSequence skeletonStatus 10
                                                                            execute if score gSequence skeletonStatus matches 9..9 if score timer skeletonStatus matches 225..225 run scoreboard players set timer skeletonStatus 0





                                                                        #Round 4 GAME
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose rock!","color":"green","italic":false}]
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 1
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set timer skeletonStatus 0
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 11

                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose paper!","color":"green","italic":false}]
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 2
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set timer skeletonStatus 0
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 11

                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run tellraw @a ["",{"text":"You chose scissors!","color":"green","italic":false}]
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set selectedItem skeletonStatus 3
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set timer skeletonStatus 0
                                                                            execute if score gSequence skeletonStatus matches 10..10 if score @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}},limit=1,tag=gPlaying] hasClicked matches 1.. run scoreboard players set gSequence skeletonStatus 11



                                                                              #round 4 conc.
                                                                                #execute if score gSequence skeletonStatus matches 11..11 run title @a times 20 100 20
                                                                                execute if score gSequence skeletonStatus matches 11..11 run scoreboard players add timer skeletonStatus 1
                                                                                execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 1..1 run tellraw @a ["",{"text":"Key-keeper chose scissors!","color":"light_purple","italic":false}]
                                                                                execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 2..2 run tellraw @a ["",{"text":"Key-keeper chose rock!","color":"light_purple","italic":false}]
                                                                                execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 40..40 if score selectedItem skeletonStatus matches 3..3 run tellraw @a ["",{"text":"Key-keeper chose paper!","color":"light_purple","italic":false}]
                                                                                execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 40..40 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2


                                                                                  execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 101..101 run title @a times 20 100 20
                                                                                  execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 101..101 run title @a title ["",{"text":"You win!","color":"green"}]
                                                                                  execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 101..101 run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1000 1.3
                                                                                      execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 150..150 run title @a subtitle ["",{"text":"Round 4/4","color":"green"}]
                                                                                      execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 150..150 run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1000 0

                                                                                              execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 225..225 run scoreboard players set gSequence skeletonStatus 12
                                                                                              execute if score gSequence skeletonStatus matches 11..11 if score timer skeletonStatus matches 225..225 run scoreboard players set timer skeletonStatus 0

                                                                                  #skeleton conclusion
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run clear @a
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run data merge entity @e[tag=skeleton,limit=1] {HandItems:[{id:"minecraft:pumpkin_seeds",Count:1b}]}
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run summon item 6148 70 -3928 {Age:-2147483648,Tags:["key 3"],Item:{id:"minecraft:fermented_spider_eye",Count:1b,tag:{display:{Name:"{\"text\":\"Temple Key 3\"}"}}}}
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run give @a[limit=1] minecraft:fermented_spider_eye{display:{Name:"{\"text\":\"Temple Key 1\"}"}} 1
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run give @a[limit=1] minecraft:fermented_spider_eye{display:{Name:"{\"text\":\"Temple Key 2\"}"}} 1
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run give @a minecraft:diamond_sword 1
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run playsound minecraft:voices.pop player @a ~ ~ ~ 1000 2
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run tag @a remove gPlaying
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run tellraw @a ["",{"text":"Key-keeper: ","color":"light_purple"},{"text":"Oh no! You beat me! Oh well... the key is all yours. May I ask, why exactly do you need this key?","color":"none"}]
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run playsound minecraft:custom.spook2 player @a ~ ~ ~ 1000
                                                                                    execute if score gSequence skeletonStatus matches 12..12 run scoreboard players set gSequence skeletonStatus 13
                                                                                        execute if score gSequence skeletonStatus matches 13..13 run replaceitem entity @a armor.chest minecraft:diamond_chestplate
                                                                                        execute if score gSequence skeletonStatus matches 13..13 run replaceitem entity @a armor.feet minecraft:diamond_boots
                                                                                        execute if score gSequence skeletonStatus matches 13..13 run replaceitem entity @a armor.head minecraft:diamond_helmet
                                                                                        execute if score gSequence skeletonStatus matches 13..13 run replaceitem entity @a armor.legs minecraft:diamond_leggings

                                                                                            #chatting thing
                                                                                                execute if score gSequence skeletonStatus matches 13..13 run scoreboard players add subSkelTalk skeletonStatus 1
                                                                                                execute if score gSequence skeletonStatus matches 13..13 if score subSkelTalk skeletonStatus matches 120..120 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Leefman took my friend's sandwich and brought it to his temple. I need to take back what's rightfully ours!","color":"white"}]
                                                                                                execute if score gSequence skeletonStatus matches 13..13 if score subSkelTalk skeletonStatus matches 120..120 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1
                                                                                                  execute if score gSequence skeletonStatus matches 13..13 if score subSkelTalk skeletonStatus matches 240..240 run tellraw @a ["",{"text":"Key-keeper: ","color":"light_purple"},{"text":"I see. If you continue to follow the North Road, you'll end up at the temple. Once you're in the courtyard, throw all three keys onto the key block. Good luck! ","color":"none"}]
                                                                                                  execute if score gSequence skeletonStatus matches 13..13 if score subSkelTalk skeletonStatus matches 240..240 run playsound minecraft:custom.spook2 player @a ~ ~ ~ 1000
                                                                                                  execute if score gSequence skeletonStatus matches 13..13 if score subSkelTalk skeletonStatus matches 250..250 run scoreboard players set gSequence skeletonStatus 14
                                                                                                  execute if score gSequence skeletonStatus matches 14..14 run execute positioned 6143.5 63 -3999.5 at @a[distance=..3] run tp @a -13132.5 78 1230.5
                                                                                                  execute if score gSequence skeletonStatus matches 14..14 run execute positioned 6143.5 63 -3999.5 at @a[distance=..3] run time set 6000

                                                                                              #fix tp bug
                                                                                                execute if score gSequence skeletonStatus matches 14..14 run execute as @a[x=-13132,y=78,z=1230,distance=..4] at @s run tp @a -13132.5 80 1230.5
                                                                                                execute if score gSequence skeletonStatus matches 14..14 run execute as @a[x=-13132,y=78,z=1230,distance=..4] at @s run time set 6000
                                                                                                    #execute if score gSequence skeletonStatus matches 14..14 run execute as @a[x=-13132,y=78,z=1230,distance=..4] at @s run tellraw @s ["",{"text":"*Hint* Throw your keys onto the key block in the temple courtyard!","color":"yellow"}]
                                                                                                    #execute if score gSequence skeletonStatus matches 14..14 run execute as @a[x=-13132,y=78,z=1230,distance=..4] at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 2
                                                                                                execute if score gSequence skeletonStatus matches 14..14 run execute as @a[x=-13132,y=80,z=1230,distance=..3] at @s run scoreboard players set gSequence skeletonStatus 15



                                                                                              execute if score gSequence skeletonStatus matches 15.. run time set 6000

                      #clicker acquisition
                      scoreboard players set @a clickDetection 0
                      execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] at @s run scoreboard players set @s clickDetection 1
                        execute as @a[tag=gPlaying,scores={clickDetection=0}] at @s if score gSequence skeletonStatus matches 3..11 run replaceitem entity @a[tag=gPlaying] weapon.offhand minecraft:carrot_on_a_stick

                        #item acquisition


                        #click detection
                          execute if score gSequence skeletonStatus matches 1..2 run clear @a minecraft:carrot_on_a_stick
                          #execute as @a if score @s hasClicked matches 1.. run say so and so just clicked!
                          execute as @a if score @s hasClicked matches 1.. run scoreboard players set @s hasClicked 0


###############################################################################################################################################################################################################################
#######################       END OF Graveyard: START Temple    #################################################################################################################################################################################
###############################################################################################################################################################################################################################

#LeefMan Key
  #1: summon key animation
  #2: teleport key and firework
  #3: interlude
  #4: close door behind player
  #5: leefman sequence 1
  #6: minion battle interlude (with minion counter)
  #7: good leaf minion summon
  #8: good leaf minion talking
  #9: interlude walk into vault
  #10: leefman sequence 2
  #11: leefman battle setup
  #12: leefman battle
  #13: end leefman battle setup
  #14: sandwich rise animation
  #15: give player sandwich
  #16: player talks about sandwich. Start sandwichAni & tp to lab. Pickle talk 1.
  #17: interlude
  #18: detect if sandwich on pedestal
  #19: fireworks. begin endTimer
  #20:

  #key count at temple
    scoreboard players set total keyCount 0
    execute as @e[x=-13154,y=80,z=1230,distance=..2,type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}}] at @s run scoreboard players set @s keyCount 1
    scoreboard players operation total keyCount += @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}}] keyCount

    #adds to the keySpawn clock
      execute if score total keyCount matches 3..3 run scoreboard players set tSequence templeSequence 1
      execute if score total keyCount matches 3..3 run kill @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}}]
      execute if score tSequence templeSequence matches 1..1 run scoreboard players add keySpawn templeSequence 1

      #summon keys
        #1
          execute if score keySpawn templeSequence matches 30..30 run execute as @a at @s run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1000
          execute if score keySpawn templeSequence matches 30..30 run execute as @a at @s run playsound minecraft:block.end_gateway.spawn player @s ~ ~ ~ 1000
          execute if score keySpawn templeSequence matches 30..30 run summon armor_stand -13155 81 1228 {Tags:["1stand"],Invisible:1,Passengers:[{id:"item",Tags:["1key"],Item:{id:"minecraft:fermented_spider_eye",Count:1b},PickupDelay:32767}]}
          execute if score keySpawn templeSequence matches 30..30 run execute as @e[tag=1stand] at @s run particle end_rod ~ ~2 ~ .25 .25 .25 .1 5

          #2
            execute if score keySpawn templeSequence matches 70..70 run execute as @a at @s run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1000
            execute if score keySpawn templeSequence matches 70..70 run execute as @a at @s run playsound minecraft:block.end_gateway.spawn player @s ~ ~ ~ 1000
            execute if score keySpawn templeSequence matches 70..70 run summon armor_stand -13155 81 1230 {Tags:["2stand"],Invisible:1,Passengers:[{id:"item",Tags:["2key"],Item:{id:"minecraft:fermented_spider_eye",Count:1b},PickupDelay:32767}]}
            execute if score keySpawn templeSequence matches 70..70 run execute as @e[tag=2stand] at @s run particle end_rod ~ ~2 ~ .25 .25 .25 .1 5

            #3
              execute if score keySpawn templeSequence matches 110..110 run execute as @a at @s run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1000
              execute if score keySpawn templeSequence matches 110..110 run execute as @a at @s run playsound minecraft:block.end_gateway.spawn player @s ~ ~ ~ 1000
              execute if score keySpawn templeSequence matches 110..110 run summon armor_stand -13155 81 1232 {Tags:["3stand"],Invisible:1,Passengers:[{id:"item",Tags:["3key"],Item:{id:"minecraft:fermented_spider_eye",Count:1b},PickupDelay:32767}]}
              execute if score keySpawn templeSequence matches 110..110 run execute as @e[tag=3stand] at @s run particle end_rod ~ ~2 ~ .25 .25 .25 .1 5
              execute if score keySpawn templeSequence matches 110..110 run function tms:tools/summontemple

              #tp door
                execute if score keySpawn templeSequence matches 150..150 run execute as @a at @s run playsound minecraft:custom.unnfect player @s ~ ~ ~ 1000 0
                execute if score keySpawn templeSequence matches 150..150 run execute as @a at @s run scoreboard players set teleportTimer templeSequence 1


                #scoreboard players add teleportTimer templeSequence 1
                execute if score teleportTimer templeSequence matches 1.. run execute as @e[tag=2stand] at @s run tp ~-.1 ~.03 ~
                execute if score teleportTimer templeSequence matches 1.. run execute as @e[tag=1stand] at @s run tp ~-.1 ~.03 ~.02
                execute if score teleportTimer templeSequence matches 1.. run execute as @e[tag=3stand] at @s run tp ~-.1 ~.03 ~-.02
                execute as @e[x=-13164,y=85,z=1230,distance=..3,type=item] run scoreboard players set teleportTimer templeSequence 0
                execute as @e[x=-13164,y=85,z=1230,distance=..3,type=item] run scoreboard players set tSequence templeSequence 2
                execute if score tSequence templeSequence matches 2..2 run kill @e[tag=1stand]
                execute if score tSequence templeSequence matches 2..2 run kill @e[tag=1key]
                execute if score tSequence templeSequence matches 2..2 run kill @e[tag=2stand]
                execute if score tSequence templeSequence matches 2..2 run kill @e[tag=2key]
                execute if score tSequence templeSequence matches 2..2 run kill @e[tag=3stand]
                execute if score tSequence templeSequence matches 2..2 run kill @e[tag=3key]
                execute if score tSequence templeSequence matches 2..2 run kill @e[tag=3stand]

                execute if score tSequence templeSequence matches 2..2 run summon firework_rocket -13163 84 1230 {Life:5,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;1009950,16777215]}]}}}}
                execute if score tSequence templeSequence matches 2..2 run execute as @a at @s run playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 1000
                execute if score tSequence templeSequence matches 2..2 run execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle player @s ~ ~ ~ 1000
                execute if score tSequence templeSequence matches 2..2 run execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1000
                execute if score tSequence templeSequence matches 2..2 run scoreboard players set doorStatus templeSequence 1
                 execute if score tSequence templeSequence matches 2..2 run scoreboard players set tSequence templeSequence 3

          #circle particles
          particle minecraft:totem_of_undying -13154 81 1230.50 .5 .5 .5 .05 1 force
            scoreboard players add @e[tag=circle_flame] flameTimer 1
            scoreboard players add @e[tag=circle_flame] flameTimer 1
              execute as @e[tag=circle_flame,scores={flameTimer=1}] at @s run particle flame ~-1 ~ ~0 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=2}] at @s run particle flame ~-1 ~ ~-0.07 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=3}] at @s run particle flame ~-0.99 ~ ~-0.14 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=4}] at @s run particle flame ~-0.98 ~ ~-0.21 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=5}] at @s run particle flame ~-0.96 ~ ~-0.28 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=6}] at @s run particle flame ~-0.94 ~ ~-0.34 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=7}] at @s run particle flame ~-0.91 ~ ~-0.41 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=8}] at @s run particle flame ~-0.88 ~ ~-0.47 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=9}] at @s run particle flame ~-0.85 ~ ~-0.53 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=10}] at @s run particle flame ~-0.81 ~ ~-0.59 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=11}] at @s run particle flame ~-0.77 ~ ~-0.64 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=12}] at @s run particle flame ~-0.72 ~ ~-0.69 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=13}] at @s run particle flame ~-0.67 ~ ~-0.74 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=14}] at @s run particle flame ~-0.62 ~ ~-0.79 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=15}] at @s run particle flame ~-0.56 ~ ~-0.83 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=16}] at @s run particle flame ~-0.5 ~ ~-0.87 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=17}] at @s run particle flame ~-0.44 ~ ~-0.9 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=18}] at @s run particle flame ~-0.37 ~ ~-0.93 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=19}] at @s run particle flame ~-0.31 ~ ~-0.95 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=20}] at @s run particle flame ~-0.24 ~ ~-0.97 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=21}] at @s run particle flame ~-0.17 ~ ~-0.98 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=22}] at @s run particle flame ~-0.1 ~ ~-0.99 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=23}] at @s run particle flame ~-0.03 ~ ~-1 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=24}] at @s run particle flame ~0.03 ~ ~-1 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=25}] at @s run particle flame ~0.1 ~ ~-0.99 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=26}] at @s run particle flame ~0.17 ~ ~-0.98 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=27}] at @s run particle flame ~0.24 ~ ~-0.97 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=28}] at @s run particle flame ~0.31 ~ ~-0.95 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=29}] at @s run particle flame ~0.37 ~ ~-0.93 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=30}] at @s run particle flame ~0.44 ~ ~-0.9 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=31}] at @s run particle flame ~0.5 ~ ~-0.87 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=32}] at @s run particle flame ~0.56 ~ ~-0.83 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=33}] at @s run particle flame ~0.62 ~ ~-0.79 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=34}] at @s run particle flame ~0.67 ~ ~-0.74 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=35}] at @s run particle flame ~0.72 ~ ~-0.69 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=36}] at @s run particle flame ~0.77 ~ ~-0.64 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=37}] at @s run particle flame ~0.81 ~ ~-0.59 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=38}] at @s run particle flame ~0.85 ~ ~-0.53 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=39}] at @s run particle flame ~0.88 ~ ~-0.47 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=40}] at @s run particle flame ~0.91 ~ ~-0.41 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=41}] at @s run particle flame ~0.94 ~ ~-0.34 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=42}] at @s run particle flame ~0.96 ~ ~-0.28 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=43}] at @s run particle flame ~0.98 ~ ~-0.21 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=44}] at @s run particle flame ~0.99 ~ ~-0.14 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=45}] at @s run particle flame ~1 ~ ~-0.07 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=46}] at @s run particle flame ~1 ~ ~-0 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=47}] at @s run particle flame ~1 ~ ~0.07 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=48}] at @s run particle flame ~0.99 ~ ~0.14 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=49}] at @s run particle flame ~0.98 ~ ~0.21 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=50}] at @s run particle flame ~0.96 ~ ~0.28 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=51}] at @s run particle flame ~0.94 ~ ~0.34 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=52}] at @s run particle flame ~0.91 ~ ~0.41 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=53}] at @s run particle flame ~0.88 ~ ~0.47 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=54}] at @s run particle flame ~0.85 ~ ~0.53 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=55}] at @s run particle flame ~0.81 ~ ~0.59 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=56}] at @s run particle flame ~0.77 ~ ~0.64 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=57}] at @s run particle flame ~0.72 ~ ~0.69 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=58}] at @s run particle flame ~0.67 ~ ~0.74 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=59}] at @s run particle flame ~0.62 ~ ~0.79 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=60}] at @s run particle flame ~0.56 ~ ~0.83 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=61}] at @s run particle flame ~0.5 ~ ~0.87 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=62}] at @s run particle flame ~0.44 ~ ~0.9 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=63}] at @s run particle flame ~0.37 ~ ~0.93 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=64}] at @s run particle flame ~0.31 ~ ~0.95 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=65}] at @s run particle flame ~0.24 ~ ~0.97 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=66}] at @s run particle flame ~0.17 ~ ~0.98 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=67}] at @s run particle flame ~0.1 ~ ~0.99 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=68}] at @s run particle flame ~0.03 ~ ~1 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=69}] at @s run particle flame ~-0.03 ~ ~1 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=70}] at @s run particle flame ~-0.1 ~ ~0.99 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=71}] at @s run particle flame ~-0.17 ~ ~0.98 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=72}] at @s run particle flame ~-0.24 ~ ~0.97 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=73}] at @s run particle flame ~-0.31 ~ ~0.95 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=74}] at @s run particle flame ~-0.37 ~ ~0.93 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=75}] at @s run particle flame ~-0.44 ~ ~0.9 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=76}] at @s run particle flame ~-0.5 ~ ~0.87 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=77}] at @s run particle flame ~-0.56 ~ ~0.83 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=78}] at @s run particle flame ~-0.62 ~ ~0.79 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=79}] at @s run particle flame ~-0.67 ~ ~0.74 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=80}] at @s run particle flame ~-0.72 ~ ~0.69 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=81}] at @s run particle flame ~-0.77 ~ ~0.64 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=82}] at @s run particle flame ~-0.81 ~ ~0.59 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=83}] at @s run particle flame ~-0.85 ~ ~0.53 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=84}] at @s run particle flame ~-0.88 ~ ~0.47 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=85}] at @s run particle flame ~-0.91 ~ ~0.41 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=86}] at @s run particle flame ~-0.94 ~ ~0.34 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=87}] at @s run particle flame ~-0.96 ~ ~0.28 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=88}] at @s run particle flame ~-0.98 ~ ~0.21 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=89}] at @s run particle flame ~-0.99 ~ ~0.14 0 0 0 0.05 0 force
              execute as @e[tag=circle_flame,scores={flameTimer=90}] at @s run particle flame ~-1 ~ ~0.07 0 0 0 0.05 0 force
                execute as @e[tag=circle_flame,scores={flameTimer=90..}] at @s run scoreboard players set @e[tag=circle_flame] flameTimer 0


            #open door
              execute if score doorStatus templeSequence matches 1..1 run execute as @e[tag=GateStand] at @s run tp @s ~ ~.05 ~
              execute if score doorStatus templeSequence matches 1..1 run setblock -13188 101 1235 minecraft:redstone_block
              execute if score doorStatus templeSequence matches 1..1 as @e[tag=GateStand] at @s if block ~ ~1 ~ minecraft:stone_slab run stopsound @a player minecraft:custom.bmove
              #execute if score doorStatus templeSequence matches 1..1 as @e[tag=GateStand] at @s if block ~ ~1 ~ minecraft:stone_slab run execute as @a at @s run playsound minecraft:block.chest.open player @s ~ ~ ~ 1000
              execute if score doorStatus templeSequence matches 1..1 as @e[tag=GateStand] at @s if block ~ ~1 ~ minecraft:stone_slab run execute as @a at @s run playsound minecraft:entity.iron_golem.hurt player @s ~ ~ ~ 0.8 0.6 1
              execute if score doorStatus templeSequence matches 1..1 as @e[tag=GateStand] at @s if block ~ ~1 ~ minecraft:stone_slab run fill -13165 85 1231 -13165 83 1229 air
              execute if score doorStatus templeSequence matches 1..1 as @e[tag=GateStand] at @s if block ~ ~1 ~ minecraft:stone_slab run scoreboard players set doorStatus templeSequence 0

              #close door
                execute if score doorStatus templeSequence matches 2..2 run execute as @e[tag=GateStand] at @s run tp @s ~ ~-.05 ~
                execute if score doorStatus templeSequence matches 2..2 run setblock -13188 101 1235 minecraft:redstone_block
                execute if score doorStatus templeSequence matches 2..2 as @e[tag=GateStand] at @s if block ~ ~-1 ~ minecraft:gold_block run stopsound @a player minecraft:custom.bmove
                #execute if score doorStatus templeSequence matches 2..2 as @e[tag=GateStand] at @s if block ~ ~-1 ~ minecraft:gold_block run execute as @a at @s run playsound minecraft:block.chest.open player @s ~ ~ ~ 1000
                execute if score doorStatus templeSequence matches 2..2 as @e[tag=GateStand] at @s if block ~ ~-1 ~ minecraft:gold_block run execute as @a at @s run playsound minecraft:entity.iron_golem.hurt player @s ~ ~ ~ 0.8 0.6 1
                execute if score doorStatus templeSequence matches 2..2 as @e[tag=GateStand] at @s if block ~ ~-1 ~ minecraft:gold_block run fill -13165 85 1231 -13165 83 1229 barrier
                execute if score doorStatus templeSequence matches 2..2 as @e[tag=GateStand] at @s if block ~ ~-1 ~ minecraft:gold_block run scoreboard players set doorStatus templeSequence 0
                execute if score doorStatus templeSequence matches 0..0 run setblock -13188 101 1235 air


                  #close temple door behind
                    execute if score tSequence templeSequence matches 3..3 run execute as @a[x=-13173,y=84,z=1230,distance=..4] at @s run scoreboard players set tSequence templeSequence 4
                    execute if score tSequence templeSequence matches 4..4 run execute as @a[x=-13173,y=84,z=1230,distance=..4] at @s run tp @a @s
                    execute if score tSequence templeSequence matches 4..4 run execute as @a[x=-13173,y=84,z=1230,distance=..4] at @s run scoreboard players set doorStatus templeSequence 2
                    execute if score tSequence templeSequence matches 4..4 run execute as @a[x=-13173,y=84,z=1230,distance=..4] at @s run spawnpoint @a -13173 84 1230
                    execute if score tSequence templeSequence matches 4..4 run scoreboard players set tSequence templeSequence 5


                    #Leefman Talks
                    effect clear @e[tag=leefman2]
                    #data merge entity @e[tag=leefman2,limit=1] {{Name:generic.followRange,Base:150}]}
                      execute if score tSequence templeSequence matches 5..5 run scoreboard players add leefMan templeSequence 1
                      execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1..1 run execute as @a at @s run playsound minecraft:voices.angryleef1 player @s ~ ~ ~ 1000
                      execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1..1 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"Oh come on, how did you get in here! I spent all that time trying to make sure nobody could unlock the door, and here you are -- just casually standing in the doorway. Ugh.","color":"none"}]
                      execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1..1 run scoreboard players set bossHeadOn templeSequence 1

                        execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 236..236 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Your time is up Leefman, give us the sandwich!","color":"white"}]
                        execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 236..236 run execute as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1000
                        execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 236..236 run scoreboard players set bossHeadOn templeSequence 0

                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 285..285 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"Wait, like the sandwich I stole from you this morning?","color":"none"}]
                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 285..285 run scoreboard players set bossHeadOn templeSequence 1

                            execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 349..349 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"Yeah, it's locked in the vault behind me. But don't go in there! I am preparing it so I can eat it! Haha, I bet you didn't expect that one coming!","color":"none"}]


                                execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 520..520 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": What are you talking about?","color":"white"}]
                                execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 520..520 run execute as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1000
                                execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 520..520 run scoreboard players set bossHeadOn templeSequence 0

                                    execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 596..596 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"Yes! I was actually planning to eat it all along.","color":"none"}]
                                    execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 596..596 run scoreboard players set bossHeadOn templeSequence 1

                                    execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 667..667 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"I knew how delicious Dr. Pickle's sandwiches are, and after hearing that he had the best sandwich in the universe stored in his basement, I knew I just had to get my hands on it!","color":"none"}]
                                    execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 873..873 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"And so I did. Today, I will eat it, and there is absolutely nothing you can do about it! Haha!","color":"none"}]
                                      execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1000..1000 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"Minions, attack!","color":"none"}]
                                        execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1040..1040 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"Now I will go into the vault and eat the sandwich. Have fun stopping me now!","color":"none"}]
                                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1160..1160 run execute as @a at @s run playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 1000 1
                                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1160..1160 run particle end_rod -13199 85 1230 1 1 1 .1 25 force
                                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1160..1160 run particle minecraft:item_slime -13199 85 1230 1 1 1 .1 25 force
                                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1160..1160 run execute as @e[tag=leefman2] at @s run tp @s ~ ~-20 ~
                                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1160..1160 run execute as @e[tag=minion] at @s run data merge entity @s {NoAI:0,Invulnerable:0,Attributes:[{Name:generic.followRange,Base:50}],Silent:0}
                                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1200..1200 run kill @e[tag=leefman2]
                                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1200..1200 run scoreboard players set bossHeadOn templeSequence 3
                                          execute if score tSequence templeSequence matches 5..5 if score leefMan templeSequence matches 1200..1200 run scoreboard players set tSequence templeSequence 6

                            #minion Counting
                              execute if score tSequence templeSequence matches 6..6 run scoreboard players set total minCounter 0
                              execute if score tSequence templeSequence matches 6..6 run scoreboard players set @e[tag=minion] minCounter 1
                              execute if score tSequence templeSequence matches 6..6 run scoreboard players operation total minCounter += @e[tag=minion] minCounter
                              execute if score tSequence templeSequence matches 6..6 run effect clear @a minecraft:saturation
                                  execute if score tSequence templeSequence matches 6..6 if score total minCounter matches 0..0 run scoreboard players set tSequence templeSequence 7
                                  execute if score tSequence templeSequence matches 7..7 run setblock -13216 82 1224 minecraft:redstone_block
                                  execute if score tSequence templeSequence matches 7..7 run execute as @a at @s run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1000 .4
                                  execute if score tSequence templeSequence matches 7..7 run summon zombie_villager -13211 83 1233 {CustomName:"{\"text\":\"Harold The Good Leaf Minion\"}",Tags:["minion"],Attributes:[{Name:generic.followRange,Base:0}],Rotation:[180f,0f],Silent:1,Invulnerable:1b}
                                  execute if score tSequence templeSequence matches 7..7 run scoreboard players set tSequence templeSequence 8
                                    execute if score tSequence templeSequence matches 8..8 as @e[tag=minion] at @s run execute as @a[distance=..4] at @s run tellraw @a ["",{"text":"Harold The Good Leaf Minion: ","color":"dark_green"},{"text":"I opened Leefman's vault door when he wasn't looking. I've seen your sandwich in here. Quick! Jump in before he returns!","color":"none"}]
                                    execute if score tSequence templeSequence matches 8..8 as @e[tag=minion] at @s run execute as @a[distance=..4] at @s run execute as @a at @s run playsound minecraft:entity.zombie_villager.hurt player @s ~ ~ ~ 1000
                                    execute if score tSequence templeSequence matches 8..8 run scoreboard players set leefMan templeSequence 0
                                    execute if score tSequence templeSequence matches 8..8 as @e[tag=minion] at @s run execute as @a[distance=..4] at @s run scoreboard players set tSequence templeSequence 9

                                      #Final Leefman convo.
                                      execute if score tSequence templeSequence matches 9..9 run execute as @a[x=-13269,y=60,z=1230,distance=..4] at @s run tp @a @s
                                        execute if score tSequence templeSequence matches 9..9 run execute as @a[x=-13269,y=60,z=1230,distance=..4] at @s run scoreboard players set tSequence templeSequence 10
                                          execute if score tSequence templeSequence matches 10..10 run scoreboard players add leefMan templeSequence 1
                                            execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 1..1 run particle end_rod -13269 61 1230 1 1 1 .1 25 force
                                            execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 1..1 run particle item_slime -13269 60 1230 2 2 2 5 50 force
                                            execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 5..5 run setblock -13216 80 1222 minecraft:redstone_block
                                            execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 1..1 run summon enderman -13269 59.5 1230 {CustomName:"{\"text\":\"Leefman\"}",Tags:["leefman2"],Attributes:[{Name:generic.followRange,Base:0}],Invulnerable:1b,PersistenceRequired:1,Silent:1,NoAI:1}
                                            execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 1..1 run execute as @a at @s run playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 1000 1
                                            execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 1..1 run execute as @a at @s run playsound minecraft:voices.angryleef2 player @s ~ ~ ~ 1000
                                              execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 1..1 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"How did you get in this vault? I thought it was like, super secure!","color":"none"}]

                                              execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 1..87 run scoreboard players set bossHeadOn templeSequence 1

                                              execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 87..87 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"Did one of my minions turn against me and let you in or something?","color":"none"}]
                                                execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 160..160 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Maybe...","color":"white"}]
                                                execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 160..160 run execute as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1000

                                                execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 160..160 run scoreboard players set bossHeadOn templeSequence 0

                                                  execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 196..196 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"Darn! I bet it was Harold. Harold always screws everything up and makes my life miserable!","color":"none"}]
                                                    execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 311..311 run tellraw @a ["",{"text":"Leefman: ","color":"dark_green"},{"text":"I will have to deal with him later. But first, I will have to deal with you. Bwhahahahaha!","color":"none"}]
                                                    execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 196..400 run scoreboard players set bossHeadOn templeSequence 1
                                                      execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 401.. run scoreboard players set bossHeadOn templeSequence 4
                                                        execute if score tSequence templeSequence matches 10..10 if score leefMan templeSequence matches 414..414 run scoreboard players set tSequence templeSequence 11

                                    #Battle Mechanics
                                      execute if score tSequence templeSequence matches 11..12 run scoreboard players set @a Music 0
                                      execute if score tSequence templeSequence matches 11..16 run stopsound @a player minecraft:custom.templemusic
                                        #Temple Boss Music
                                          execute if score tSequence templeSequence matches 11..12 run scoreboard players add bossMusic templeSequence 1
                                          execute if score tSequence templeSequence matches 11..12 if score bossMusic templeSequence matches 5..5 run execute as @a at @s run playsound minecraft:custom.firecastle player @s ~ ~ ~ 1000
                                          execute if score tSequence templeSequence matches 11..12 if score bossMusic templeSequence matches 2365..2365 run scoreboard players reset bossMusic templeSequence

                                          execute if score tSequence templeSequence matches 11..12 run scoreboard players set canFall Valid 1
                                            #boss fight setup
                                              execute if score tSequence templeSequence matches 11..11 run title @a times 20 100 20
                                              execute if score tSequence templeSequence matches 11..11 run execute as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1000 2
                                              execute if score tSequence templeSequence matches 11..11 run execute as @a at @s run title @a title ["",{"text":"Destroy Leefman!","color":"red","bold":true}]
                                              execute if score tSequence templeSequence matches 11..11 run data merge entity @e[tag=leefman2,limit=1] {Glowing:0,Attributes:[{Name:generic.maxHealth,Base:160},{Name:generic.followRange,Base:150}],Health:150.0f,Invulnerable:0,NoAI:0}
                                              execute if score tSequence templeSequence matches 11..11 run spawnpoint @a -13251 59 1230
                                              execute if score tSequence templeSequence matches 11..11 run scoreboard players set tSequence templeSequence 12
                                                #game projectiles
                                                  execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1000..1000 run summon minecraft:wither -13272 65 1230 {CustomName:"{\"text\":\"   \"}",Tags:["TNT"],Invulnerable:1b,Silent:1,ActiveEffects:[{Id:14b,Amplifier:255b,Duration:100000,ShowParticles:0b}]}
                                                  execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1000..1000 run execute as @a at @s run playsound minecraft:entity.illusioner.prepare_mirror player @s ~ ~ ~ 1000
                                                  execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1000..1000 run data merge entity @e[tag=leefman2,limit=1] {Invulnerable:1b}
                                                  execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1000..1000 run execute as @e[tag=bminion] at @s run data merge entity @s {Invulnerable:1b}
                                                  execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 0..0 run data merge entity @e[tag=leefman2,limit=1] {Invulnerable:0}
                                                  execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1500..1500 run data merge entity @e[tag=leefman2,limit=1] {Invulnerable:0}
                                                  execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1500..1500 run kill @e[tag=TNT]
                                                    execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1500..1500 run execute as @e[tag=bminion] at @s run particle minecraft:end_rod ~ ~ ~ .01 .01 .01 .15 30
                                                    execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1500..1500 run kill @e[tag=bminion]
                                                    #Minions
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 200..200 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 400..400 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 600..600 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 800..800 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1000..1000 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1200..1200 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1400..1400 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1600..1600 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 1800..1800 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      execute if score tSequence templeSequence matches 12..12 if score bossMusic templeSequence matches 2000..2000 run execute as @e[tag=minionSpawn,sort=random,limit=2] at @s run summon zombie_villager ~ ~ ~ {CustomName:"{\"text\":\"Leaf Minion\"}",Tags:["bminion"],Attributes:[{Name:generic.followRange,Base:100}],Invulnerable:0,Silent:0}
                                                      #leefman tp
                                                        execute if score bossMusic templeSequence matches 500..500 run execute as @e[tag=leefman2] at @s run tp @a[limit=1,sort=random]
                                                        execute if score bossMusic templeSequence matches 1000..1000 run execute as @e[tag=leefman2] at @s run tp @a[limit=1,sort=random]
                                                        execute if score bossMusic templeSequence matches 1500..1500 run execute as @e[tag=leefman2] at @s run tp @a[limit=1,sort=random]
                                                        execute if score bossMusic templeSequence matches 2000..2000 run execute as @e[tag=leefman2] at @s run tp @a[limit=1,sort=random]
                                                          #leefman Exist
                                                            scoreboard players set leefManExist templeSequence 0
                                                            execute if score tSequence templeSequence matches 12..12 run execute as @e[tag=leefman2] at @s run scoreboard players set leefManExist templeSequence 1
                                                            execute if score tSequence templeSequence matches 12..12 if score leefManExist templeSequence matches 0..0 run scoreboard players set tSequence templeSequence 13

                                                              #battle over setup
                                                                execute if score tSequence templeSequence matches 13..20 run stopsound @a player minecraft:custom.firecastle
                                                                execute if score tSequence templeSequence matches 13..13 run kill @e[tag=TNT]
                                                                execute if score tSequence templeSequence matches 13..13 run summon armor_stand -13272 61 1230 {NoGravity:true,Invisible:true,Small:true,Marker:true,Tags:["elevate"],Passengers:[{id:falling_block,BlockState:{Name:"minecraft:beacon"},Tags:["elevate2"],NoGravity:true,DropItem:false,Time:-2147483648}]}
                                                                execute if score tSequence templeSequence matches 13..13 run execute as @a at @s run playsound minecraft:custom.unnfect player @s ~ ~ ~ 1000 0.8
                                                                execute if score tSequence templeSequence matches 13..13 run kill @e[tag=bminion]
                                                                execute if score tSequence templeSequence matches 13..13 run execute as @a at @s run playsound minecraft:entity.ender_dragon.death player @s ~ ~ ~ 1000 2
                                                                execute if score tSequence templeSequence matches 13..13 run scoreboard players set tSequence templeSequence 14
                                                                  #sandwich elevate animation
                                                                    execute if score tSequence templeSequence matches 14..14 run execute as @e[tag=elevate] at @s run tp @s ~ ~0.09 ~
                                                                    execute if score tSequence templeSequence matches 14..14 run execute as @e[tag=elevate,x=-13272,y=66,z=1230,distance=..2] run execute as @e[tag=elevate] at @s run summon firework_rocket ~ ~ ~ {Life:5,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;1009950,16777215]}]}}}}
                                                                      execute if score tSequence templeSequence matches 14..14 run execute as @e[tag=elevate,x=-13272,y=66,z=1230,distance=..2] run scoreboard players set tSequence templeSequence 15
                                                                      execute if score tSequence templeSequence matches 15..15 run kill @e[tag=elevate]
                                                                      execute if score tSequence templeSequence matches 15..15 run kill @e[tag=elevate2]
                                                                        execute if score tSequence templeSequence matches 15..15 run give @a[limit=1,tag=playingMap] minecraft:beacon{CanPlaceOn:["minecraft:piston_head"],display:{Name:"{\"text\":\"The Mighty Sandwich\",\"color\":\"gold\",\"italic\":false}"}} 1
                                                                          execute if score tSequence templeSequence matches 15..15 run scoreboard players set tSequence templeSequence 16

                                                                        #tp back to lab Timer
                                                                          execute if score tSequence templeSequence matches 16..16 run scoreboard players add sandwichAni templeSequence 1
                                                                            execute if score sandwichAni templeSequence matches 100..100 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": At long last, the sandwich is ours again! I suppose it's time I go back to the lab and give it to Dr. Pickle. ","color":"white"}]
                                                                            execute if score sandwichAni templeSequence matches 100..100 run execute as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1000
                                                                              execute if score sandwichAni templeSequence matches 260..260 run effect give @a minecraft:nausea 7 0
                                                                              execute if score sandwichAni templeSequence matches 260..260 run effect give @a minecraft:blindness 7 0
                                                                              execute if score sandwichAni templeSequence matches 260..260 run execute as @a at @s run playsound minecraft:voices.teleport player @a ~ ~ ~ 1000
                                                                              execute if score sandwichAni templeSequence matches 330..330 run teleport @a 275 14 137
                                                                              execute if score sandwichAni templeSequence matches 332..332 run kill @e[tag=pickle]
                                                                              execute if score sandwichAni templeSequence matches 332..332 run summon villager 274 14 153 {CustomName:"{\"text\":\"Dr. Pickle\"}",CustomNameVisible:1,Attributes:[{Name:generic.followRange,Base:0}],Profession:1,Silent:1,Invulnerable:1,Tags:["pickle2"]}


                                                  #can take fall damage
                                                    execute if score canFall Valid matches 1..1 run effect clear @a minecraft:jump_boost
                                                    execute if score canFall Valid matches 1..1 run effect clear @a minecraft:saturation


                                                      #LeefmanHeadBob
                                                        execute if score bossHeadOn templeSequence matches 0..0 run scoreboard players set bossHead templeSequence 0
                                                        execute if score bossHeadOn templeSequence matches 0..0 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,0f]}
                                                        execute if score bossHeadOn templeSequence matches 1..1 run scoreboard players add bossHead templeSequence 1
                                                        execute if score bossHead templeSequence matches 1..5 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                        execute if score bossHead templeSequence matches 5..10 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                        execute if score bossHead templeSequence matches 10..15 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                        execute if score bossHead templeSequence matches 15..20 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                        execute if score bossHead templeSequence matches 20..25 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                        execute if score bossHead templeSequence matches 25..30 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                        execute if score bossHead templeSequence matches 30..35 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                        execute if score bossHead templeSequence matches 35..40 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                        execute if score bossHead templeSequence matches 40..45 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                        execute if score bossHead templeSequence matches 45..50 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                        execute if score bossHead templeSequence matches 50..55 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                        execute if score bossHead templeSequence matches 55..55 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                          execute if score bossHead templeSequence matches 55..60 run scoreboard players set bossHead templeSequence -1

                                                      #      execute if score bossHeadOn templeSequence matches 0..0 run scoreboard players set bossHead templeSequence 0
                                                      #      execute if score bossHeadOn templeSequence matches 0..0 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,0f]}
                                                      #      execute if score bossHeadOn templeSequence matches 1..1 run scoreboard players add bossHead templeSequence 1
                                                      #        execute if score bossHead templeSequence matches 1..5 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                      #        execute if score bossHead templeSequence matches 5..10 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                      #        execute if score bossHead templeSequence matches 10..15 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                      #        execute if score bossHead templeSequence matches 15..20 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                      #        execute if score bossHead templeSequence matches 20..25 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                      #        execute if score bossHead templeSequence matches 25..30 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                      #        execute if score bossHead templeSequence matches 30..35 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                      #        execute if score bossHead templeSequence matches 35..40 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                      #        execute if score bossHead templeSequence matches 40..45 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                      #        execute if score bossHead templeSequence matches 45..50 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                      #        execute if score bossHead templeSequence matches 50..55 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,30f]}
                                                      #        execute if score bossHead templeSequence matches 55..55 run data merge entity @e[tag=leefman2,limit=1] {Rotation:[-90f,-15f]}
                                                      #          execute if score bossHead templeSequence matches 55..60 run scoreboard players set bossHead templeSequence -1

                                                      execute if score bossMusic templeSequence matches 1.. run scoreboard players set bossHeadOn templeSequence 4
                                                      execute if score bossMusic templeSequence matches 1.. run scoreboard players set bossHead templeSequence 0

##############################################################################################################################################################################################
######################################   TEMPLE SEQUENCE END -- END SEQUENCE START   #########################################################################################################
##############################################################################################################################################################################################

                                                  #doctor chat
                                                    execute if score tSequence templeSequence matches 16..16 run execute as @e[tag=pickle2] at @s run execute as @a[distance=..3] at @s run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"Wow! You've done it! The sandwich has been retrieved! I can't thank you enough! Go ahead and place that sandwich back where it belongs; on my pedestal for super cool stuff!","color":"gold"}]
                                                    execute if score tSequence templeSequence matches 16..16 run execute as @e[tag=pickle2] at @s run execute as @a[distance=..3] at @s run execute as @a at @s run playsound minecraft:entity.villager.ambient player @s ~ ~ ~ 1000 1
                                                    execute if score tSequence templeSequence matches 16..16 run execute as @e[tag=pickle2] at @s run execute as @a[distance=..3] at @s run scoreboard players set tSequence templeSequence 17
                                                      #place sandwich on pedestal
                                                        execute if score tSequence templeSequence matches 17..17 run execute if block 250 16 151 minecraft:beacon run scoreboard players set tSequence templeSequence 18
                                                        execute if score tSequence templeSequence matches 18..18 run particle end_rod 250 16 151 2 2 2 .1 100
                                                        execute if score tSequence templeSequence matches 18..18 run particle flame 250 16 151 2 2 2 .1 20
                                                        execute if score tSequence templeSequence matches 18..18 run execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1000 2
                                                        execute if score tSequence templeSequence matches 18..18 run execute as @a at @s run playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 1000
                                                        execute if score tSequence templeSequence matches 18..18 run execute as @a at @s run playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1000 2
                                                          execute if score tSequence templeSequence matches 18..18 run scoreboard players set tSequence templeSequence 19
                                                            #final timer sequence
                                                              execute if score tSequence templeSequence matches 19..19 run scoreboard players add endTimer templeSequence 1
                                                              #pickle
                                                                execute if score endTimer templeSequence matches 50..50 run tellraw @a ["",{"text":"Dr. Pickle: ","color":"gold"},{"text":"Thanks again for all of your hard work! Enjoy the rest of your day! I'm going to go back to eating rocks lol. ","color":"gold"}]
                                                                execute if score endTimer templeSequence matches 50..50 run execute as @a at @s run playsound minecraft:entity.villager.ambient player @s ~ ~ ~ 1000 1
                                                                  execute if score endTimer templeSequence matches 110..110 run summon firework_rocket 246 19 154 {Life:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;2093311,16772879],FadeColors:[I;16777215]}]}}}}
                                                                  execute if score endTimer templeSequence matches 130..130 run summon firework_rocket 245 19 151 {Life:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;2093311,16772879],FadeColors:[I;16777215]}]}}}}
                                                                  execute if score endTimer templeSequence matches 150..150 run summon firework_rocket 247 20 148 {Life:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Colors:[I;16774915,16760397,16771304],FadeColors:[I;13750737,16773360]}]}}}}
                                                                  execute if score endTimer templeSequence matches 170..170 run summon firework_rocket 245 19 151 {Life:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;2093311,16772879],FadeColors:[I;16777215]}]}}}}
                                                                  execute if score endTimer templeSequence matches 190..190 run summon firework_rocket 246 19 154 {Life:0,FireworksItem:{id:firework_rocket,Count:1,Flicker:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;3062276,16770560,16777215],FadeColors:[I;9737364,16777215]}]}}}}
                                                                  execute if score endTimer templeSequence matches 210..210 run summon firework_rocket 247 20 148 {Life:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Colors:[I;16774915,16760397,16771304],FadeColors:[I;13750737,16773360]}]}}}}
                                                                  execute if score endTimer templeSequence matches 230..230 run summon firework_rocket 245 19 151 {Life:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;2093311,16772879],FadeColors:[I;16777215]}]}}}}
                                                                  execute if score endTimer templeSequence matches 250..250 run summon firework_rocket 246 19 154 {Life:0,FireworksItem:{id:firework_rocket,Count:1,Flicker:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;3062276,16770560,16777215],FadeColors:[I;9737364,16777215]}]}}}}
                                                                  execute if score endTimer templeSequence matches 270..270 run summon firework_rocket 247 20 148 {Life:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Colors:[I;16774915,16760397,16771304],FadeColors:[I;13750737,16773360]}]}}}}
                                                                  execute if score endTimer templeSequence matches 290..290 run summon firework_rocket 245 19 151 {Life:0,FireworksItem:{id:firework_rocket,Count:1,Flicker:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;3062276,16770560,16777215],FadeColors:[I;9737364,16777215]}]}}}}
                                                                  execute if score endTimer templeSequence matches 310..310 run summon firework_rocket 246 19 154 {Life:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;2093311,16772879],FadeColors:[I;16777215]}]}}}}
                                                                    execute if score endTimer templeSequence matches 311..311 run scoreboard players set tSequence templeSequence 20

##############################################################################################################################################################################################
######################################   STORY END -- BEGIN CREDITS; still based on endTimer   #########################################################################################################
##############################################################################################################################################################################################

#credit setup
  execute if score tSequence templeSequence matches 20 run scoreboard players add creditTimer templeSequence 1
    execute if score creditTimer templeSequence matches 1.. run replaceitem entity @a armor.head minecraft:carved_pumpkin
      execute if score creditTimer templeSequence matches 1.. run stopsound @a player minecraft:entity.wolf.whine
      execute if score creditTimer templeSequence matches 1.. run scoreboard players add @a credits 1

        #music
          execute if score tSequence templeSequence matches 20..20 run execute as @a[scores={credits=5..5}] at @s run playsound minecraft:voices.credits player @s ~ ~ ~ 1000
          execute if score tSequence templeSequence matches 20..20 run scoreboard players reset @a[scores={credits=238..}] credits

          #credit text
          execute if score creditTimer templeSequence matches 1..1 run gamemode spectator @a
          execute if score creditTimer templeSequence matches 1..1 run tp 261 72 146
            execute if score creditTimer templeSequence matches 1..1 run title @a times 20 100 20
            execute if score creditTimer templeSequence matches 2..2 run title @a title {"text":"THE MISSING SANDWICH 2","color":"gold"}
            execute if score creditTimer templeSequence matches 2..2 run title @a subtitle {"text":"By ElectroBleach","color":"blue"}
              execute if score creditTimer templeSequence matches 120..120 run title @a title {"text":"HELP FROM:","color":"gold"}
              execute if score creditTimer templeSequence matches 120..120 run title @a subtitle {"text":"GenericallyNamed & Meeepy12","color":"blue"}
                execute if score creditTimer templeSequence matches 238..238 run title @a subtitle {"text":"Radiarc & Makkon","color":"blue"}
                execute if score creditTimer templeSequence matches 238..238 run title @a title {"text":"Music by:","color":"gold"}
                  execute if score creditTimer templeSequence matches 356..356 run title @a subtitle {"text":"Freesound.org","color":"blue"}
                  execute if score creditTimer templeSequence matches 356..356 run title @a title {"text":"Sound Effects:","color":"gold"}
                    execute if score creditTimer templeSequence matches 474..474 run title @a title {"text":"Textures:","color":"gold"}
                    execute if score creditTimer templeSequence matches 474..494 run title @a subtitle {"text":"creamcheese7,","color":"blue"}
                    execute if score creditTimer templeSequence matches 494..514 run title @a subtitle {"text":"GoodTimesWithScar,","color":"blue"}
                    execute if score creditTimer templeSequence matches 514..534 run title @a subtitle {"text":"BdoubleO100,","color":"blue"}
                    execute if score creditTimer templeSequence matches 534..554 run title @a subtitle {"text":"and iSparkton","color":"blue"}
                      execute if score creditTimer templeSequence matches 554..554 run title @a times 20 1000000000 20
                      execute if score creditTimer templeSequence matches 592..592 run title @a title {"text":"THANK YOU FOR PLAYING!","color":"gold"}
                      execute if score creditTimer templeSequence matches 592..592 run title @a subtitle {"text":" ","color":"blue"}
                      execute if score creditTimer templeSequence matches 592..592 run tellraw @a ["",{"text":"-----------------------------------","color":"gold"},{"text":"\n         "},{"text":"Thanks for playing!","color":"yellow"},{"text":"\n"},{"text":" Some textures derive from third-party\n resourcepacks. Check them out here:\n - ","color":"gray"},{"text":"GTWS's Resource Pack","color":"dark_green","clickEvent":{"action":"open_url","value":"https://youtu.be/Oe2MgDTe77w"}},{"text":"\n ","color":"dark_green"},{"text":"-","color":"gray"},{"text":" ","color":"dark_green"},{"text":"BdoubleO100's Resource Pack","color":"dark_green","clickEvent":{"action":"open_url","value":"https://youtu.be/fM7DvbGr-WU"}},{"text":"\n ","color":"dark_green"},{"text":"-","color":"gray"},{"text":" ","color":"dark_green"},{"text":"Better Nether by creamcheese7","color":"dark_green","clickEvent":{"action":"open_url","value":"https://www.reddit.com/r/Minecraft/comments/6o0zw2/my_retextured_nether_blocks_and_the_dead_bush/"}},{"text":"\n ","color":"dark_green"},{"text":"-","color":"gray"},{"text":" ","color":"dark_green"},{"text":"iSparkton's Scope 32x Pack","color":"dark_green","clickEvent":{"action":"open_url","value":"https://minecraft-resourcepacks.com/scope/"}},{"text":"\n"},{"text":"  ","color":"dark_gray"},{"text":"*We've been allowed by the creators\n  to use the textures*","color":"gray"},{"text":"\n"},{"text":"-----------------------------------","color":"gold"}]
                        execute if score creditTimer templeSequence matches 732..732 run tellraw @a ["",{"text":" ","color":"gold"},{"text":"\n         "},{"text":"Thanks for playing!","color":"yellow"},{"text":"\n"},{"text":" Want to see more from the creators?\n Check us out on social media!\n - ","color":"gray"},{"text":"ElectroBleach","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCPdvSH54JR86cuTGJZXBwcg"}},{"text":"\n"},{"text":" ","color":"dark_green"},{"text":"- ","color":"gray"},{"text":"GenericallyNamed","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCL-F8EQQc6iaI8HSDGq3V2w"}},{"text":"\n"},{"text":" ","color":"dark_green"},{"text":"-","color":"gray"},{"text":" ","color":"dark_green"},{"text":"Meeepy12","color":"red"},{"text":"\n"},{"text":"   ","color":"dark_gray"},{"text":"*Each name is a clickable link*","color":"gray"},{"text":"\n"},{"text":"-----------------------------------","color":"gold"}]
