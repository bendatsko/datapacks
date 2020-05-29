#MAIN

# Flap Sticks


#Intro thing
#summon armor_stand 28.25 4.29 -182.19 {NoGravity:1b,Invisible:1b,Tags:["ben1"],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b}],Rotation:[-180f,0f]}
#/tp @s 22.5 4 -183

execute if score timer intro matches -20..-20 run summon armor_stand 28.25 4.29 -182.19 {NoGravity:1b,Invisible:1b,Tags:["ben1"],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b}],Rotation:[-180f,0f]}
execute if score timer intro matches -20..-20 run tp @a 22.5 4 -183 -90 0

execute if score active intro matches 1..1 run scoreboard players add timer intro 1
execute if score timer intro matches 1..1 run clear @a
  execute if score timer intro matches 5..5 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Hey, I’m Benedict, and welcome to No Mo’ Ghosts Co.!","color":"none"}]
  execute if score timer intro matches 5..5 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
  execute if score timer intro matches 165..165 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Here at No Mo’ Ghosts Co., we take pride in our work, which if you were not aware primarily involves the removal of any unruly spirits from our customers’ homes. You knew that, right? I hope you did, because you're contractually obligated to work for me!","color":"none"}]
  execute if score timer intro matches 165..165 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
  execute if score timer intro matches 325..325 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Anyways, I just received a call this morning from a client looking to get an infestation taken care of in a property they purchased just outside of town. They promise good pay, so we’d better take good care here.","color":"none"}]
  execute if score timer intro matches 325..325 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
  execute if score timer intro matches 485..485 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Now, when you’re ready to head out, just let me know. I’ll give you a quick run-down of everything once we’re there, alright?","color":"none"}]
  execute if score timer intro matches 485..485 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
  execute if score timer intro matches 645..645 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Have fun!","color":"none"}]
  execute if score timer intro matches 645..645 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


  execute if score timer intro matches 680..680 run tellraw @a ["",{"text":"-----------------------","color":"dark_gray"},{"text":"\n"},{"text":"[DECISION] Ready to go?","color":"gold"},{"text":"\n"},{"text":"(Click the text to select)","italic":true,"color":"gray"},{"text":"\n\n"},{"text":"Yes, I'm ready.","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set start intro 1"}},{"text":"\n\n"},{"text":"Nah, not really.","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set noactive intro 1"}},{"text":"\n"},{"text":"-----------------------","color":"dark_gray"}]
  execute if score timer intro matches 680..680 run execute as @a at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1000

  execute if score noactive intro matches 1..1 run scoreboard players add notimer intro 1
  execute if score notimer intro matches 20..20 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"That's a real shame! It's too bad that you've already signed a contract surrendering all of your rights to me!","color":"none"}]
  execute if score notimer intro matches 20..20 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
  execute if score notimer intro matches 120..120 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Now, where were we? Oh, right. Let's go!","color":"none"}]
  execute if score notimer intro matches 120..120 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
  execute if score notimer intro matches 250..250 run scoreboard players set start intro 1



  # New stuff lol

    #Key:
    #If score is 0, then inactive
    #If score is 1, then is active

    #Pool Belcony
      #

      execute if score Sequence ghost_sequences matches ..5 run execute as @a[x=43,y=59,z=-418,distance=..3,limit=1] at @s if score near1 newstuff matches 0..0 run scoreboard players set near1 newstuff 1
      execute if score Sequence ghost_sequences matches ..5 run execute as @a[x=43,y=59,z=-418,distance=..3,limit=1] at @s run tag @s add balcony
      execute if score Sequence ghost_sequences matches ..5 run execute if score near1 newstuff matches 1..1 run scoreboard players add timer newstuff 1
      execute if score Sequence ghost_sequences matches ..5 run execute if score near1 newstuff matches 1..1 if score timer newstuff matches 5..5 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"It looks like there is something in the hot tub down there, you should go investigate!","color":"none"}]
      execute if score Sequence ghost_sequences matches ..5 run execute if score near1 newstuff matches 1..1 if score timer newstuff matches 5..5 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
      execute if score Sequence ghost_sequences matches ..5 run execute if score near1 newstuff matches 1..1 run execute if score timer newstuff matches 1200..1200 run scoreboard players set near1 newstuff 0
      execute if score Sequence ghost_sequences matches ..5 run execute if score near1 newstuff matches 0..0 run execute if score timer newstuff matches 1200..1200 run scoreboard players set timer newstuff 0
      execute if score Sequence ghost_sequences matches ..5 run execute as @a[x=43,y=59,z=-418,tag=balcony,distance=4..] at @s if score near1 newstuff matches 1..1 run scoreboard players set timer newstuff 1199
      execute if score Sequence ghost_sequences matches ..5 run execute as @a[x=43,y=59,z=-418,distance=4..,tag=balcony,limit=1] at @s run tag @s remove balcony


    #Locked Utility Room Door
#execute if score Sequence ghost_sequences matches 5..5 run
        execute if score Sequence ghost_sequences matches 5..6 run execute as @a[x=44,y=54,z=-399,distance=..3,limit=1] at @s if score near2 newstuff matches 0..0 run scoreboard players set near2 newstuff 1
        execute if score Sequence ghost_sequences matches 5..6 run execute as @a[x=44,y=54,z=-399,distance=..3,limit=1] at @s run tag @s add utility
        execute if score Sequence ghost_sequences matches 5..6 run execute if score near2 newstuff matches 1..1 run scoreboard players add timer newstuff 1
        execute if score Sequence ghost_sequences matches 5..6 run execute if score near2 newstuff matches 1..1 if score timer newstuff matches 5..5 run tellraw @a ["",{"text":"Benedict: ","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"I'm Benedict and I'm very annoying!","color":"red"}]}}},{"text":"It looks like door to the ","color":"none"},{"text":"Utility Room ","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"A room with utilities"}]}}},{"text":"is locked. How inconvenient. Check to see if there is any other route in, perhaps through the pool.","color":"none"}]
        execute if score Sequence ghost_sequences matches 5..6 run execute if score near2 newstuff matches 1..1 if score timer newstuff matches 5..5 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
        execute if score Sequence ghost_sequences matches 5..6 run execute if score near2 newstuff matches 1..1 run execute if score timer newstuff matches 1200..1200 run scoreboard players set near2 newstuff 0
        execute if score Sequence ghost_sequences matches 5..6 run execute if score near2 newstuff matches 0..0 run execute if score timer newstuff matches 1200..1200 run scoreboard players set timer newstuff 0
        execute if score Sequence ghost_sequences matches 5..6 run execute as @a[x=44,y=54,z=-399,tag=utility,distance=4..] at @s if score near2 newstuff matches 1..1 run scoreboard players set timer newstuff 1199
        execute if score Sequence ghost_sequences matches 5..6 run execute as @a[x=44,y=54,z=-399,distance=4..,tag=utility,limit=1] at @s run tag @s remove utility

        #Crater Reaction Dialogue
    #execute if score Sequence ghost_sequences matches 5..5 run
            execute if score Sequence ghost_sequences matches 14..14 run execute as @a[x=56,y=59,z=-467,distance=..3,limit=1] at @s if score near3 newstuff matches 0..0 run scoreboard players set near3 newstuff 1
            execute if score Sequence ghost_sequences matches 14..14 run execute as @a[x=56,y=59,z=-467,distance=..3,limit=1] at @s run tag @s add crater
            execute if score Sequence ghost_sequences matches 14..14 run execute if score near3 newstuff matches 1..1 run scoreboard players add timer newstuff 1
            execute if score Sequence ghost_sequences matches 14..14 run execute if score near3 newstuff matches 1..1 if score timer newstuff matches 5..5 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Holy cow! What could have created such a large crater in the backyard? Our client will not be happy. I suggest you investigate before any other large craters pop up!","color":"none"}]
            execute if score Sequence ghost_sequences matches 14..14 run execute if score near3 newstuff matches 1..1 if score timer newstuff matches 5..5 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
            execute if score Sequence ghost_sequences matches 14..14 run execute if score near3 newstuff matches 1..1 run execute if score timer newstuff matches 1200..1200 run scoreboard players set near3 newstuff 0
            execute if score Sequence ghost_sequences matches 14..14 run execute if score near3 newstuff matches 0..0 run execute if score timer newstuff matches 1200..1200 run scoreboard players set timer newstuff 0
            execute if score Sequence ghost_sequences matches 14..14 run execute as @a[x=56,y=59,z=-467,tag=crater,distance=20..] at @s if score near3 newstuff matches 1..1 run scoreboard players set timer newstuff 1199
            execute if score Sequence ghost_sequences matches 14..14 run execute as @a[x=56,y=59,z=-467,distance=20..,tag=crater,limit=1] at @s run tag @s remove crater










##############################################################################################
scoreboard players add effectTimer clocks 1
execute if score effectTimer clocks matches 1..1 run execute if score Sequence ghost_sequences matches 0..12 run effect give @a minecraft:saturation 2 255 true
execute if score effectTimer clocks matches 1..1 run execute if score Sequence ghost_sequences matches 14..15 run effect give @a minecraft:saturation 2 255 true
execute if score effectTimer clocks matches 1..1 run execute if score Sequence ghost_sequences matches 17.. run effect give @a minecraft:saturation 2 255 true
execute if score effectTimer clocks matches 20..20 run scoreboard players set effectTimer clocks 0
execute store result bossbar minecraft:orbs value run scoreboard players get progress bossbar


#effect give @a minecraft:regeneration 2 255 true

  #Player join message
    tag @a[scores={Joined=1..}] remove Joined

    scoreboard players set @a[tag=!Joined] Join 1

    execute as @a[scores={Join=1..}] at @s run tellraw @s ["",{"text":"--------------------------------------","color":"gold"},{"text":"\n        "},{"text":"Welcome to","bold":true,"color":"dark_green"},{"text":" ","bold":true,"color":"dark_aqua"},{"text":"Annoying Ghosts!","bold":true,"color":"gold"},{"text":"\n    "},{"text":"By ElectroBleach, GenericallyNamed,\n              and Meeepy12","color":"dark_gray"},{"text":"\n\n"},{"text":"  Please refer to your introductory book\n           for map information!","color":"red"},{"text":"\n"},{"text":"--------------------------------------","color":"gold"}]

    execute as @a[scores={Join=1..}] at @s run scoreboard players set @s Music 0
    execute as @a[scores={Join=1..}] at @s run gamemode adventure @s

    execute as @a[scores={Join=1..},x=18,y=3,z=-179,dx=53,dy=32,dz=-34] at @s run replaceitem entity @s hotbar.4 written_book{pages:["[\"\",{\"text\":\"Annoying Ghosts!\",\"bold\":true,\"color\":\"blue\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"-=-=-=-=-=-=-=-=-=-\",\"color\":\"gray\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"CLICK ME TO START!\",\"bold\":true,\"underlined\":true,\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set active intro 1\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Welcome to \",\"color\":\"dark_gray\"},{\"text\":\"Annoying Ghosts\",\"bold\":true,\"color\":\"dark_gray\"},{\"text\":\"! You can either click the button above to begin or  proceed to the next page to \",\"color\":\"dark_gray\"},{\"text\":\"learn about this map.\",\"bold\":true,\"color\":\"dark_gray\"}]","[\"\",{\"text\":\"How do I win?\",\"bold\":true,\"color\":\"blue\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"-=-=-=-=-=-=-=-=-=-\",\"color\":\"gray\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"The objective of this map is to capture all of the spooky ghosts running amok inside of a haunted mansion. To do this, you'll use a vacuum, and will be guided through a series of objectives via a scary man with a radio.\",\"color\":\"dark_gray\"}]","[\"\",{\"text\":\"About this map\",\"bold\":true,\"color\":\"blue\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"-=-=-=-=-=-=-=-=-=-\",\"color\":\"gray\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"This map was made by:\",\"color\":\"dark_gray\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"ElectroBleach\",\"bold\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://www.youtube.com/electrobleach\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"GenericallyNamed\",\"bold\":true,\"color\":\"red\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"Meeepy12\",\"bold\":true,\"color\":\"red\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Check out our socials!\",\"color\":\"dark_gray\"}]","[\"\",{\"text\":\"Secret page\",\"bold\":true,\"color\":\"blue\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"-=-=-=-=-=-=-=-=-=-\",\"color\":\"gray\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Ooo, you've found a secret page! You win absolutely nothing! Hahaha.\",\"color\":\"dark_gray\"}]","[\"\",{\"text\":\"Why?\",\"bold\":true,\"color\":\"blue\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"-=-=-=-=-=-=-=-=-=-\",\"color\":\"gray\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"So you're still reading this, huh?\",\"color\":\"dark_gray\"}]","[\"\",{\"text\":\"Benedict sad :(\",\"bold\":true,\"color\":\"blue\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"-=-=-=-=-=-=-=-=-=-\",\"color\":\"gray\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Day 1 - The first day\\n\\nI've forgotten where the toilets are in this place. Please help.\",\"color\":\"dark_gray\"}]","[\"\",{\"text\":\"Benedict no leak\",\"bold\":true,\"color\":\"blue\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"-=-=-=-=-=-=-=-=-=-\",\"color\":\"gray\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Day 14 - The last day\\n\\nFor the past two weeks I've been unable to go pee-pee. I'm afraid this is it for me. Goodbye.\",\"color\":\"dark_gray\"}]"],title:Introduction,author:"map guy lol",display:{Lore:["What's this map about?"]}}

    tag @a[tag=!Joined] add Joined
    scoreboard players set @a Join 0
    execute as @a[scores={Joined=1..}] at @s run scoreboard players set @s Joined 0

    #Prevent player sleep
      execute as @a[scores={sleeping=1..}] at @s run tp @s ~ ~.01 ~ ~ ~
      execute as @a[scores={sleeping=1..}] at @s run scoreboard players set @s sleeping 0

    #Prevent drown convert
    execute as @e[type=zombie] at @s run data merge entity @s {InWaterTime:-1}


    #player counter
    scoreboard players set count playercount 0
    execute as @a at @s run scoreboard players add count playercount 1


    #Generic team
    execute as @a at @s run team join team @a

      #Sounds
        #Garage
          scoreboard players add @a Music 1
          execute as @a[x=18,y=3,z=-179,dx=53,dy=32,dz=-34,scores={Music=5..5}] at @s run playsound minecraft:custom.garage_ambience player @s ~ ~ ~ 1000
          scoreboard players reset @a[x=18,y=3,z=-179,dx=53,dy=32,dz=-34,scores={Music=555..}] Music
          scoreboard players reset @a[x=18,y=3,z=-179,dx=53,dy=32,dz=-34,tag=!garage] Music
          tag @a remove garage
          tag @a[x=18,y=3,z=-179,dx=53,dy=32,dz=-34] add garage
          stopsound @a[tag=!garage] player custom.garage_ambience

        #Ambient Sounds
          #Outdoors
          scoreboard players add @a Ambience 1
            execute as @a[team=outdoors,scores={Ambience=5..5}] at @s run playsound minecraft:game.night player @s ~ ~ ~ 1000
            scoreboard players reset @a[team=outdoors,scores={Ambience=466..}] Ambience
            scoreboard players reset @a[x=19,y=106,z=-377,dx=131,dy=-54,dz=-120,team=!outdoors,team=!indoors] Ambience

            scoreboard players reset @a[x=19,y=106,z=-377,dx=131,dy=-54,dz=-120,team=!outdoors] Ambience




            team empty outdoors
            execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block run team join outdoors @s
            execute as @a at @s if block ~ ~-2 ~ minecraft:gold_block run team join outdoors @s
            execute as @a at @s if block ~ ~-3 ~ minecraft:gold_block run team join outdoors @s

            execute as @a[x=83,y=80,z=-377,dx=-38,dy=-21,dz=138] at @s run team join outdoors @s
            execute as @a[x=95,y=65,z=-398,dx=56,dy=20,dz=-121] at @s run team join outdoors @s
            execute as @a[x=93,y=73,z=-441,dx=-49,dy=-30,dz=-51] at @s run team join outdoors @s
            execute as @a[x=72,y=72,z=-378,dx=-20,dy=-6,dz=-11] at @s run team join outdoors @s

                #for complex shapes
                  execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block run team join outdoors @s
                  execute as @a at @s if block ~ ~-2 ~ minecraft:gold_block run team join outdoors @s
                  execute as @a at @s if block ~ ~-3 ~ minecraft:gold_block run team join outdoors @s
                    #for resetting everything I guess lol
                      stopsound @a[team=!outdoors] player minecraft:game.night


          #Indoors
            execute as @a[team=indoors,scores={Music=5..5}] at @s run playsound minecraft:game.houseambience1 player @s ~ ~ ~ 1000
            scoreboard players reset @a[team=indoors,scores={Music=2220..}] Music
            scoreboard players reset @a[x=19,y=106,z=-377,dx=131,dy=-54,dz=-120,team=!outdoors,team=!indoors] Music
            team empty indoors
            execute as @a[x=19,y=106,z=-377,dx=131,dy=-54,dz=-120,team=!outdoors] at @s run team join indoors @s
            stopsound @a[team=!indoors] player minecraft:game.houseambience1



      #Bossbar
      execute if score progress bossbar matches 0..0 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (0/9)","color":"green","insertion":"tellraw @a %s"}]
      execute if score progress bossbar matches 1..1 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (1/9)","color":"green","insertion":"tellraw @a %s"}]
      execute if score progress bossbar matches 2..2 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (2/9)","color":"green","insertion":"tellraw @a %s"}]
      execute if score progress bossbar matches 3..3 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (3/9)","color":"green","insertion":"tellraw @a %s"}]
      execute if score progress bossbar matches 4..4 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (4/9)","color":"green","insertion":"tellraw @a %s"}]
      execute if score progress bossbar matches 5..5 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (5/9)","color":"green","insertion":"tellraw @a %s"}]
      execute if score progress bossbar matches 6..6 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (6/9)","color":"green","insertion":"tellraw @a %s"}]
      execute if score progress bossbar matches 7..7 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (7/9)","color":"green","insertion":"tellraw @a %s"}]
      execute if score progress bossbar matches 8..8 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (8/9)","color":"green","insertion":"tellraw @a %s"}]
      execute if score progress bossbar matches 9..9 run bossbar set minecraft:orbs name ["",{"text":"Ghost Captured (9/9)","color":"green","insertion":"tellraw @a %s"}]

      #Bossbar-based setworldspawn
      execute if score progress bossbar matches 0..0 run setworldspawn 48 4 -203
      execute if score progress bossbar matches 0..0 if score benedict clocks matches 200.. run setworldspawn 62 60 -387
      execute if score progress bossbar matches 0..0 if score benedict clocks matches 200.. run spawnpoint @a 62 60 -387
      execute if score progress bossbar matches 1..1 run setworldspawn 31 53 -400
      execute if score progress bossbar matches 2..2 run setworldspawn 91 59 -418
      execute if score progress bossbar matches 3..3 run setworldspawn 81 46 -470
      execute if score progress bossbar matches 4..4 run setworldspawn 82 66 -403
      execute if score progress bossbar matches 6..6 run setworldspawn 47 74 -401


      #replaceitem ghost locator
        execute as @a at @s if score benedict clocks matches 1600.. run replaceitem entity @a hotbar.3 minecraft:horn_coral{display:{Name:"{\"text\":\" \"}"}} 1
        execute as @a at @s if score benedict clocks matches 1600.. run replaceitem entity @a hotbar.5 compass{display:{Name:"{\"text\":\" \"}"}} 1

          #doorStatus:
           #key:
            #0: resting
            #1: opening
            #2: reset

              #Open door
                execute if score doorStatus lobby matches 1..1 run execute as @e[tag=door1] at @s run tp @s ~ ~.1 ~

                  #kill door
                    execute positioned 50.00 11.00 -179.00 run execute as @e[tag=door1,distance=..1.5] at @s run kill @s
                    execute positioned 49.00 11.00 -179.00 run execute as @e[tag=door1,distance=..1.5] at @s run kill @s
                    execute positioned 48.00 11.00 -179.00 run execute as @e[tag=door1,distance=..1.5] at @s run kill @s
                    execute positioned 47.00 11.00 -179.00 run execute as @e[tag=door1,distance=..1.5] at @s run kill @s
                    execute positioned 46.00 11.00 -179.00 run execute as @e[tag=door1,distance=..1.5] at @s run kill @s

                      #button pressing
                      #  execute if score doorStatus lobby matches 0..0 run execute if block 45 5 -180 minecraft:acacia_button[powered=true] run execute as @a at @s run playsound minecraft:custom.garage player @s ~ ~ ~ 1000
                      #  execute if score doorStatus lobby matches 0..0 run execute if block 45 5 -180 minecraft:acacia_button[powered=true] run scoreboard players set doorStatus lobby 1
                      #  execute if score doorStatus lobby matches 0..0 run execute if block 45 5 -180 minecraft:acacia_button[powered=true] run fill 46 8 -179 50 4 -179 minecraft:air
                      #  execute if score doorStatus lobby matches 0..0 run execute if block 45 5 -180 minecraft:acacia_button[powered=true] run setblock 45 5 -180 minecraft:acacia_button[powered=false]
                      #  execute if score doorStatus lobby matches 0..0 run execute if block 45 5 -180 minecraft:acacia_button[powered=true] run effect give @a minecraft:invisibility 100000 255 true

                        execute if score start intro matches 1..1 run execute as @a at @s run playsound minecraft:custom.garage player @s ~ ~ ~ 1000
                        execute if score start intro matches 1..1 run scoreboard players set doorStatus lobby 1
                        execute if score start intro matches 1..1 run fill 46 8 -179 50 4 -179 minecraft:air
                        execute if score start intro matches 1..1 run setblock 45 5 -180 minecraft:acacia_button[powered=false]
                        execute if score start intro matches 1..1 run effect give @a minecraft:invisibility 100000 255 true
                        execute if score start intro matches 1..1 run scoreboard players set start intro 0


              #Sub-Door Opening
                execute if score doorStatus lobby matches 1..1 run scoreboard players add driveTime lobby 1
                execute if score driveTime lobby matches 2..319 run tp @a 44 4 -189 -32.4 0.8
                execute if score driveTime lobby matches 2..319 run effect give @a minecraft:invisibility 100000 255 true
                #execute if score driveTime lobby matches 2..319 run gamemode spectator @a
                execute if score driveTime lobby matches 120..120 run execute as @a at @s run playsound minecraft:custom.van_drive player @s ~ ~ ~ 1000
                execute if score driveTime lobby matches 120.. run execute as @e[tag=van] at @s run particle minecraft:smoke ^ ^ ^4 .08 .08 .08 .01 5 force
                execute if score driveTime lobby matches 220.. run execute as @e[tag=van] at @s run tp @s ~ ~ ~.4
                  execute if score driveTime lobby matches 320..320 run tp @a 62.863 59 -312.478
                  execute if score driveTime lobby matches 320..320 run stopsound @a player minecraft:custom.van_drive
                  #execute if score driveTime lobby matches 320..320 run effect clear @a minecraft:invisibility
                  execute if score driveTime lobby matches 320..320 run clear @a
                  #execute if score driveTime lobby matches 320..320 run gamemode spectator @a











#Annoying Ghosts Sequences

  #Beginning bennedict

    scoreboard players add benHeadBob clocks 1

    execute if score benHeadBob clocks matches 1..1 run execute as @e[tag=ben] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b}]}
    execute if score benHeadBob clocks matches 1..1 run execute as @e[tag=ben1] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b}]}

    execute if score benHeadBob clocks matches 15..15 run execute as @e[tag=ben] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b}]}
    execute if score benHeadBob clocks matches 15..15 run execute as @e[tag=ben1] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",Count:1b}]}

    execute if score benHeadBob clocks matches 30..30 run scoreboard players set benHeadBob clocks 0


    #music
    execute if score benedict clocks matches 1..2151 run scoreboard players add intro Music 1
#    execute if score intro Music matches 1..1 run execute as @a at @s run playsound minecraft:game.spookyintro player @s ~ ~ ~ 1000
    execute if score intro Music matches 215.. run scoreboard players set intro Music 0

      #Benedict Talks
        execute if score driveTime lobby matches 320.. run scoreboard players add benedict clocks 1
        execute if score benedict clocks matches 1..1 run effect give @a minecraft:invisibility 1000 255 true
        execute if score benedict clocks matches 1..1 run scoreboard players set intro Music 0
          execute if score benedict clocks matches 1..1 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Alright, you may not already know this, but my name is Benedict. And as a person named Benedict, I am certain that you are wondering why you are here tonight.","color":"none"}]
          execute if score benedict clocks matches 1..1 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                            execute if score benedict clocks matches 1..999 run tp @a 62.863 59 -312.478 -17.3 0
            execute if score benedict clocks matches 200..200 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"If you are, then I'd be quite offended because I already explained to you like fifty times that you signed up to be a ghost hunter working for No Mo' Ghost Co.!","color":"none"}]
            execute if score benedict clocks matches 200..200 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
              execute if score benedict clocks matches 400..400 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Your first assignment is at this here Norman Estates, which our client has recently purchased, but while he was in the process of renovating it, he faced some... difficulties. ","color":"none"}]
              execute if score benedict clocks matches 400..400 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                execute if score benedict clocks matches 600..600 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Basically, the house is haunted. The owner tried to ignore the ghosts, but he was forced to come to us when one of them ate all of the paint brushes!","color":"none"}]
                execute if score benedict clocks matches 600..600 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                  execute if score benedict clocks matches 800..800 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"If eating paint brushes hadn't made it obvious already, these aren't your average ghosts. Yes, in fact, they are very annoying. Annoying Ghosts, if you will.","color":"none"}]
                  execute if score benedict clocks matches 800..800 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                    execute if score benedict clocks matches 1000..1000 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Alright, let me show you your equipment.","color":"none"}]
                    execute if score benedict clocks matches 1000..1000 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                              execute if score benedict clocks matches 1000..1199 run execute as @a at @s run tp @s 64.242 59 -310.83 -2.3 -2.6
                      execute if score benedict clocks matches 1200..1200 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"You have a few things: First, a vacuum cleaner. Right-click with the Suck-a-Munga 3000 and then hover over the ghost to begin sucking it up! ","color":"none"}]
                      execute if score benedict clocks matches 1200..1200 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                        execute if score benedict clocks matches 1200..1399 run execute as @a at @s run tp @s 67.081 59.00788 -311.484 17.4 -4.1
                      execute if score benedict clocks matches 1205..1205 run execute as @a[limit=1] at @s run summon item 66.5 60 -309.5 {NoGravity:1b,Age:2147483648,PickupDelay:32767,Tags:["vacuum_stand1"],Item:{id:"minecraft:light_gray_dye",Count:1b}}
                      #execute if score benedict clocks matches 1205..1205 run execute as @a[limit=1] at @s run execute as @e[tag=vacuum_stand1] at @s run particle minecraft:end_rod ~ ~.5 ~ .05 .05 .05 .25 20
                      #execute if score benedict clocks matches 1200..1200 run execute as @a at @s run replaceitem entity @a hotbar.4 minecraft:light_gray_dye{display:{Name:"{\"text\":\"Ghost Sucker 3000\",\"color\":\"gold\"}"}} 1
                      execute if score benedict clocks matches 1205..1205 run execute as @a at @s run execute as @a at @s run playsound minecraft:custom.vacuum_intro player @s ~ ~ ~ 1000
                        execute if score benedict clocks matches 1400..1400 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Second, you have this headset radio! With this, I'll be able to walk you through the entirety of the mansion whilst in the comfort of my own home! ","color":"none"}]
                        execute if score benedict clocks matches 1400..1400 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                                execute if score benedict clocks matches 1400..1400 run summon item 68.50 60.00 -310.5 {NoGravity:1b,Age:2147483648,PickupDelay:32767,Motion:[0.0,0.0,0.0],Tags:["headset_stand"],Item:{id:"minecraft:orange_dye",Count:1b}}
                                execute if score benedict clocks matches 1400..1599 run execute as @a at @s run tp @s 67.049 59.17286 -311.247 -65.2 0.2
                                #execute if score benedict clocks matches 1400..1400 run execute as @a at @s run execute as @e[tag=headset_stand] at @s run particle minecraft:end_rod ~ ~.5 ~ .05 .05 .05 .25 20
                          execute if score benedict clocks matches 1600..1600 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"You also have a nifty spooky ghost navigation bar that will lead you to each of your objectives!","color":"none"}]
                          execute if score benedict clocks matches 1600..1600 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                                execute if score benedict clocks matches 1600..1999 run execute as @a at @s run tp @s 62.863 59.1 -312.478 -17.3 0
                                execute if score benedict clocks matches 1600..1999 run kill @e[tag=vacuum_stand1]
                                execute if score benedict clocks matches 1600..1999 run kill @e[tag=headset_stand]
                            execute if score benedict clocks matches 1800..1800 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Anyway, I'll stay in touch with you through the radio. Alright then, I'm going to go now. ","color":"none"}]
                            execute if score benedict clocks matches 1800..1800 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                              execute if score benedict clocks matches 2000..2000 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"There should be a small path right beside the steps leading to the front door. This should take you directly to the basement door, which is where you'll begin your expedition. Have fun! ","color":"none"}]
                              execute if score benedict clocks matches 2000..2000 run execute as @a at @s run playsound minecraft:benedict.no_effects player @s ~ ~ ~ 1000
                                execute if score benedict clocks matches 2000..2075 run execute as @a at @s run tp @s 61.05 62.922 -370.671 119.7 26.9
                                execute if score benedict clocks matches 2076..2150 run execute as @a at @s run tp @s 43.090 59.57 -387.248 -80.4 11.9
                                  execute if score benedict clocks matches 2151..2151 run effect clear @a minecraft:invisibility
                                  execute if score benedict clocks matches 2151..2151 run gamemode adventure @a
                                  execute if score benedict clocks matches 2151..2151 run bossbar set minecraft:orbs visible false
                                  execute if score benedict clocks matches 2151..2151 run execute as @a at @s run tp @s 65.241 59 -319.224 19.8 -1.7
                                  execute if score benedict clocks matches 2151..2151 run summon zombie 64 59 -387 {NoGravity:0b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["bossGhost"],ArmorItems:[{},{},{},{id:"minecraft:purple_dye",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.followRange,Base:2}]}
                                  execute if score benedict clocks matches 2151.. run bossbar set minecraft:orbs players @a
                                  execute if score benedict clocks matches 2151..2151 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Find and capture a ghost!","color":"none"}]
                                  execute if score benedict clocks matches 2151..2151 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2
                                  execute if score benedict clocks matches 2151..2151 run bossbar set minecraft:orbs players @a
                                  execute if score benedict clocks matches 2151..2151 run bossbar set minecraft:orbs visible true
                                  execute if score benedict clocks matches 2151..2151 run title @a times 20 100 20
                                  execute if score benedict clocks matches 2151.. run scoreboard players set intro Music 0


                                #Helicopter Van
                                  execute if score benedict clocks matches 2200.. run kill @e[tag=ben]
                                  execute if score benedict clocks matches 2200.. run kill @e[tag=vacuum_stand1]
                                  execute if score benedict clocks matches 2200.. run kill @e[tag=headset_stand]
                                  execute if score benedict clocks matches 2200.. run stopsound @a player minecraft:game.spookyintro
                                  execute if score benedict clocks matches 2200..2200 run execute as @a at @s run playsound minecraft:custom.helicopter_takeoff player @s
                                  execute if score benedict clocks matches 2200..2364 run execute as @e[tag=van2] at @s run tp @s ~ ~.01 ~ ~15 ~
                                  execute if score benedict clocks matches 2364.. run execute as @e[tag=van2] at @s run tp @s ~ ~.25 ~ ~59 ~
                                  execute if score benedict clocks matches 2800.. run kill @e[tag=van2]


                                  #clear cosmetic items from player
                                  execute if score count playercount matches 1..1 run execute as @a at @s run execute store result score vacuum int run clear @a light_gray_dye 0
                                  execute if score count playercount matches 1..1 run execute as @a at @s if score vacuum int matches 2.. run clear @a light_gray_dye
                                    execute if score count playercount matches 1..1 run execute as @a at @s run execute store result score headset int run clear @a orange_dye 0
                                    execute if score count playercount matches 1..1 run execute as @a at @s if score headset int matches 2.. run clear @a orange_dye
                                      execute if score count playercount matches 1..1 run execute as @a at @s run execute store result score spectrum int run clear @a horn_coral 0
                                      execute if score count playercount matches 1..1 run execute as @a at @s if score spectrum int matches 2.. run clear @a horn_coral
                                        execute if score count playercount matches 1..1 run execute as @a at @s run execute store result score compass int run clear @a compass 0
                                        execute if score count playercount matches 1..1 run execute as @a at @s if score compass int matches 2.. run clear @a compass

                                        execute if score count playercount matches 2..2 run execute as @a at @s run execute store result score vacuum int run clear @a light_gray_dye 0
                                        execute if score count playercount matches 2..2 run execute as @a at @s if score vacuum int matches 3.. run clear @a light_gray_dye
                                          execute if score count playercount matches 2..2 run execute as @a at @s run execute store result score headset int run clear @a orange_dye 0
                                          execute if score count playercount matches 2..2 run execute as @a at @s if score headset int matches 3.. run clear @a orange_dye
                                            execute if score count playercount matches 2..2 run execute as @a at @s run execute store result score spectrum int run clear @a horn_coral 0
                                            execute if score count playercount matches 2..2 run execute as @a at @s if score spectrum int matches 3.. run clear @a horn_coral
                                              execute if score count playercount matches 2..2 run execute as @a at @s run execute store result score compass int run clear @a compass 0
                                              execute if score count playercount matches 2..2 run execute as @a at @s if score compass int matches 3.. run clear @a compass

                                              execute if score count playercount matches 3..3 run execute as @a at @s run execute store result score vacuum int run clear @a light_gray_dye 0
                                              execute if score count playercount matches 3..3 run execute as @a at @s if score vacuum int matches 4.. run clear @a light_gray_dye
                                                execute if score count playercount matches 3..3 run execute as @a at @s run execute store result score headset int run clear @a orange_dye 0
                                                execute if score count playercount matches 3..3 run execute as @a at @s if score headset int matches 4.. run clear @a orange_dye
                                                  execute if score count playercount matches 3..3 run execute as @a at @s run execute store result score spectrum int run clear @a horn_coral 0
                                                  execute if score count playercount matches 3..3 run execute as @a at @s if score spectrum int matches 4.. run clear @a horn_coral
                                                    execute if score count playercount matches 3..3 run execute as @a at @s run execute store result score compass int run clear @a compass 0
                                                    execute if score count playercount matches 3..3 run execute as @a at @s if score compass int matches 4.. run clear @a compass

                                                    execute if score count playercount matches 4..4 run execute as @a at @s run execute store result score vacuum int run clear @a light_gray_dye 0
                                                    execute if score count playercount matches 4..4 run execute as @a at @s if score vacuum int matches 5.. run clear @a light_gray_dye
                                                      execute if score count playercount matches 4..4 run execute as @a at @s run execute store result score headset int run clear @a orange_dye 0
                                                      execute if score count playercount matches 4..4 run execute as @a at @s if score headset int matches 5.. run clear @a orange_dye
                                                        execute if score count playercount matches 4..4 run execute as @a at @s run execute store result score spectrum int run clear @a horn_coral 0
                                                        execute if score count playercount matches 4..4 run execute as @a at @s if score spectrum int matches 5.. run clear @a horn_coral
                                                          execute if score count playercount matches 4..4 run execute as @a at @s run execute store result score compass int run clear @a compass 0
                                                          execute if score count playercount matches 4..4 run execute as @a at @s if score compass int matches 5.. run clear @a compass

                                                          execute if score count playercount matches 5..5 run execute as @a at @s run execute store result score vacuum int run clear @a light_gray_dye 0
                                                          execute if score count playercount matches 5..5 run execute as @a at @s if score vacuum int matches 6.. run clear @a light_gray_dye
                                                            execute if score count playercount matches 5..5 run execute as @a at @s run execute store result score headset int run clear @a orange_dye 0
                                                            execute if score count playercount matches 5..5 run execute as @a at @s if score headset int matches 6.. run clear @a orange_dye
                                                              execute if score count playercount matches 5..5 run execute as @a at @s run execute store result score spectrum int run clear @a horn_coral 0
                                                              execute if score count playercount matches 5..5 run execute as @a at @s if score spectrum int matches 6.. run clear @a horn_coral
                                                                execute if score count playercount matches 5..5 run execute as @a at @s run execute store result score compass int run clear @a compass 0
                                                                execute if score count playercount matches 5..5 run execute as @a at @s if score compass int matches 6.. run clear @a compass

      #Inventory keep
        execute as @a at @s if score benedict clocks matches 2151.. unless score t evilGhostChosen matches 50.. run replaceitem entity @s hotbar.4 minecraft:light_gray_dye{display:{Name:"{\"text\":\"Suck-o-Munga 3000\",\"color\":\"gold\"}"}} 1
        execute as @a[nbt=!{SelectedItem:{id:"minecraft:light_gray_dye"}}] at @s if score benedict clocks matches 2151.. run clear @s minecraft:carrot_on_a_stick
        execute if score Sequence ghost_sequences matches 16..16 run clear @a carrot_on_a_stick
        execute unless score Sequence ghost_sequences matches 16..16 run execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}}] at @s if score benedict clocks matches 2151.. run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick 1
        execute as @a at @s if score benedict clocks matches 2151.. unless score t evilGhostChosen matches 350.. unless score subSequence subBattle matches 4.. unless score active credits2 matches 1..1 run execute as @a at @s run replaceitem entity @s armor.head minecraft:orange_dye 1

        #prevent floor_throw
        execute if score benedict clocks matches 2151.. run kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_dye"}}]
        execute if score benedict clocks matches 2151.. run kill @e[type=item,nbt={Item:{id:"minecraft:horn_coral"}}]
        execute if score benedict clocks matches 2151.. run kill @e[type=item,nbt={Item:{id:"minecraft:compass"}}]



        #Ghosts exist
        scoreboard players set ghost_exists ghost_sequences 0
          execute as @e[tag=bossGhost] at @s run scoreboard players set ghost_exists ghost_sequences 1

      #Vacuum Mechanics

        #armor stand
          scoreboard players add armor_stand_timer vacuum 1
          execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}},scores={right_click=1..1}] at @s run summon minecraft:armor_stand ^ ^ ^3 {Tags:["vacuum"],NoGravity:1b,Small:1b,Invisible:1b}
          #execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}},scores={right_click=1..1}] at @s run effect give @s minecraft:slowness 1 1 true
          execute if score armor_stand_timer vacuum matches 5..5 run kill @e[tag=vacuum,type=armor_stand]
          execute if score armor_stand_timer vacuum matches 5.. run scoreboard players set armor_stand_timer vacuum 0
          execute as @a[scores={right_click=1..1},nbt=!{SelectedItem:{id:"minecraft:light_gray_dye"}}] at @s run scoreboard players set @s right_click 2
            execute as @a[scores={right_click=2..}] at @s run scoreboard players reset @s vacuum.startup
            execute as @a[scores={right_click=2..}] at @s run scoreboard players reset @s vacuum.loop
            execute as @a[scores={right_click=2..}] at @s run stopsound @s player minecraft:vacuum.loop
            execute as @a[scores={right_click=2..}] at @s run stopsound @s player minecraft:ghost.suck
            execute as @a[scores={right_click=2..}] at @s run playsound minecraft:vacuum.end player @s ~ ~ ~ 1000
            execute as @a[scores={right_click=2..}] at @s run effect clear @s slowness
            scoreboard players set @a[scores={right_click=2..}] right_click 0



              #sounds

                execute as @a[scores={right_click=1..1},tag=activator] at @s run scoreboard players add @s vacuum.startup 1
                execute as @a[scores={vacuum.startup=1..1},tag=activator] at @s run playsound minecraft:vacuum.start player @s ~ ~ ~ 1000
                execute as @a[scores={vacuum.startup=1..1},tag=activator] at @s run effect give @s minecraft:slowness 10000 1 true
                  execute as @a[scores={vacuum.startup=25..},tag=activator] at @s run scoreboard players add @s vacuum.loop 1
                  execute as @a[scores={vacuum.startup=25..},tag=activator] at @s run particle minecraft:ambient_entity_effect ~ ~1 ~ .01 .01 .01 .01 1
                  execute as @a[scores={vacuum.loop=1..1},tag=activator] at @s run playsound minecraft:vacuum.loop player @s ~ ~ ~ 1000
                  execute as @a[scores={vacuum.loop=225..},tag=activator] at @s run scoreboard players reset @s vacuum.loop



                  #sucking bossGhost

                  #add boss_target and spin
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run tag @e[distance=..3,tag=bossGhost] add boss_target
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=boss_target,limit=1] at @s run scoreboard players add suck_animation_boss vacuum 1
                  #execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=boss_target] at @s run tp @s ~ ~ ~ ~40 ~
                  execute as @e[tag=boss_target] at @s run tp @s ~ ~ ~ ~40 ~

                  #kill boss_target
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=boss_target,limit=1] at @s run particle minecraft:cloud ~ ~.5 ~ .5 .5 .5 .01 3
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=boss_target,limit=1] at @s run particle minecraft:smoke ~ ~.5 ~ .5 .5 .5 .01 1
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 158..158 run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1000 0
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 158..158 run playsound minecraft:entity.player.breath player @a ~ ~ ~ 1000
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 158..158 unless score Sequence ghost_sequences matches 19..19 run playsound minecraft:game.fanfare player @a ~ ~ ~ 1000
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=boss_target,limit=1] at @s facing entity @a[tag=activator,limit=1] feet run tp @s ^ ^ ^.03
                  execute as @a[scores={right_click=1..1},tag=activator] at @s unless score Sequence ghost_sequences matches 16..16 run execute if score suck_animation_boss vacuum matches 158..158 run scoreboard players add progress bossbar 1
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 158..158 unless score Sequence ghost_sequences matches 19..19 unless score fightActive benedictChosen matches 1..1 run title @a title ["",{"text":"Objective Complete","color":"green"}]

                  #carpet ghost
                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 158..158 if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 480.. run tellraw @a ["",{"text":"[Objective Complete] ","color":"green"},{"text":"Find a way to capture Carpet Ghost.","color":"none"}]
                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 158..158 if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 480.. run scoreboard players set Sequence ghost_sequences 29
                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 158..158 if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 480.. run scoreboard players set benedict_talking ghost_sequences 0

                  #execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 158..158 unless score Sequence ghost_sequences matches 19..19 run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1000
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 160.. run kill @e[tag=boss_target,limit=1]
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 160.. run kill @e[tag=ghost_villager]
                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation_boss vacuum matches 160.. run scoreboard players set suck_animation_boss vacuum 0
                  #execute if score suck_animation_boss vacuum matches 77.. run scoreboard players set @a right_click 2
                  execute as @a[scores={right_click=0..0},tag=activator] at @s run scoreboard players set suck_animation_boss vacuum 0

                  tag @e[tag=boss_target] remove boss_target



                  #debris suck






              #sucking Generic Ghost

                  #add target and spin
                    execute as @a[scores={right_click=1..1},tag=activator] at @s run tag @e[distance=..3,type=zombie,tag=ghost] add target
                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=target,limit=1] at @s run scoreboard players add suck_animation vacuum 1
                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=target,limit=1] at @s run tp @s ~ ~ ~ ~40 ~

                      #kill target

                        #execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 1..1 run playsound minecraft:ghost.suck player @s ~ ~ ~ 1000
                        execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=target] at @s run particle minecraft:cloud ~ ~.5 ~ .5 .5 .5 .01 3
                        execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=target,limit=1] at @s run particle minecraft:smoke ~ ~.5 ~ .5 .5 .5 .01 1
                        execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 75..75 run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1000 0
                        execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 75..75 run playsound minecraft:entity.player.breath player @a ~ ~ ~ 1000
                        execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=ghost] at @s facing entity @a[tag=activator,limit=1] feet run tp @s ^ ^ ^.03
                        execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 77.. run kill @e[tag=target]
                        execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 77.. run kill @e[tag=ghost_villager]
                          #execute if score suck_animation vacuum matches 77.. run scoreboard players set @a right_click 2
                          execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if entity @e[tag=ghost,distance=4..] as @a at @s run scoreboard players set suck_animation vacuum 3
                          execute as @a[scores={right_click=0..0},tag=activator] at @s run scoreboard players set suck_animation vacuum 0




                          #sucking Generic Ghost

                              #add target and spin
                                execute as @a[scores={right_click=1..1},tag=activator] at @s run tag @e[distance=..3,type=zombie,tag=miniGhost,limit=1] add minitarget
                                execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=minitarget,limit=1] at @s run scoreboard players add suck_animation vacuum 1
                                execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=minitarget,limit=1] at @s run tp @s ~ ~ ~ ~40 ~

                                  #kill target

                                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=minitarget] at @s run particle minecraft:cloud ~ ~.5 ~ .5 .5 .5 .01 3
                                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=minitarget,limit=1] at @s run particle minecraft:smoke ~ ~.5 ~ .5 .5 .5 .01 1
                                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 75..75 run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1000 0
                                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 75..75 run playsound minecraft:entity.player.breath player @a ~ ~ ~ 1000
                                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=ghost] at @s facing entity @a[tag=activator,limit=1] feet run tp @s ^ ^ ^.03
                                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 77.. run kill @e[tag=minitarget,limit=1]
                                    execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 77.. run kill @e[tag=ghost_villager,limit=1]
                                    execute if score suck_animation vacuum matches 77.. run scoreboard players set suck_animation vacuum 0
                                      #execute if score suck_animation vacuum matches 77.. run scoreboard players set @a right_click 2
                                      execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if entity @e[tag=ghost,distance=4..] as @a at @s run scoreboard players set suck_animation vacuum 3
                                      execute as @a[scores={right_click=0..0},tag=activator] at @s run scoreboard players set suck_animation vacuum 0


                                      #sucking debris

                                          #add target and spin
                                            execute as @a[scores={right_click=1..1},tag=activator] at @s run tag @e[distance=..3,type=item,nbt={Item:{id:"minecraft:stone_button",Count:1b}},tag=debris] add debrisTarget
                                            execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=debrisTarget,limit=1] at @s run scoreboard players add suck_animation vacuum 1
                                            execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=debrisTarget,limit=1] at @s run tp @s ~ ~ ~ ~40 ~

                                              #kill target

                                                execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=debrisTarget] at @s run particle minecraft:cloud ~ ~.5 ~ .5 .5 .5 .01 1
                                                execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=debrisTarget,limit=1] at @s run particle minecraft:smoke ~ ~.5 ~ .5 .5 .5 .01 1
                                                #execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 35..35 run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1000 0
                                                #execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 35..35 run playsound minecraft:entity.player.breath player @a ~ ~ ~ 1000
                                                execute as @a[scores={right_click=1..1},tag=activator] at @s run execute as @e[tag=debris] at @s facing entity @a[tag=activator,limit=1] feet run tp @s ^ ^ ^.03
                                                execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 35.. run kill @e[tag=debrisTarget]
                                                execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 35.. run kill @e[tag=debris]
                                                execute as @e[tag=debrisTarget] as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 34..34 run execute as @a at @s run playsound minecraft:entity.chicken.egg player @s ~ ~ ~ 1000 2
                                                execute as @e[tag=debrisTarget] as @a[scores={right_click=1..1},tag=activator] at @s run execute if score suck_animation vacuum matches 34..34 run execute as @a at @s run tellraw @a[tag=activator] ["",{"text":"*Debris piece collected!","color":"gray"}]
                                                  #execute if score suck_animation vacuum matches 35.. run scoreboard players set @a right_click 2
                                                  execute as @a[scores={right_click=1..1},tag=activator] at @s run execute if entity @e[tag=debrisTarget,distance=4..] as @a at @s run scoreboard players set suck_animation vacuum 3
                                                  execute as @a[scores={right_click=0..0},tag=activator] at @s run scoreboard players set suck_animation vacuum 0







                #on and off

                  title @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}},scores={right_click=1..1}] actionbar ["",{"text":"Your vacuum is now on!","color":"green"}]
                  tag @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}},scores={right_click=1..1}] add activator
                  title @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:light_gray_dye"}},scores={right_click=0..0}] actionbar ["",{"text":"Your vacuum is now off!","color":"red"}]
                  #execute as @a[scores={right_click=0..0}] at @s run effect clear @s minecraft:slowness
                  execute as @a[scores={right_click=0..0}] at @s run tag @e[tag=target] remove target
                  execute as @a[scores={right_click=0..0}] at @s run tag @s remove activator


#Orbs




#Ghost Sequences - Determines which ghosts are active at what time

  #Key:

    #1: Tutorial Message from benedict

    #2:

    #Ghost 1
      execute as @e[tag=bossGhost] at @s if score Sequence ghost_sequences matches 0..0 run execute as @a[distance=..9] at @s run tellraw @s ["",{"text":"Benedict: ","color":"red"},{"text":"Hey, it looks like that's your first ghost! Hold the Suck-a-Munga 3000 in your hand and right-click it to activate it. Then, once it's on, position yourself close to the ghost, wait a few moments, and boom! You'll have captured the ghost!","color":"none"}]
      execute as @e[tag=bossGhost] at @s if score Sequence ghost_sequences matches 0..0 run execute as @a[distance=..9] at @s run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
      execute as @e[tag=bossGhost] at @s if score Sequence ghost_sequences matches 0..0 run execute as @a[distance=..9] at @s run scoreboard players set Sequence ghost_sequences 1
      execute if score Sequence ghost_sequences matches 1..1 if score ghost_exists ghost_sequences matches 0..0 run scoreboard players set Sequence ghost_sequences 2
        execute if score Sequence ghost_sequences matches 2..2 run tellraw @a ["",{"text":"[Objective Complete] ","color":"green"},{"text":"Capture a ghost!","color":"none"}]
        execute if score Sequence ghost_sequences matches 2..2 run scoreboard players set Sequence ghost_sequences 3
          execute if score Sequence ghost_sequences matches 3..3 run scoreboard players add benedict_talking ghost_sequences 1
          execute if score Sequence ghost_sequences matches 3..3 if score benedict_talking ghost_sequences matches 139..139 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Well done, your first captured ghost! Alright, I’m looking at a map of the house at the moment, and it looks like your next stop should be the pool. I've rerouted your navigation bar to point toward it. Try looking there for any paranormal activity!","color":"none"}]
          execute if score Sequence ghost_sequences matches 3..3 if score benedict_talking ghost_sequences matches 139..139 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
          execute if score Sequence ghost_sequences matches 3..3 if score benedict_talking ghost_sequences matches 139..139 run summon zombie 32 53 -399 {Silent:1b,PersistenceRequired:1b,NoAI:0b,Tags:["hotTubGhost"],ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",Count:1b}],ActiveEffects:[{Id:13b,Amplifier:255b,Duration:1000000,ShowParticles:0b},{Id:14b,Amplifier:255b,Duration:10000000,ShowParticles:0b}],Attributes:[{Name:generic.followRange,Base:0}],Invulnerable:1b,NoGravity:1b}
          execute if score Sequence ghost_sequences matches 3..3 if score benedict_talking ghost_sequences matches 200..200 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Capture another ghost!","color":"none"}]
          execute if score Sequence ghost_sequences matches 3..3 if score benedict_talking ghost_sequences matches 200..200 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2



          execute if score Sequence ghost_sequences matches 3..3 if score benedict_talking ghost_sequences matches 200..200 run scoreboard players set Sequence ghost_sequences 4
          execute if score Sequence ghost_sequences matches 4..4 run scoreboard players set benedict_talking ghost_sequences 0

            #hotTubGhost
              execute as @e[tag=hotTubGhost,limit=1] at @s if score Sequence ghost_sequences matches 4..4 run execute as @a[distance=..6] at @s run scoreboard players set Sequence ghost_sequences 5
                execute if score Sequence ghost_sequences matches 5..5 run scoreboard players add benedict_talking ghost_sequences 1
                execute if score benedict_talking ghost_sequences matches 2..2 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Watch out, there's a, uh, ghost in the hot tub?","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 2..2 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                execute if score benedict_talking ghost_sequences matches 200..200 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Hot Tub Ghost: ","color":"yellow"},{"text":"Hey, my name's Hot Tub Ghost, I live in a hot tub!","color":"none"}].
                execute if score benedict_talking ghost_sequences matches 200..200 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run execute as @a at @s run playsound minecraft:ghost.type.1 player @s ~ ~ ~ 1000
                  execute if score benedict_talking ghost_sequences matches 400..400 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Can you just vacuum him up right now, instead of letting him do his annoying little introduction?","color":"none"}]
                  execute if score benedict_talking ghost_sequences matches 400..400 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                execute if score benedict_talking ghost_sequences matches 600..600 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Hot Tub Ghost: ","color":"yellow"},{"text":"What did you say? Vacuum me up? Hah! You can't do that while I'm lounging in this comfortable hot tub. Although, I guess it isn't a very hot tub, if you know what I mean, without a working heater.","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 600..600 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:ghost.type.1 player @s ~ ~ ~ 1000
                execute if score benedict_talking ghost_sequences matches 800..800 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Hot Tub Ghost: ","color":"yellow"},{"text":"I'd like to take a nap right about now, but I'll need some hot water. Can you turn on the generator so I can have a nice hot tub?","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 800..800 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:ghost.type.1 player @s ~ ~ ~ 1000
                execute if score benedict_talking ghost_sequences matches 1000..1000 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Hot Tub Ghost: ","color":"yellow"},{"text":"The room which houses the generator's main power switch can't be accessed through the door because it's locked, so you'll need to swim through the water filter to get in.","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 1000..1000 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:ghost.type.1 player @s ~ ~ ~ 1000
                execute if score benedict_talking ghost_sequences matches 1200..1200 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Hot Tub Ghost: ","color":"yellow"},{"text":"From there you can access the switch and turn on the power for the natatorium, which means nice and hot water for me.","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 1200..1200 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:ghost.type.1 player @s ~ ~ ~ 1000
                execute if score benedict_talking ghost_sequences matches 1400..1400 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Hey, if he falls asleep you could probably vacuum him up.","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 1400..1400 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                execute if score benedict_talking ghost_sequences matches 1600..1600 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Hot Tub Ghost: ","color":"yellow"},{"text":"What did you say?","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 1600..1600 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:ghost.type.1 player @s ~ ~ ~ 1000
                execute if score benedict_talking ghost_sequences matches 1800..1800 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Uhh, nothing, just, just talking about walnuts 'n' stuff, y'know.","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 1800..1800 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                execute if score benedict_talking ghost_sequences matches 2000..2000 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Hot Tub Ghost: ","color":"yellow"},{"text":"Oh, okay. Well, go get to it! My beautiful ghost butt is about to freeze itself off!","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 2000..2000 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:ghost.type.1 player @s ~ ~ ~ 1000

                execute if score benedict_talking ghost_sequences matches 2100..2100 if score Sequence ghost_sequences matches 5..5 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Find the ","color":"white"},{"text":"Utility Room ","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"A room with utilities"}]}}},{"text":"and activate the natatorium's backup generator!","color":"none"}]
                execute if score benedict_talking ghost_sequences matches 2100..2100 if score Sequence ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2

                execute if score benedict_talking ghost_sequences matches 2100..2100 if score Sequence ghost_sequences matches 5..5 run scoreboard players set Sequence ghost_sequences 6

                  #Generator Lever
                    execute if score Sequence ghost_sequences matches 6..6 if block 56 55 -402 lever[powered=true] run scoreboard players set Sequence ghost_sequences 7
                    execute if score Sequence ghost_sequences matches 7..7 run execute as @a at @s run playsound minecraft:generator.startup player @s ~ ~ ~ 10000
                    execute if score Sequence ghost_sequences matches 7..7 run setblock 53 58 -402 minecraft:redstone_lamp[lit=true]
                    execute if score Sequence ghost_sequences matches 7..7 run setblock 45 54 -402 iron_door[facing=west,open=true,half=lower]
                    execute if score Sequence ghost_sequences matches 7..7 run setblock 45 55 -402 iron_door[facing=west,open=true,half=upper]
                    execute if score Sequence ghost_sequences matches 7..7 run title @a title ["",{"text":"Objective Complete","color":"green"}]
                    execute if score Sequence ghost_sequences matches 7..7 run playsound minecraft:game.fanfare player @a ~ ~ ~ 1000
                    #execute if score Sequence ghost_sequences matches 7..7 run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1000
                    execute if score Sequence ghost_sequences matches 7..7 run tellraw @a ["",{"text":"[Objective Complete] ","color":"green"},{"text":"Activate the natatorium generator.","color":"none"}]
                    execute if score Sequence ghost_sequences matches 7..7 run execute as @a at @s run playsound block.iron_door.open player @s ~ ~ ~ 1000
                    execute if score Sequence ghost_sequences matches 7.. run execute as @e[tag=hBubble,sort=random,limit=2] at @s run particle minecraft:cloud ~ ~1 ~ 1 1 1 .01 1 force
                    execute if score Sequence ghost_sequences matches 7..7 run data merge entity @e[tag=hotTubGhost,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b}],NoAI:1b}
                    execute if score Sequence ghost_sequences matches 7..7 run scoreboard players set Sequence ghost_sequences 8
                    execute if score Sequence ghost_sequences matches 8..8 run scoreboard players set benedict_talking ghost_sequences 0
                    execute if score Sequence ghost_sequences matches 8..8 as @e[tag=hotTubGhost,limit=1] at @s run execute as @a[distance=..6] at @s run playsound minecraft:ghosts.snore player @a[distance=..30] ~ ~ ~ 15

                    execute if score Sequence ghost_sequences matches 8..8 as @e[tag=hotTubGhost,limit=1] at @s run tellraw @a[distance=..6] ["",{"text":"Benedict: ","color":"red"},{"text":"Wow, that was fast, he's already sleeping! You should be in the clear to suck him up!","color":"none"}]
                    execute if score Sequence ghost_sequences matches 8..8 as @e[tag=hotTubGhost,limit=1] at @s run execute as @a[distance=..6] at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                    execute if score Sequence ghost_sequences matches 8..8 as @e[tag=hotTubGhost] at @s run tag @e[tag=hotTubGhost] add bossGhost
                    execute if score Sequence ghost_sequences matches 8..8 as @e[tag=hotTubGhost,limit=1] at @s run execute as @a[distance=..6] at @s run scoreboard players set Sequence ghost_sequences -4

                    scoreboard players set HTG ghost_sequences 0
                    execute if score Sequence ghost_sequences matches -4..-4 as @e[tag=hotTubGhost,limit=1] at @s run scoreboard players set HTG ghost_sequences 1
                    execute if score Sequence ghost_sequences matches -4..-4 run execute if score HTG ghost_sequences matches 0..0 if score timer newstuff matches 5..5 run tellraw @a ["",{"text":"[Objective Complete] ","color":"green"},{"text":"Capture Hot Tub Ghost!","color":"none"}]

              #Timer thing that guides the player in another direction
                  execute if score Sequence ghost_sequences matches -4..-4 if score HTG ghost_sequences matches 0..0 run scoreboard players add timer newstuff 1
                  execute if score Sequence ghost_sequences matches -4..-4 if score HTG ghost_sequences matches 0..0 if score timer newstuff matches 120..120 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Congratulations! You captured another ghost! Before we leave the basement, we should probably head in the direction of the kitchen to be sure we haven’t missed anything. I’ve plotted it on your navigation bar.","color":"none"}]
                  execute if score Sequence ghost_sequences matches -4..-4 if score HTG ghost_sequences matches 0..0 if score timer newstuff matches 120..120 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                  execute if score Sequence ghost_sequences matches -4..-4 if score HTG ghost_sequences matches 0..0 if score timer newstuff matches 280..280 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Search for more ghosts in the basement!","color":"none"}]
                  execute if score Sequence ghost_sequences matches -4..-4 if score HTG ghost_sequences matches 0..0 if score timer newstuff matches 280..280 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2

                    execute if score Sequence ghost_sequences matches -4..-4 if score timer newstuff matches 280.. run execute if score HTG ghost_sequences matches 0..0 run scoreboard players set Sequence ghost_sequences 9

                    #init Ham Jerry
                    execute if score Sequence ghost_sequences matches 9..9 run function hamjerryrest
                    execute if score Sequence ghost_sequences matches 9..9 run execute as @a[limit=1] at @s run summon armor_stand 90 59 -412.6 {NoGravity:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ham_jerry"],ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b}],Rotation:[0f,0f]}
                    execute if score Sequence ghost_sequences matches 9..10 run execute as @e[tag=ham_jerry] at @s run tp @s ~ ~0 ~ 180 ~
                    execute if score Sequence ghost_sequences matches 9..9 run scoreboard players set Sequence ghost_sequences 10
                    execute if score Sequence ghost_sequences matches 10..10 run scoreboard players set benedict_talking ghost_sequences 0
                    execute if score Sequence ghost_sequences matches 10..10 run execute as @a at @s run execute as @e[tag=ham_jerry,distance=..15] at @s run scoreboard players set Sequence ghost_sequences 11




                    #Ham Jerry

                    #increment ghost_sequences score by one
                    execute if score Sequence ghost_sequences matches 11..11 run scoreboard players add benedict_talking ghost_sequences 1

                    #define music and variables
                    execute as @e[tag=snowball] at @s run effect give @p[distance=..1] minecraft:instant_damage 1 254 true
                    execute if score Sequence ghost_sequences matches 12..12 run scoreboard players add ham_jerry_theme Music 1
                    execute if score ham_jerry_theme Music matches 1121..1121 run scoreboard players set ham_jerry_theme Music 0
                    execute if score ham_jerry_theme Music matches 2..2 run execute as @a at @s run playsound minecraft:ghost.ham_jerry_theme player @s ~ ~ ~ 1000
                    execute if score Sequence ghost_sequences matches ..10 run scoreboard players set ham_jerry_theme Music 0
                      execute if score Sequence ghost_sequences matches 13..13 if score ham_jerry_boss Music matches 720.. run scoreboard players set ham_jerry_boss Music 0
                      execute if score ham_jerry_boss Music matches 2..2 run execute as @a at @s run playsound minecraft:ghost.ham_jerry_boss player @s ~ ~ ~ 1000

                      #Ham jerry burping introduction
                      execute if score benedict_talking ghost_sequences matches 1..1 if score Sequence ghost_sequences matches 11..11 run execute as @a at @s run playsound minecraft:ghost.hamjerryhi player @s ~ ~ ~ 1000
                      execute if score Sequence ghost_sequences matches 11..11 if score benedict_talking ghost_sequences matches 1..1 run fill 79 60 -418 79 59 -418 barrier
                      execute if score benedict_talking ghost_sequences matches 123..123 if score Sequence ghost_sequences matches 11..11 run tellraw @a ["",{"text":"?????: ","color":"yellow"},{"text":"Wow, this salami is so good!","color":"none"}]
                        execute if score benedict_talking ghost_sequences matches 250..250 if score Sequence ghost_sequences matches 11..11 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                        execute if score benedict_talking ghost_sequences matches 250..250 if score Sequence ghost_sequences matches 11..11 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"What was that? It sounded like it came from the kitchen. It could be a ghost. Let's go check it out. ","color":"none"}]
                        execute if score Sequence ghost_sequences matches 11..11 as @e[tag=ham_jerry] at @s run execute as @a[distance=..5] at @s run scoreboard players set benedict_talking ghost_sequences 0
                        execute if score benedict_talking ghost_sequences matches 123.. if score Sequence ghost_sequences matches 11..11 run fill 79 60 -418 79 59 -418 air
                          execute as @e[tag=ham_jerry] at @s if score Sequence ghost_sequences matches 11..11 run execute as @a[distance=..5] at @s run scoreboard players set Sequence ghost_sequences 12

                        #init ham jerry dialogue sequence
                          execute if score Sequence ghost_sequences matches 12..13 run scoreboard players add benedict_talking ghost_sequences 1
                      execute if score Sequence ghost_sequences matches 12..12 if score benedict_talking ghost_sequences matches 1..1 run setblock 92 61 -416 minecraft:wall_torch
                      execute if score Sequence ghost_sequences matches 12..12 if score benedict_talking ghost_sequences matches 1..1 run setblock 86 61 -427 minecraft:wall_torch[facing=south]
                      execute if score Sequence ghost_sequences matches 12..12 run execute as @e[tag=ham_jerry] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..18]
                      execute if score Sequence ghost_sequences matches 12..12 if score benedict_talking ghost_sequences matches 1..1 run scoreboard players set ham_jerry_theme Music 1120


                      execute if score Sequence ghost_sequences matches 13..13 run execute as @a at @s run stopsound @s player minecraft:ghost.ham_jerry_theme


                      #ham jerry takling
                      execute if score benedict_talking ghost_sequences matches 5..5 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"Hi, I’m Ham Jerry and really like eating salami!","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 5..5 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 100..100 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"What?","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 100..100 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 200..200 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"Hey, do you want to know why they call me Ham Jerry?","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 200..200 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 400..400 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Is it because you like eating ham?","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 400..400 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 600..600 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"Distasteful much? No, it’s because I eat salami slices!","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 600..600 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 750..750 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"That doesn't make much sense.","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 750..750 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 850..850 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"It makes sense to me!","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 850..850 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 1050..1050 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"Hey, what the heck? I had like six more slices of salami and now they're just gone! Did you eat them?","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 1050..1050 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 1200..1200 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Why do you think they would eat your old, rotten salami? Besides, company policy requires that I fire any employee who eats rotten salami. I'm sure my ghost hunters care more about their jobs than some dumb meat slices.","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 1200..1200 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 1450..1450 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"Of course they did! You're a salami-eating liar!","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 1450..1450 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 1550..1550 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Why would you ask for my opinion if it didn't matter to you?","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 1550..1550 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 1650..1650 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"Because you're annoying and also ate my salami!","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 1650..1650 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 1750..1750 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"I'm telling you we did not eat the salami. Look, do you want us to go to the store and buy more for you?","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 1750..1750 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 1900..1900 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"No! I am really mad and nothing you do will be able to calm me down!","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 1900..1900 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 2050..2050 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Why are you even mad? There is ham everywhere, and isn't ham the exact same thing as salami, just with a different name?","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 2050..2050 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 2250..2250 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"No! Ham is not the same thing as salami. Are you some kind of meat-racist?","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 2250..2250 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 2350..2350 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Alright-","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 2350..2350 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 2400..2400 if score Sequence ghost_sequences matches 12..12 run tellraw @a ["",{"text":"Ham Jerry: ","color":"yellow"},{"text":"I am done with this! You took my salami, and now you will face the wrath of my magical flying ham slices!","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 2400..2400 if score Sequence ghost_sequences matches 12..12 run scoreboard players set ham_jerry_boss Music 0
                      execute if score benedict_talking ghost_sequences matches 2400..2400 if score Sequence ghost_sequences matches 12..12 run setworldspawn 89 59 -424
                      execute if score benedict_talking ghost_sequences matches 2400..2400 if score Sequence ghost_sequences matches 12..12 run spawnpoint @a 89 59 -424
                      execute if score benedict_talking ghost_sequences matches 2400..2400 if score Sequence ghost_sequences matches 12..12 run execute as @a at @s run playsound minecraft:ghost.hamjerry player @s ~ ~ ~ 1000

                      execute if score benedict_talking ghost_sequences matches 2500..2500 if score Sequence ghost_sequences matches 13..13 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Vacuum up Ham Jerry!","color":"none"}]
                      execute if score benedict_talking ghost_sequences matches 2500..2500 if score Sequence ghost_sequences matches 13..13 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2

                      #ham jerry boss battle initiation
                      execute if score benedict_talking ghost_sequences matches 2400.. if score Sequence ghost_sequences matches 12..12 run scoreboard players set ham_jerry_boss Music 0
                      execute if score benedict_talking ghost_sequences matches 2400..2400 if score Sequence ghost_sequences matches 12..12 run scoreboard players set Sequence ghost_sequences 13
                      execute if score benedict_talking ghost_sequences matches 2400.. if score Sequence ghost_sequences matches 13..13 run scoreboard players add ham_jerry_boss Music 1
                          execute if score benedict_talking ghost_sequences matches 2500.. if score Sequence ghost_sequences matches 13..13 run tag @e[tag=ham_jerry] add boss_target
                          execute if score benedict_talking ghost_sequences matches 2500.. if score Sequence ghost_sequences matches 13..13 run tag @e[tag=ham_jerry] add bossGhost
                          execute if score benedict_talking ghost_sequences matches 2500.. if score Sequence ghost_sequences matches 13..13 run scoreboard players set Sequence ghost_sequences 13

                          #ham jerry boss battle
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score Sequence ghost_sequences matches 13..13 run effect clear @a saturation
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score Sequence ghost_sequences matches 13..13 run execute as @e[tag=snowball] at @s facing entity @p[distance=..18] feet run tp @s ^ ^ ^.25
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score Sequence ghost_sequences matches 13..13 run execute as @e[tag=snowball] at @s run effect give @a[distance=..3,limit=1] minecraft:instant_damage 1
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score Sequence ghost_sequences matches 13..13 run execute as @a at @s run execute as @e[tag=snowball,distance=...25] at @s run kill @s

                          #collision detection
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score Sequence ghost_sequences matches 13..13 run execute as @e[tag=snowball] at @s run execute if block ~ ~1 ~ minecraft:cobblestone run kill @s
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score Sequence ghost_sequences matches 13..13 run execute as @e[tag=snowball] at @s run execute if block ~ ~1 ~ minecraft:iron_bars run kill @s
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score Sequence ghost_sequences matches 13..13 run execute as @e[tag=snowball] at @s run execute if block ~ ~1 ~ minecraft:spruce_door run kill @s
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score Sequence ghost_sequences matches 13..13 run execute as @e[tag=ham_jerry] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..18]
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score Sequence ghost_sequences matches 13..13 run scoreboard players add hj_fire ghost_sequences 1
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score hj_fire ghost_sequences matches 75..75 run execute as @e[tag=salami_spawn,sort=random,limit=1] at @s run summon armor_stand ~ ~.15 ~ {Invisible:1b,PersistenceRequired:1b,Tags:["snowball"],ArmorItems:[{},{},{},{id:"minecraft:snowball",Count:1b}]}
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score hj_fire ghost_sequences matches 75..75 run execute as @a at @s run playsound minecraft:ui.toast.in player @s ~ ~ ~ 1000 2
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute if score hj_fire ghost_sequences matches 75.. run scoreboard players set hj_fire ghost_sequences 0
                          execute if score benedict_talking ghost_sequences matches 2500.. run scoreboard players set hamJerry ghost_sequences 0
                          execute if score benedict_talking ghost_sequences matches 2500.. run execute as @e[tag=ham_jerry] at @s run scoreboard players set hamJerry ghost_sequences 1


                        #subsequent to death of ham jerry
                        scoreboard players set hamJerry ghost_sequences 0
                        execute as @e[tag=ham_jerry] at @s run scoreboard players set hamJerry ghost_sequences 1
                        execute if score Sequence ghost_sequences matches 13..13 run execute if score hamJerry ghost_sequences matches 0..0 run tellraw @a ["",{"text":"[Objective Complete] ","color":"green"},{"text":"Vacuum up Ham Jerry!","color":"none"}]

                        execute if score Sequence ghost_sequences matches 13..13 run execute if score hamJerry ghost_sequences matches 0..0 run scoreboard players set Sequence ghost_sequences 14
                        execute if score Sequence ghost_sequences matches 14..14 run stopsound @a player minecraft:ghost.ham_jerry_theme
                        execute if score Sequence ghost_sequences matches 14..14 run kill @e[tag=snowball]
                        execute if score Sequence ghost_sequences matches 14..14 run fill 98 60 -418 98 59 -418 air
                        execute if score Sequence ghost_sequences matches 14..14 run fill 81 61 -419 81 59 -417 air
                        execute if score Sequence ghost_sequences matches 14..14 run stopsound @a player minecraft:ghost.ham_jerry_boss

                        #display upstairs open after HJ death
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score hamJerry ghost_sequences matches 0..0 run scoreboard players add levelClear clocks 1

                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 50..50 run execute as @a at @s run summon armor_stand ~ ~ ~ {Tags:["player1"],Invisible:1b}

                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 100..220 run tp @a 68.7 65.88 -407.113 65.8 4.6
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 100..220 run gamemode spectator @a
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 150..150 run execute as @e[tag=blockade1] at @s run particle minecraft:cloud ~ ~ ~ 0 1 1 .01 100
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 150..150 run execute as @a at @s run playsound minecraft:entity.squid.squirt player @s ~ ~ ~ 1000
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 150..150 run fill 123 60 -401 123 59 -401 minecraft:air
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 150..150 run fill 66 67 -407 66 66 -406 minecraft:air
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 150..150 run fill 58 67 -407 58 66 -406 minecraft:air
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 150..150 run fill 88 59 -393 91 63 -393 air
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 150..150 run tellraw @a ["",{"text":"Floor 2 has been unlocked!","color":"gold","insertion":"tellraw @a %s"}]
                        execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 150..150 run kill @e[tag=blockade1]


                          execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 220..220 run execute as @a at @s run tp @s @e[tag=player1,type=armor_stand,limit=1]

                            execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 220..220 run kill @e[tag=player1,type=armor_stand]
                            execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 220..220 run gamemode adventure @a
                            execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 220..220 run tag @e[tag=player1] remove player1
                            execute if score Sequence ghost_sequences matches 14..14 run execute if score levelClear clocks matches 220..220 run tag @e[tag=player2 ] remove player2



                            #bomb
                            execute if score levelClear clocks matches 320..360 run scoreboard players add screenshake clocks 1
                            execute if score levelClear clocks matches 320..320 run execute as @a at @s run playsound minecraft:game.explode player @s ~ ~ ~ 1000
                            execute if score levelClear clocks matches 320..320 run particle minecraft:falling_dust minecraft:gravel 62.59 63.00 -418.40 50 1 50 .01 700 force
                            execute if score levelClear clocks matches 320..320 run particle minecraft:falling_dust minecraft:coarse_dirt 62.59 63.00 -418.40 50 1 50 .01 700 force
                              execute if score screenshake clocks matches 1..1 run execute as @a at @s run tp @s ~ ~.01 ~ ~1 ~-1
                              execute if score screenshake clocks matches 2..2 run execute as @a at @s run tp @s ~ ~.01 ~ ~1 ~1
                              execute if score screenshake clocks matches 3..3 run execute as @a at @s run tp @s ~ ~.01 ~ ~-1 ~1
                              execute if score screenshake clocks matches 4..4 run execute as @a at @s run tp @s ~ ~.01 ~ ~-1 ~-1
                              execute if score screenshake clocks matches 4.. run scoreboard players set screenshake clocks 0
                                execute if score levelClear clocks matches 360.. run scoreboard players set screenshake clocks 0

                                execute if score levelClear clocks matches 430..430 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Woah, was that an explosion?","color":"none"}]
                                execute if score levelClear clocks matches 430..430 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                execute if score levelClear clocks matches 530..530 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Whatever it was, it sounded like it came from outside. Go upstairs and try to locate it's source. I have a feeling a ghost may be behind it...","color":"none"}]
                                execute if score levelClear clocks matches 530..530 run summon armor_stand 85 45.5 -470 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["clarissa"],ArmorItems:[{},{},{},{id:"minecraft:tube_coral",Count:1b}],Rotation:[90f,0f]}
                                execute if score levelClear clocks matches 530..530 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                execute if score levelClear clocks matches 630..630 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Find and remove the source of the explosion!","color":"none"}]
                                execute if score levelClear clocks matches 630..630 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2
                                execute if score levelClear clocks matches 630..630 run scoreboard players set benedict_talking ghost_sequences 0



                    #Clarissa
                      #declare sequence
                        execute if score Sequence ghost_sequences matches 14..14 if score levelClear clocks matches 320.. run execute as @e[tag=clarissa] at @s as @a[distance=..4] at @s run scoreboard players set Sequence ghost_sequences 15
                        execute if score Sequence ghost_sequences matches 15..15 run scoreboard players add benedict_talking ghost_sequences 1
                          #intro sequence for clarissa
                            execute if score benedict_talking ghost_sequences matches 1..1 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Oh no! What happened here?","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 1..1 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                            execute if score benedict_talking ghost_sequences matches 100..100 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"I blew up my entire garden!","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 100..100 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000

                            execute if score benedict_talking ghost_sequences matches 300..300 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"I was just planting some dynamite sticks in the ground for later, and then they all just exploded!","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 300..300 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000


                            execute if score benedict_talking ghost_sequences matches 500..500 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"Now all of my flowers are gone! I have never been this upset in my entire life!","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 500..500 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000


                            execute if score benedict_talking ghost_sequences matches 700..700 if score Sequence ghost_sequences matches 15..15 run scoreboard players set benedict_talking ghost_sequences 899

                            execute if score benedict_talking ghost_sequences matches 900..900 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"So you're telling me that you didn't stop to consider the fact that the dynamite sticks could explode?","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 900..900 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                            execute if score benedict_talking ghost_sequences matches 1100..1100 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"What? No! Of course not! They're not supposed to explode unless I tell them to, which, in this case, I most certainly did not!","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 1100..1100 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000

                            execute if score benedict_talking ghost_sequences matches 1300..1300 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"Agh! This sucks, everything sucks! I'm just going to open up a BLACK HOLE to make this whole world implode!","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 1300..1300 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000

                            execute if score benedict_talking ghost_sequences matches 1500..1500 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"I learned from my anger management counselor that opening up BLACK HOLES is a great way to relieve stress!","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 1500..1500 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000



                            execute if score benedict_talking ghost_sequences matches 1700..1700 if score Sequence ghost_sequences matches 15..15 run scoreboard players set benedict_talking ghost_sequences 1900

                            execute if score benedict_talking ghost_sequences matches 1900..1900 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"I don't think that's right...","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 1900..1900 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                            execute if score benedict_talking ghost_sequences matches 2100..2100 if score Sequence ghost_sequences matches 15..15 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"What else am I supposed to do? Thinking of a rational solution requires far too much effort. Besides, I've got better things to do, like destroying the planet!","color":"none"}]
                            execute if score benedict_talking ghost_sequences matches 2100..2100 if score Sequence ghost_sequences matches 15..15 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000
                            execute if score benedict_talking ghost_sequences matches 2100..2100 if score Sequence ghost_sequences matches 15..15 run spawnpoint @a 77 46 -470
                            execute if score benedict_talking ghost_sequences matches 2100..2100 if score Sequence ghost_sequences matches 15..15 run setworldspawn 77 46 -470

                            execute if score benedict_talking ghost_sequences matches 2300..2300 if score Sequence ghost_sequences matches 15..15 run scoreboard players add Sequence ghost_sequences 1

                            #execute if score benedict_talking ghost_sequences matches 2400..2400 if score Sequence ghost_sequences matches 15..15 run scoreboard players add Sequence ghost_sequences 1



                            #vortex spawn Sequence
                                execute if score Sequence ghost_sequences matches 16..16 run scoreboard players add summonVortex clocks 1
                                execute if score summonVortex clocks matches 20..20 run playsound minecraft:game.wormhole player @a ~ ~ ~ 1000
                                execute if score summonVortex clocks matches 1..1 run data merge entity @e[tag=clarissa,limit=1] {Rotation:[-90f,0f]}
                                execute if score summonVortex clocks matches 20..20 run summon armor_stand 88 46.25 -470 {ArmorItems:[{},{},{},{id:"minecraft:turtle_egg",Count:1b}],Tags:["wormhole"],Rotation:[90f,0f],NoGravity:1b,Invisible:1b}
                                execute if score summonVortex clocks matches 20..20 run execute as @e[tag=wormhole] at @s run particle minecraft:end_rod ~ ~ ~ 3 3 3 .05 200
                                execute as @e[tag=wormhole] at @s run particle minecraft:enchant ~ ~ ~ 3 2 3 .05 1
                                execute if score summonVortex clocks matches 10..10 run execute as @e[tag=clarissa] at @s run summon fireball ~.5 ~1 ~ {ExplosionPower:0,life:1000,direction:[0.5,0.0,0.0],power:[.01,0.0,0.0]}
                                execute if score summonVortex clocks matches 10..10 run playsound minecraft:entity.firework_rocket.shoot player @a ~ ~ ~ 1000 0
                              #  execute if score summonVortex clocks matches 120..120 if score Sequence ghost_sequences matches 16..16 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"Yes, come into this world, demons, come and take this planet for yourselves!","color":"none"}]
                              #  execute if score summonVortex clocks matches 120..120 if score Sequence ghost_sequences matches 16..16 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000
                                execute if score summonVortex clocks matches 250..250 if score Sequence ghost_sequences matches 16..16 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"What are you doing?","color":"none"}]
                                execute if score summonVortex clocks matches 350..350 if score Sequence ghost_sequences matches 16..16 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"Nothing... not summoning in flower demons from an alternate dimension or anything like that. That would be totally crazy!","color":"none"}]
                                execute if score summonVortex clocks matches 250..250 if score Sequence ghost_sequences matches 16..16 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                execute if score summonVortex clocks matches 350..350 if score Sequence ghost_sequences matches 16..16 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000
                                execute if score summonVortex clocks matches 450..450 if score Sequence ghost_sequences matches 16..16 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"That's exactly what you're doing, isn't it?","color":"none"}]
                                execute if score summonVortex clocks matches 450..450 if score Sequence ghost_sequences matches 16..16 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                execute if score summonVortex clocks matches 550..550 if score Sequence ghost_sequences matches 16..16 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"I don't know, probably. Oh, and by the way, I've just disabled your vacuum cleaner so you can't suck me up or anyting.","color":"none"}]
                                execute if score summonVortex clocks matches 550..550 if score Sequence ghost_sequences matches 16..16 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000
                                execute if score summonVortex clocks matches 650..650 if score Sequence ghost_sequences matches 16..16 run tellraw @a ["",{"text":"Clarissa the Gardening Ghost: ","color":"yellow"},{"text":"I used my ghost vision to look into the future and noticed you sucking me up! Like, not cool!","color":"none"}]
                                execute if score summonVortex clocks matches 650..650 if score Sequence ghost_sequences matches 16..16 run execute as @a at @s run playsound minecraft:ghost.clarissa player @s ~ ~ ~ 1000
                                execute if score summonVortex clocks matches 750..750 if score Sequence ghost_sequences matches 16..16 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Looks like we're going to have to find another way around this one.","insertion":"/tellraw @a %s","color":"none"}]]
                                execute if score summonVortex clocks matches 750..750 if score Sequence ghost_sequences matches 16..16 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                execute if score summonVortex clocks matches 820..820 if score Sequence ghost_sequences matches 16..16 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Lure Clarissa into the vortex to close it!","color":"none"}]
                                execute if score summonVortex clocks matches 820..820 if score Sequence ghost_sequences matches 16..16 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2


                                execute if score summonVortex clocks matches 135..135 run scoreboard players set flowerShoot clocks 1
                                execute if score summonVortex clocks matches 750..750 run execute as @e[tag=clarissa] at @s run summon zombie ~ ~1 ~ {CustomName:"{\"text\":\"Mrs. Ugly Clarissa\"}",NoGravity:0b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["ghostTarget"],ArmorItems:[{},{},{},{id:"minecraft:tube_coral",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.followRange,Base:40}]}
                                execute if score summonVortex clocks matches 750..750 run kill @e[tag=clarissa]

                                execute if score summonVortex clocks matches 20.. if score Sequence ghost_sequences matches 16..16 run execute as @e[tag=wormhole] at @s as @a[distance=..10] at @s facing entity @e[tag=wormhole] feet run tp @s ^ ^ ^.03
                                execute if score summonVortex clocks matches 20.. if score Sequence ghost_sequences matches 16..16 run execute as @e[tag=wormhole] at @s as @a[distance=..5] at @s facing entity @e[tag=wormhole] feet run tp @s ^ ^ ^.06
                                execute if score summonVortex clocks matches 20.. if score Sequence ghost_sequences matches 16..16 run execute as @e[tag=wormhole] at @s as @a[distance=..2] at @s facing entity @e[tag=wormhole] feet run tp @s ^ ^ ^.1
                                execute if score summonVortex clocks matches 20.. if score Sequence ghost_sequences matches 16..16 run execute as @e[tag=wormhole] at @s as @a[distance=..1] at @s run kill @s

                                execute if score summonVortex clocks matches 900.. if score Sequence ghost_sequences matches 16..16 run execute as @e[tag=wormhole] at @s as @e[tag=ghostTarget,distance=..8] at @s facing entity @e[tag=wormhole] feet run tp @s ^ ^ ^.05
                                execute if score summonVortex clocks matches 900.. if score Sequence ghost_sequences matches 16..16 run execute as @e[tag=wormhole] at @s as @e[tag=ghostTarget,distance=..5] at @s facing entity @e[tag=wormhole] feet run tp @s ^ ^ ^.08

                                execute if score summonVortex clocks matches 900.. if score Sequence ghost_sequences matches 16..16 run execute as @e[tag=wormhole] at @s as @e[tag=ghostTarget,distance=..1] at @s run scoreboard players set Sequence ghost_sequences 17

                                execute if score Sequence ghost_sequences matches 17..17 run kill @e[tag=ghostTarget]
                                execute if score Sequence ghost_sequences matches 17..17 run scoreboard players set progress bossbar 4
                                execute if score Sequence ghost_sequences matches 17..17 run execute as @e[tag=wormhole] at @s run particle minecraft:end_rod ~ ~ ~ 3 3 3 .05 200
                                execute if score Sequence ghost_sequences matches 17..17 run kill @e[tag=wormhole]
                                execute if score Sequence ghost_sequences matches 17..17 run playsound minecraft:item.totem.use player @a ~ ~ ~ 1000 .75
                                execute if score Sequence ghost_sequences matches 17..17 run stopsound @a player minecraft:game.wormhole_ambient
                                execute if score Sequence ghost_sequences matches 17..17 run kill @e[tag=markedFlower]
                                execute if score Sequence ghost_sequences matches 17..17 run scoreboard players set benedict_talking ghost_sequences 0
                                execute if score Sequence ghost_sequences matches 17..17 run tellraw @a ["",{"text":"[Objective Complete] ","color":"green"},{"text":"Lure Clarissa into the vortex to close it!","color":"none"}]
                                execute if score Sequence ghost_sequences matches 17..17 run stopsound @a player minecraft:ghosts.clarissa.battle
                                execute if score Sequence ghost_sequences matches 17..17 run scoreboard players set Sequence ghost_sequences 18


                              #flower shoot clock
                                execute if score flowerShoot clocks matches 1..1 run execute as @e[tag=wormhole] at @s run summon item ~ ~.8 ~.2 {Motion:[-.1,0.2,0.1],Item:{id:"minecraft:poppy",Count:1b},Tags:["markedFlower"]}
                                execute if score flowerShoot clocks matches 2..2 run execute as @e[tag=wormhole] at @s run summon item ~.1 ~.75 ~.1 {Motion:[-.12,0.1,0.1],Item:{id:"minecraft:dandelion",Count:1b},Tags:["markedFlower"]}
                                execute if score flowerShoot clocks matches 3..3 run execute as @e[tag=wormhole] at @s run summon item ~ ~.81 ~.2 {Motion:[-.1,-0.1,-0.1],Item:{id:"minecraft:white_tulip",Count:1b},Tags:["markedFlower"]}
                                execute if score flowerShoot clocks matches 4.. run execute as @e[tag=wormhole] at @s run scoreboard players set flowerShoot clocks 1

                                #flower shoot corresponding to clock
                                  execute if score flowerShoot clocks matches 1..4 run scoreboard players add flowerShoot clocks 1
                                  execute if score flowerShoot clocks matches 1..4 run execute as @e[tag=wormhole] at @s run playsound minecraft:block.slime_block.break player @p ~ ~ ~ 1 2
                                  execute if score summonVortex clocks matches 1.. run scoreboard players add flowerReset clocks 1
                                  execute if score flowerReset clocks matches 1200..1200 run kill @e[tag=markedFlower]
                                  clear @a minecraft:poppy
                                  clear @a minecraft:dandelion
                                  clear @a minecraft:white_tulip
                                  execute if score flowerReset clocks matches 1200.. run scoreboard players set flowerReset clocks 0

                                #vortex ambience
                                  execute if score summonVortex clocks matches 20.. run scoreboard players add vortexAmbient Music 1
                                  execute if score vortexAmbient Music matches 1..1 as @e[tag=wormhole] at @s run playsound minecraft:game.wormhole_ambient player @p ~ ~ ~ 1000
                                  execute if score vortexAmbient Music matches 231.. run scoreboard players set vortexAmbient Music 0
                                  execute if score summonVortex clocks matches ..20 run scoreboard players set vortexAmbient Music 0
                                  execute if score Sequence ghost_sequence matches 16..16 run clear @a minecraft:carrot_on_a_stick

                                  #battle music
                                  execute if score summonVortex clocks matches 750.. if score Sequence ghost_sequences matches 16..16 run scoreboard players add clarissa_battle Music 1
                                  execute if score summonVortex clocks matches 750.. if score Sequence ghost_sequences matches 16..16 if score clarissa_battle Music matches 1..1 run execute as @a at @s run playsound minecraft:ghosts.clarissa.battle player @s ~ ~ ~ 1000
                                  execute if score summonVortex clocks matches 750.. if score Sequence ghost_sequences matches 16..16 if score clarissa_battle Music matches 1221..1221 run scoreboard players set clarissa_battle Music 0


                          #Init screaming ghosts
                          execute if score Sequence ghost_sequences matches 18..18 run scoreboard players add benedict_talking ghost_sequences 1
                          execute if score Sequence ghost_sequences matches 18..18 if score benedict_talking ghost_sequences matches 200..200 run execute as @a at @s run playsound minecraft:ghosts.screamafar player @s ~ ~ ~ 1000
                          execute if score Sequence ghost_sequences matches 18..18 if score benedict_talking ghost_sequences matches 300..300 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Oh no, that didn’t sound good! Gah! What is it with ghosts and utter chaos! You should probably check the house for more ghosts, since I assure you there are more we need to find.","color":"none"}]
                          execute if score Sequence ghost_sequences matches 18..18 if score benedict_talking ghost_sequences matches 300..300 run summon armor_stand 81 66 -401 {Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral",Count:1b}],Invisible:1b,Tags:["phil"],Rotation:[-90f,0f],NoGravity:1b}
                          execute if score Sequence ghost_sequences matches 18..18 if score benedict_talking ghost_sequences matches 300..300 run summon armor_stand 85 66 -401 {Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:dead_brain_coral",Count:1b}],Invisible:1b,Tags:["bill"],Rotation:[90f,0f],NoGravity:1b}
                          execute if score Sequence ghost_sequences matches 18..18 if score benedict_talking ghost_sequences matches 300..300 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                          execute if score Sequence ghost_sequences matches 18..18 run execute as @e[tag=bill] at @s run execute as @a[distance=..8] at @s run scoreboard players set benedict_talking ghost_sequences 0
                          execute if score Sequence ghost_sequences matches 18..18 run execute as @e[tag=bill] at @s run execute as @a[distance=..8] at @s run scoreboard players set Sequence ghost_sequences 19

                        #Screaming Ghost Sequence
                          #Global phrases
                          execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 20..220 run execute as @e[tag=phil] at @s run teleport @s ~ ~ ~ facing entity @e[tag=bill,limit=1]
                          execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 20..220 run execute as @e[tag=bill] at @s run teleport @s ~ ~ ~ facing entity @e[tag=phil,limit=1]
                            execute if score Sequence ghost_sequences matches 19..19 run scoreboard players add benedict_talking ghost_sequences 1

                            #Sequence
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 20..20 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Hey Phil, want to have a screaming competition?","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 20..20 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1..1 run execute as @a at @s run playsound minecraft:ghosts.screamingbackground player @s ~ ~ ~ 1000

                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 180..180 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Yeah, sure! Let’s totally have a screaming competition!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 180..180 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 340..340 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"No! Let's not have a screaming competition!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 340..340 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 500..500 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Okay, I'll go first!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 500..500 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 660..660 run tellraw @a ["",{"text":"*Bill screams*","color":"gray","italic":true}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 660..660 run execute as @a at @s run playsound minecraft:ghosts.bill.scream1 player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 820..820 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Do you call that a scream? That wasn’t scary or annoying! Check this out! ","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 820..820 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 980..980 run tellraw @a ["",{"text":"*Phil screams*","color":"gray","italic":true}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 980..980 run execute as @a at @s run playsound minecraft:ghosts.phil.scream1 player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1140..1140 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"What was that? Sorry, but I can't hear you over your pathetic attempts at screaming!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1140..1140 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1300..1300 run tellraw @a ["",{"text":"*Bill screams again, but louder*","color":"gray","italic":true}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1300..1300 run execute as @a at @s run playsound minecraft:ghosts.bill.scream2 player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1460..1460 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"How about you stop whispering and start screaming!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1460..1460 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1620..1620 run tellraw @a ["",{"text":"*Phil screams*","color":"gray","italic":true}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1620..1620 run execute as @a at @s run playsound minecraft:ghosts.phil.scream2 player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1780..1780 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Can you guys just stop, please? Stop!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1780..3400 run execute as @e[tag=bill] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..18]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1780..3400 run execute as @e[tag=phil] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..18]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1780..1780 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3400..3850 run execute as @e[tag=bill] at @s run teleport @s ~ ~ ~ facing entity @e[tag=window,distance=..18,limit=1]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3400..3850 run execute as @e[tag=phil] at @s run teleport @s ~ ~ ~ facing entity @e[tag=window,distance=..18,limit=1]

                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3850..3975 run execute as @e[tag=bill] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..18]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3850..3975 run execute as @e[tag=phil] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..18]

                              #ghosts stop Screaming



                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1940..1940 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Listen, is there anything we can do to just make you go away?","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 1940..1940 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2100..2100 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"No.","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2100..2100 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2260..2260 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Actually, you could challenge us to a SCREAM-OFF!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2260..2260 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2420..2420 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Hey, why would you tell him that? Now we might actually have to go!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2420..2420 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2580..2580 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Scream-off? How about we just compete to see who can produce the loudest noise?","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2580..2580 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2740..2740 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"That's literally the exact same thing... seems like a fine compromise nonetheless.","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2740..2740 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2900..2900 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Indeed! Challenge accepted.","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 2900..2900 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3060..3060 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Alright Phil, let’s do our thing!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3060..3060 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3220..3220 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"(whispers) Don’t worry, I’ve got a plan to stop them. Hold on!","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3220..3220 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3270..3270 run execute as @a at @s run playsound minecraft:game.helicoperyell player @s ~ ~ ~ 1000
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3270..3270 run summon armor_stand 81 109 -382 {Invulnerable:1b,Tags:["hornVan"],ArmorItems:[{},{},{},{id:"minecraft:emerald_ore",Count:1b}],Invisible:1b}

                              #execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3350..3350 run execute as @a at @s run playsound minecraft:game.helicoperyell player @s ~ ~ ~ 1000

                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3430..3430 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"What is that?","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3430..3430 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3560..3560 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"It's me!","insertion":"/tellraw @a %s","color":"none"}]

                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3630..3630 run scoreboard players set screenshake2 clocks 1
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3630..3630 run function dev:glassbreak
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3660..3660 run scoreboard players set screenshake2 clocks 6

                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3500..3500 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"(whispers) You should cover your ears, this is going to be pretty loud.","insertion":"/tellraw @a %s","color":"none"}]
                              execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3500..3500 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                                #horn screen screenshake
                                  scoreboard players add screenshake2 clocks 1
                                  execute if score screenshake2 clocks matches 1..1 run execute as @a at @s run tp @s ~ ~.01 ~ ~1 ~-1
                                  execute if score screenshake2 clocks matches 2..2 run execute as @a at @s run tp @s ~ ~.01 ~ ~1 ~1
                                  execute if score screenshake2 clocks matches 3..3 run execute as @a at @s run tp @s ~ ~.01 ~ ~-1 ~1
                                  execute if score screenshake2 clocks matches 4..4 run execute as @a at @s run tp @s ~ ~.01 ~ ~-1 ~-1
                                  execute if score screenshake2 clocks matches 4..4 run scoreboard players set screenshake2 clocks 0

                                  #execute as @e[x=81.5,y=69,z=-381.5,distance=..3,tag=hornVan] at @s run execute as @s run say shit
                                  execute as @e[tag=hornVan] at @s unless entity @s[x=81.5,y=69,z=-381.5,distance=..1] if score benedict_talking ghost_sequences matches ..3650 run tp ~ ~-.25 ~
                                  execute as @e[tag=hornVan] at @s if score benedict_talking ghost_sequences matches 3700..3700 run tp ~ 71 ~
                                  execute as @e[tag=hornVan] at @s if score benedict_talking ghost_sequences matches 3700.. run tp ~ ~.25 ~
                                  execute as @e[tag=hornVan] at @s if score benedict_talking ghost_sequences matches 4000..4000 run kill @e[tag=hornVan]

                                  execute as @e[tag=hornVan] at @s run tp @s ~ ~ ~ ~59 ~


                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3750..3750 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Holy cow, that was extremely loud! So loud, in fact, that we are now dazed!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3750..3750 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3850..3850 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Yes, we are now dazed, and vulnerable! Don’t try to vacuum us up now, that would be a pretty bad idea!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3850..3850 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3915..3915 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Don’t listen to them! Vacuum them up, immediately!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3915..3915 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3975..3975 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3975..3975 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Suck up Bill and Phil!","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3975..3975 run tag @e[tag=phil] add bossGhost
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 3975..3975 run tag @e[tag=bill] add bossGhost

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4055..4055 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Come on, I don’t like vacuums!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4055..4055 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4215..4215 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Please, don’t! They smell bad!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4215..4215 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4375..4375 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Were you aware that these ghost-vacuums are actually in violation of the Geneva Convention? Yes, indeed they are! By sucking us up, you are committing war crimes! How do you feel about yourself, now, Mr. War-Criminal?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4375..4375 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4535..4535 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"What are you talking about? We aren’t war criminals! Hey, please just vacuum Bill and Phil up, they are starting to be a serious annoyance!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4535..4535 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4695..4695 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Actually, you are a war-criminal! Do you think I would lie about something like that?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4695..4695 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4855..4855 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Possibly, if your aim is to guilt-trip us into not vacuuming you up.","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 4855..4855 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5015..5015 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"No! We take no issue with being vacuumed up. The only person taking issue here is you, who refuses to accept the reality!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5015..5015 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5175..5175 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"I am offended.","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5175..5175 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5335..5335 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"I am extremely bored, can we do something else?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5335..5335 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5495..5495 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Like what?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5495..5495 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5655..5655 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"I don’t know, eat wood or something? To be honest, I’m new to the whole ghost-thing, I have no idea what you’re supposed to do.","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5655..5655 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5815..5815 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"That’s interesting. What made you want to become a ghost?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5815..5815 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5975..5975 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"I thought the change of scenery would be enjoyable. So far, being a ghost here has been rather fun, but I’m still not 100% sure how I fit in all this.","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 5975..5975 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6135..6135 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"You could try scaring people!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6135..6135 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6295..6295 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Yeah, I do that all the time!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6295..6295 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6455..6455 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"But, how? My only talents consist of screaming as loud as I can!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6455..6455 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6615..6615 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"You could use this skill to your advantage!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6615..6615 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6775..6775 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Really, how?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6775..6775 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6935..6935 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Suppose someone were to walk into this very room right now, unbeknownst to your presence. What would you do?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 6935..6935 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7095..7095 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"This one is easy! I would do what any sensible ghost would do, and just go eat some planks or something while the person goes about their business!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7095..7095 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7255..7255 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"No, that is not the right way of going about it. Bill, what would you do?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7255..7255 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7415..7415 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Fart?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7415..7415 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7575..7575 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Interesting suggestion, but farts, unfortunately, aren’t exactly scary.","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7575..7575 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7735..7735 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Hold on, weren’t we doing something before this?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7735..7735 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7895..7895 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Yeah, what were we doing?","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 7895..7895 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8055..8055 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Oh! Right, we were about to vacuum you up!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8055..8055 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8215..8215 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Hold on! Don’t do that!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8215..8215 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8375..8375 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Yes! We will do that!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8375..8375 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8535..8535 run tellraw @a ["",{"text":"Bill: ","color":"yellow"},{"text":"Show some mercy! Before you do anything, just try and think about it!","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8535..8535 run execute as @a at @s run playsound minecraft:ghosts.casualbill player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8695..8695 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Oh, alright. I guess I’ll give it a minute or so to think about it.","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8695..8695 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8855..8855 run tellraw @a ["",{"text":"Phil: ","color":"yellow"},{"text":"Alright then, we’ll just wait here quietly while you think. You can go on as long as you want, we have all of eternity here.","insertion":"/tellraw @a %s","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 19..19 if score benedict_talking ghost_sequences matches 8855..8855 run execute as @a at @s run playsound minecraft:ghosts.casualphil player @s ~ ~ ~ 1000



                                  #test for billPhil
                                  scoreboard players set billPhil ghost_sequences 0
                                  execute as @e[tag=phil] at @s run scoreboard players add billPhil ghost_sequences 1
                                  execute as @e[tag=bill] at @s run scoreboard players add billPhil ghost_sequences 1

                                  execute if score Sequence ghost_sequences matches 19..19 if score billPhil ghost_sequences matches 1..1 run scoreboard players set progress bossbar 5
                                  execute if score Sequence ghost_sequences matches 19..19 if score billPhil ghost_sequences matches 0..0 run scoreboard players set progress bossbar 6

                                  execute if score billPhil ghost_sequences matches 0..0 if score Sequence ghost_sequences matches 19..19 run execute as @a at @s run playsound minecraft:game.fanfare player @s ~ ~ ~ 1000
                                  execute if score billPhil ghost_sequences matches 0..0 if score Sequence ghost_sequences matches 19..19 run title @a title ["",{"text":"Objective Complete","color":"green"}]
                                  execute if score billPhil ghost_sequences matches 0..0 if score Sequence ghost_sequences matches 19..19 run tellraw @a ["",{"text":"[Objective Complete] ","color":"green"},{"text":"Suck up Bill and Phil!","color":"none"}]
                                  execute if score billPhil ghost_sequences matches 0..0 if score Sequence ghost_sequences matches 19..19 run summon armor_stand 92 66 -418 {ArmorItems:[{},{},{},{id:"minecraft:dead_tube_coral",Count:1b}],Tags:["larry"],Rotation:[45f,0f],Invisible:1b}
                                  execute if score billPhil ghost_sequences matches 0..0 if score Sequence ghost_sequences matches 19..19 run setworldspawn 46 74 -402
                                  execute if score billPhil ghost_sequences matches 0..0 if score Sequence ghost_sequences matches 19..19 run execute as @a at @s run playsound minecraft:ghosts.larry.badsinging player @s ~ ~ ~ 1000
                                  execute if score billPhil ghost_sequences matches 0..0 if score Sequence ghost_sequences matches 19..19 run execute as @a at @s run scoreboard players set larryWalk ghost_sequences 1
                                  execute if score billPhil ghost_sequences matches 0..0 if score Sequence ghost_sequences matches 19..19 run scoreboard players set benedict_talking ghost_sequences 0
                                  execute if score billPhil ghost_sequences matches 0..0 if score Sequence ghost_sequences matches 19..19 run scoreboard players set Sequence ghost_sequences 20
                                  execute if score Sequence ghost_sequences matches 20..20 run function dev:larrywalk
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches ..4100 run function dev:larrywalk

                                  execute if score Sequence ghost_sequences matches 20..20 if score larryWalk ghost_sequences matches 7..7 run execute as @e[tag=larry] at @s run execute as @a[distance=..3] run scoreboard players set Sequence ghost_sequences 21

                                  execute if score Sequence ghost_sequences matches 21..21 run scoreboard players add benedict_talking ghost_sequences 1


                                  execute if score larryNotification clocks matches 0..0 as @e[x=79,y=66,z=-404,distance=..2,tag=larry] at @s run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Hey, there's a ghost walking by! Go follow it!","color":"none"}]
                                  execute if score larryNotification clocks matches 0..0 as @e[x=79,y=66,z=-404,distance=..2,tag=larry] at @s run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                  execute if score larryNotification clocks matches 0..0 as @e[x=79,y=66,z=-404,distance=..2,tag=larry] at @s run scoreboard players set larryNotification clocks 1

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 20..20 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"Oh hello, who are you?","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 20..20 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000


                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 180..180 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"Actually, never mind who you are, I couldn’t care less! Nope, not in the least!","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 180..180 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000


                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 340..340 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"That was a bit rude.","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 340..340 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 500..500 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"Oh dear, I’m sorry. To apologize, I'll sing you a little song I’ve been working on for literally forever! Would you like to hear it?","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 500..500 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000


                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 660..660 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"No.","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 660..660 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 880..2325 run execute as @e[tag=larry] at @s run particle minecraft:note ~ ~1 ~ 1 1 1 20 1
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 820..820 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"Did I hear a yes? Indeed, I did! I love songs. Now, let me begin!","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 820..820 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 880..880 run execute as @a at @s run playsound ghosts.larry.song player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 949..949 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ I’m Larry, I’m Larry, I’m Larry the spooky Ghost!  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1062..1062 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ My friend, Gary, is also, like, a ghost!  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1174..1174 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ But Gary is such a big jerk!  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1230..1230 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ He means well but really sucks.  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1290..1290 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ Every day he gets in the way of my important tasks.  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1400..1400 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ So today I was just sucking on some ice cubes.  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1514..1514 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ And Gary was like “bro that’s not okay!”  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1626..1626 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ And then he took away my cubes,  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1690..1690 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ And I didn’t like that one little bit.  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1739..1739 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ So, I said “bro, like, what the flop”  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1796..1796 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ And then… and then… and then you need to guess what happened.  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 1908..1908 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ He walked into the desert and disappeared!  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2022..2022 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ I don’t know where he went but he disappeared!  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2135..2135 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ ","color":"none"},{"text":"Like, I hope the guy’s okay.","color":"none"},{"text":"  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2190..2190 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ ","color":"none"},{"text":"But at the same time I don't care!","color":"none"},{"text":"  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2250..2250 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"♪ ","color":"none"},{"text":"Because I get to suck on my cubes all alone and by myself!","color":"none"},{"text":"  ","color":"none"}]

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2400..2400 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"Thank you, thank you very much! I really do deserve a standing ovation for that one!","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2400..2400 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2660..2660 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"What are you talking about? It sounded like you were deliberately trying to damage my employee’s hearing! Utterly horrible!","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2660..2660 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2820..2820 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"Nuh-uh! You’re horrible!","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2820..2820 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2980..2980 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Hey! That was uncalled for!","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 2980..2980 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3140..3140 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"Now we’re even!","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3140..3140 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3300..3300 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"For what?","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3300..3300 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3460..3460 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"I don't even remember, honestly.","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3460..3460 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3620..3620 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Oh, okay. You should probably suck him up now.","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3620..3620 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3780..3780 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"Wait, what? You want me to suck up your friend here? That's pretty weird dude.","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3780..3780 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3940..3940 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"What do you mean? I didn't say anything! Did I say something? Nope! Not at all! Even if I did, I definitely didn't direct it at you.","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 3940..3940 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 4100..4100 run tellraw @a ["",{"text":"Larry the Singing Ghost: ","color":"yellow"},{"text":"Jeez, you don't have to be so mean about it. Just tryin' to be a friendly ol' ghost here. I'm not hurting anything!","color":"none"}]
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 4100..4100 run execute as @a at @s run playsound ghosts.larry.talk player @s ~ ~ ~ 1000

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 4200..4200 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 4200..4200 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Vacuum up Larry!","color":"none"}]


                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 4100..4100 run tag @e[tag=larry] add bossGhost

                                  scoreboard players set larryVar ghost_sequences 0
                                  execute as @e[tag=larry] at @s run scoreboard players set larryVar ghost_sequences 1

                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 4200.. if score larryVar ghost_sequences matches 0..0 run scoreboard players set larryWalk ghost_sequences 1
                                  #execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 4200.. if score larryVar ghost_sequences matches 0..0 run
                                  execute if score Sequence ghost_sequences matches 21..21 if score benedict_talking ghost_sequences matches 4200.. if score larryVar ghost_sequences matches 0..0 run scoreboard players set Sequence ghost_sequences 22


                                  #levelClear2
                                    execute if score Sequence ghost_sequences matches 22..22 run scoreboard players add levelClear2 clocks 1

                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 50..50 run execute as @a at @s run summon armor_stand ~ ~ ~ {Tags:["player1"],Invisible:1b}

                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 5..5 run tellraw @a ["",{"text":"[Objective Complete] ","color":"green"},{"text":"Vacuum up Larry!","color":"none"}]
                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 100..220 run tp @a 89.5 83.3 -392.6 -166 12.6
                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 100..220 run gamemode spectator @a
                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 150..150 run execute as @e[tag=blockade2] at @s run particle minecraft:cloud ~ ~ ~ 1 1 0 .01 100
                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 150..150 run execute as @a at @s run playsound minecraft:entity.squid.squirt player @s ~ ~ ~ 1000
                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 150..150 run fill 90 83 -397 90 84 -397 minecraft:air
                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 150..150 run tellraw @a ["",{"text":"The attic has been unlocked!","color":"gold","insertion":"tellraw @a %s"}]
                                      execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 150..150 run setworldspawn 90 83 -406
                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 150..150 run kill @e[tag=blockade2]

                                    execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 220..220 run execute as @a at @s run tp @s @e[tag=player1,type=armor_stand,limit=1]

                                      execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 220..220 run kill @e[tag=player1,type=armor_stand]
                                      execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 220..220 run gamemode adventure @a
                                      execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 220..220 run tag @e[tag=player1] remove player1
                                      execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 220..220 run tag @e[tag=player2 ] remove player2
                                      execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 220..220 run scoreboard players set benedict_talking ghost_sequences 0

                                      execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 320..320 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"The attic has been opened up? You should definitely go check that out. Here, I’ve plotted the location of the spiral staircase on your navigation bar.","color":"none"}]
                                      execute if score Sequence ghost_sequences matches 22..22 run execute if score levelClear2 clocks matches 320..320 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                        #Carpet Ghost
                        execute if score Sequence ghost_sequences matches 22..22 run execute as @a[x=90,y=84,z=-407,distance=..6] at @s run scoreboard players set Sequence ghost_sequences 23
                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches ..550 run scoreboard players add benedict_talking ghost_sequences 1

                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Carpet Ghost: ","color":"yellow"},{"text":"Stop where you are, random person who has happened upon this here carpet today! My name is Carpet Ghost, and I have possessed this here carpet!","color":"none"}]
                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 5..5 run particle minecraft:falling_dust minecraft:stone 90.53 83.2 -408 1 .01 1 .01 20 force
                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:entity.cow.step player @s

                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 185..185 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Quick vacuum him up before he goes to his stupid bit about poems or singing or something!","color":"none"}]
                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 185..185 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 365..365 run tellraw @a ["",{"text":"Carpet Ghost: ","color":"yellow"},{"text":"Hah! Vacuum me up? What are you trying to do, purge me from this attic? Just try. I am a carpet! You can’t get me out.","color":"none"}]
                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 365..365 run particle minecraft:falling_dust minecraft:stone 90.53 83.2 -408 1 .01 1 .01 20 force
                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 365..365 run execute as @a at @s run playsound minecraft:entity.cow.step player @s

                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 545..545 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"He’s bluffing. Just do it.","color":"none"}]
                         execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 545..545 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                        # execute if score Sequence ghost_sequences matches 23..23 if score benedict_talking ghost_sequences matches 549..549 run scoreboard players set benedict_talking ghost_sequnces 0

                         #test to see if vacuum is on
                          execute if score Sequence ghost_sequences matches 23..23 if entity @e[tag=vacuum,x=90,y=84,z=-407,distance=..3] if score benedict_talking ghost_sequences matches 550.. run scoreboard players set Sequence ghost_sequences 24
                          #execute if score Sequence ghost_sequences matches 23..23 if entity @e[tag=vacuum,x=90,y=84,z=-407,distance=..3] if score benedict_talking ghost_sequences matches 550.. run scoreboard players set benedict_talking ghost_sequences 0


                          execute if score Sequence ghost_sequences matches 24..24 run scoreboard players set benedict_talking ghost_sequences 0
                          execute if score Sequence ghost_sequences matches 24..24 run scoreboard players set Sequence ghost_sequences 25

                          #25
                        execute if score Sequence ghost_sequences matches 25..25 run scoreboard players add benedict_talking ghost_sequences 1



                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Carpet Ghost: ","color":"yellow"},{"text":"Ha-ha, you fool! I am now cleaner, and therefore more powerful! You will never catch me.","color":"none"}]
                          execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 5..5 run particle minecraft:falling_dust minecraft:stone 90.53 83.2 -408 1 .01 1 .01 20 force
                          execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:entity.cow.step player @s

                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 185..185 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Wait, so cleanliness makes you more powerful?","color":"none"}]
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 185..185 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 365..365 run tellraw @a ["",{"text":"Carpet Ghost: ","color":"yellow"},{"text":"Yes! Why are you asking?","color":"none"}]
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 365..365 run particle minecraft:falling_dust minecraft:stone 90.53 83.2 -408 1 .01 1 .01 20 force
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 365..365 run execute as @a at @s run playsound minecraft:entity.cow.step player @s

                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 545..545 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"No reason. Just wondering. What is your stance on stains?","color":"none"}]
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 545..545 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 725..725 run tellraw @a ["",{"text":"Carpet Ghost: ","color":"yellow"},{"text":"Stains? Carpets hate stains! And as a carpet, I hate them too.","color":"none"}]
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 725..725 run particle minecraft:falling_dust minecraft:stone 90.53 83.2 -408 1 .01 1 .01 20 force
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 725..725 run execute as @a at @s run playsound minecraft:entity.cow.step player @s

                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 905..905 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"I wonder if the kitchen has something you could use to stain the carpet with. If I were you, I’d check the pantry in the basement.","color":"none"}]
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 905..905 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 1085..1085 run tellraw @a ["",{"text":"Carpet Ghost: ","color":"yellow"},{"text":"Ha-ha, you’ll never be able to stain me, for I am a ghost and also a carpet! And as a ghost who is also a carpet, I know for a fact that I am completely and utterly unable to be stained!","color":"none"}]
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 1085..1085 run particle minecraft:falling_dust minecraft:stone 90.53 83.2 -408 1 .01 1 .01 20 force
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 1085..1085 run execute as @a at @s run playsound minecraft:entity.cow.step player @s


                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 1185..1185 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Find a way to capture Carpet Ghost.","color":"none"}]
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 1185..1185 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2
                        team join red @e[tag=cup_dummy]
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 1185..1185 run summon armor_stand 82.5 58.43 -438.5 {NoGravity:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:1b,Tags:["cup_dummy"],Passengers:[{id:"minecraft:item",NoGravity:1b,Age:-32768,PickupDelay:32767,Glowing:1b,Tags:["cup_dummy"],Team:"red",Item:{id:"minecraft:fire_coral",Count:1b}}]}


                        execute as @e[tag=cup_dummy,type=armor_stand] at @s run execute as @a[distance=..2] at @s run tellraw @a ["",{"text":"[Hint] ","color":"green"},{"text":"To pick up the juice in the pantry, right-click on the cup while having a dark-shaded hotbar slot (slots 1-3 and 7-9) selected!","color":"none"}]
                        execute as @e[tag=cup_dummy,type=armor_stand] at @s run execute as @a[distance=..2] at @s run summon armor_stand 82.5 58.43 -438.5 {Tags:["cup"],ArmorItems:[{},{},{},{id:"minecraft:fire_coral",Count:1b,tag:{display:{Name:"{\"text\":\"Red Juice\",\"color\":\"red\",\"italic\":\"false\"}"}}}],Invisible:1b,NoGravity:1b}
                        execute as @e[tag=cup_dummy,type=armor_stand] at @s run execute as @a[distance=..2] at @s run execute as @a at @s run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1000 2
                         execute as @e[tag=cup_dummy] at @s run execute as @a[distance=..2] at @s run kill @e[tag=cup_dummy]



                        #26
                        execute if score Sequence ghost_sequences matches 25..25 if score benedict_talking ghost_sequences matches 1185.. run execute as @a[nbt={Inventory:[{id:"minecraft:fire_coral"}]},limit=1] at @s run scoreboard players set Sequence ghost_sequences 26

                        execute if score Sequence ghost_sequences matches 26..26 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"You found a bright red liquid! Great, I'm sure the Carpet Ghost will absolutely abhor it! Sneak on the carpet while holding the drink to spill it accidentally on purpose!","color":"none"}]
                        execute if score Sequence ghost_sequences matches 26..26 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                        execute if score Sequence ghost_sequences matches 26..26 run scoreboard players set benedict_talking ghost_sequences 0

                        execute if score Sequence ghost_sequences matches 26..26 run scoreboard players set Sequence ghost_sequences 27


                          #Piano Sound Effects
                                execute as @a[x=51,y=76,z=-404,distance=..1] at @s if score @s sneakTime matches 1.. run playsound minecraft:block.note_block.xylophone player @s ~ ~ ~ 1000 .67
                                  execute as @a[x=51,y=76,z=-404,distance=..1] at @s if score @s sneakTime matches 1.. run scoreboard players set @s sneakTime 0
                                    execute as @a[x=51,y=76,z=-403,distance=..1] at @s if score @s sneakTime matches 1.. run playsound minecraft:block.note_block.xylophone player @s ~ ~ ~ 1000 .70
                                      execute as @a[x=51,y=76,z=-403,distance=..1] at @s if score @s sneakTime matches 1.. run scoreboard players set @s sneakTime 0
                                          execute as @a[x=51,y=76,z=-402,distance=..1] at @s if score @s sneakTime matches 1.. run playsound minecraft:block.note_block.xylophone player @s ~ ~ ~ 1000 .80
                                            execute as @a[x=51,y=76,z=-402,distance=..1] at @s if score @s sneakTime matches 1.. run scoreboard players set @s sneakTime 0

                        #27 - pouring juice. add in some sound effects or something to go along with it, then set the sneak time to around 5 seconds before the next sequence activates.
                        execute as @a[x=90,y=84,z=-407,distance=4..] at @s run scoreboard players set @a sneakTime 0
                        execute if score Sequence ghost_sequences matches 27..27 run execute as @a[x=90,y=84,z=-407,distance=..3,scores={sneakTime=1..1}] at @s run execute as @a at @s run playsound minecraft:entity.player.splash player @s ~ ~ ~ 1000
                        execute if score Sequence ghost_sequences matches 27..27 run execute as @a[x=90,y=84,z=-407,distance=..3,scores={sneakTime=1..1}] at @s run fill 89 83 -406 91 83 -409 red_carpet
                        execute if score Sequence ghost_sequences matches 27..27 run execute as @a[x=90,y=84,z=-407,distance=..3,scores={sneakTime=1..1}] at @s run clear @a minecraft:fire_coral
                        execute if score Sequence ghost_sequences matches 27..27 run execute as @a[x=90,y=84,z=-407,distance=..3,scores={sneakTime=1..}] at @s run scoreboard players set Sequence ghost_sequences 28




                        #28
                        execute if score Sequence ghost_sequences matches 28..28 run scoreboard players add benedict_talking ghost_sequences 1
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 5..5 run summon armor_stand 90 82.5 -408 {NoGravity:1b,Invisible:1b,Tags:["carpet_ghost"],ArmorItems:[{},{},{},{id:"minecraft:dead_fire_coral",Count:1b}]}
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 5..5 run execute as @e[tag=carpet_ghost] at @s run particle minecraft:squid_ink ~ ~ ~ 1 1 1 .01 50
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 5..5 run execute as @e[tag=carpet_ghost] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 .01 50
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 1..1 run execute as @a at @s run playsound minecraft:ghosts.carpet.groan player @s
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 1..1 run execute as @a at @s run playsound minecraft:entity.squid.squirt player @s ~ ~ ~ 1000 2

                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 5..5 run tellraw @a ["",{"text":"Carpet Ghost: ","color":"yellow"},{"text":"No way! Are you serious? That was my favorite carpet! Gosh, Steven did the exact same thing last week when he tracked mud all over me! Luckily that stain wasn’t too difficult to remove.","color":"none"}]
                        #execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 5..5 run execute as @a at @s run playsound minecraft:ghosts.carpet.speak player @s ~ ~ ~ 1000


                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 185..185 run tellraw @a ["",{"text":"*Carpet Ghost sniffs*","color":"gray","italic":true}]
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 185..185 run execute as @a at @s run playsound ghosts.carpet.sniff player @s

                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 300..300 run tellraw @a ["",{"text":"Carpet Ghost: ","color":"yellow"},{"text":"Is that red juice? Dang it, I was really hoping to not have to endure the ordeal of removing another stain, but apparently the entire universe is against me or something, because people keep pouring stuff all over my carpet!","color":"none"}]
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 300..300 run execute as @a at @s run playsound minecraft:ghosts.carpet.speak player @s ~ ~ ~ 1000

                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 480..480 run tellraw @a ["",{"text":"Carpet Ghost: ","color":"yellow"},{"text":"You know what? I’m done! I don’t know what else to do! I have lived and died for that carpet, and now that it is quintessentially a piece of garbage, I’m just going to leave and find another carpet to possess!","color":"none"}]
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 480..480 run tag @e[tag=carpet_ghost] add bossGhost
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 480..480 run execute as @a at @s run playsound minecraft:ghosts.carpet.speak player @s ~ ~ ~ 1000

                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 620..620 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Is Carpet Ghost alright? He seems pretty distressed over that carpet we've recolored for him. Never mind it, we've got work to do. Go ahead and suck him up!","color":"none"}]
                        execute if score Sequence ghost_sequences matches 28..28 if score benedict_talking ghost_sequences matches 620..620 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                        execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 750.. run scoreboard players set benedict_talking ghost_sequences 0
                        execute if score Sequence ghost_sequences matches 29..29 run scoreboard players add benedict_talking ghost_sequences 1
                        execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 115..115 run execute as @a at @s run playsound minecraft:ghosts.evil.1 player @s ~ ~ ~ 1000

                        execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 115..115 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Hey! Who keeps vacuuming up all of the ghosts around here?","color":"white"}]
                        execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 115..115 run execute as @a at @s run playsound minecraft:ghosts.evil.1 player @s ~ ~ ~ 1000

                          execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 212..212 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"That didn’t sound good. Can you tell where that voice came from?","color":"none"}]
                            execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 212..212 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                              execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 310..310 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"I can hear you! I am in the great room, you dinkle-doinks!","color":"white"}]

                                execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 420..420 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"There is a bridge that is suspended over the Great Room. You should go check out what’s happening from there.","color":"none"}]
                                execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 420..420 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 420..420 run setworldspawn 62 84 425
                                execute if score Sequence ghost_sequences matches 29..29 if score benedict_talking ghost_sequences matches 420.. run execute as @a[x=62,y=84,z=-425,distance=..3] at @s run scoreboard players set Sequence ghost_sequences 30

                                        execute if score Sequence ghost_sequences matches 30..30 run scoreboard players set benedict_talking ghost_sequences -5
                                        execute if score Sequence ghost_sequences matches 30..30 run scoreboard players set Sequence ghost_sequences 31

                                execute if score Sequence ghost_sequences matches 31..31 run scoreboard players add benedict_talking ghost_sequences 1
                                            execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 0..0 run execute as @a at @s run playsound minecraft:ghosts.evil.2 player @s ~ ~ ~ 1000
                                            execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 0..0 run execute as @a at @s run fill 69 83 -425 69 84 -425 barrier
                                            execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 0..0 run execute as @a at @s run setblock 71 83 -425 dark_oak_door[half=lower,open=true]
                                            execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 0..0 run execute as @a at @s run setblock 71 84 -425 dark_oak_door[half=upper,open=true]
                                            execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 0..0 run execute as @a at @s run playsound minecraft:block.wooden_door.close player @a ~ ~ ~ 1000
                                            execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 10..10 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Alright, what is your guys’ deal? Can you like stop sucking up ghosts for one flip-floppin minute?","color":"white"}]
                                              execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 140..140 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Hey! It’s not our fault, we're being paid to do it!","color":"none"}]
                                              execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 140..140 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                                execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 202..202 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"So what? Just because you make some money doesn’t mean it's okay!","color":"white"}]
                                                  execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 271..271 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"What's that...?","color":"none"}]
                                                  execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 271..271 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                                    execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 311..311 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"I don't know, foreshadowing? Like, maybe a bridge is about to collapse or something. Hey, it could be-","color":"white"}]
                                                    #execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 311..311 run summon zombie 62 67 -419 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["evilghost"],ArmorItems:[{},{},{},{id:"minecraft:dead_bubble_coral",Count:1b}],Rotation:[180f,0f],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}],Silent:1b,Attributes:[{Name:generic.followRange,Base:0}],IsBaby:1b}
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 311..311 run summon armor_stand 62 67 -419 {Invisible:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:dead_bubble_coral",Count:1b}],Pose:{Head:[0f,179f,0f]},Silent:1b,Tags:["evilghost"],Attributes:[{Name:generic.followRange,Base:0}]}


                                                      #summon ocelot 62 66 -419 {NoAI:1b,Invulnerable:1b,Tags:["runner"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:dead_bubble_coral",Count:1b}],Pose:{Head:[0f,179f,0f]},Silent:1b,Tags:["evilghost"],Attributes:[{Name:generic.followRange,Base:0}]}]}





                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 450..450 run tp @a 62.5 81 -424
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 450..450 run execute as @a at @s run playsound minecraft:entity.zombie.break_wooden_door player @s ~ ~ ~ 1000


                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 470..470 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Ouch!","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 470..470 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 470..470 run setblock 61 82 -425 air

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 503..503 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Oh yeah, yeah that was the bridge! Hey, how are you holding up? I bet falling from like 30 meters must have hurt, huh?","color":"white"}]

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 744..744 run tellraw @a ["",{"text":"Carpet Ghost (from within the vacuum): ","color":"yellow"},{"text":"Mr. Evil Ghost, this Ghost Hunter was being mean and then he vacuumed me up!","insertion":"/tellraw @a %s","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 744..744 run execute as @a at @s run playsound ghosts.evil.3 player @s ~ ~ ~ 1000

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 818..818 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"What? Listen, Ghost Hunters, you can’t just waltz in here doing stuff like this! Is there something wrong with you?","color":"white"}]

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 984..984 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Nothing is wrong with me. Maybe something is wrong with you, being all dead ‘n’ stuff.","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 984..984 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1040..1040 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"That was uncalled for!","color":"white"}]

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1085..1085 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Your face was uncalled for!","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1085..1085 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1143..1143 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"You just infuriate me! Your arrogance is just astonishing!","color":"white"}]



                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1228..1228 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Hey, you just dropped my poor Ghost Hunter from a 30-meter-tall bridge! Maybe you should keep your mouth shut!","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1228..1228 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1309..1309 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"How about I don’t keep my mouth shut? I like flapping my lips up and down and sideways, it just feels so good!","color":"white"}]


                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1471..1471 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Are you typically this annoying? You know what, suck him up, please! I can’t stand any more of this.","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1471..1471 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1578..1578 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Him? My name is Evil Ghost and I am extremely evil!","color":"white"}]

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1687..1687 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Evil? Ha! You’re pathetic. The worst you've done thus far, aside from nearly killing my worker, is make long-winded comments that contribute absolutely nothing to the conversation!","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1687..1687 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1767..1767 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Well... thus far you have been incredibly annoying!","color":"white"}]

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1838..1838 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"The only annoying one here is yourself! Please, suck Evil Ghost up.","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1838..1838 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1880..1880 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"No! Don’t suck me up. Stop listening to whatever-his-name-is, listen to me!","color":"white"}]

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1980..1980 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"My name is Benedict!","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 1980..1980 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 2060..2060 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Well, then, stop listening to Benedict! Don’t you know that Benedict is a war-criminal?","color":"white"}]


                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 2154..2154 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Yes, we are aware. Don’t listen to Evil Ghost! He just wishes to make a fool of you!","color":"none"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 2154..2154 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000


                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 2283..2283 run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"No! Don’t listen to him! He probably eats bugs or something! Hey, can I have your vacuum?","color":"white"}]


                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 2400..2400 run execute as @a at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1000
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 2400..2400 run tellraw @a ["",{"text":"-----------------------","color":"dark_gray"},{"text":"\n"},{"text":"[DECISION]","bold":true,"color":"gold"},{"text":" "},{"text":"Chose a side:","color":"gold"},{"text":" \n"},{"text":"(Click the text to select)","italic":true,"color":"gray"},{"text":"\n\n"},{"text":"Benedict","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set active benedictChosen 1"}},{"text":"\n\n"},{"text":"Evil Ghost","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set active evilGhostChosen 1"}},{"text":"\n"},{"text":"-----------------------","color":"dark_gray"}]
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 2400..2400 run title @a times 20 100 20





                                                      #enable screenshake
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 292..292 run scoreboard players set screenshake2 clocks 1
                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 292..450 run particle minecraft:falling_dust sand 53 83 -425 10 0 2 .01 5 force

                                                      execute if score Sequence ghost_sequences matches 31..31 if score benedict_talking ghost_sequences matches 450..450 run scoreboard players set screenshake2 clocks 6



                                                      #if evil ghost chosen
                                                      execute if score active evilGhostChosen matches 1..1 run scoreboard players add t evilGhostChosen 1
                                                      execute if score t evilGhostChosen matches 5..5 run execute as @a at @s run playsound minecraft:ghosts.evil.echosen player @s ~ ~ ~ 1000
                                                      execute if score t evilGhostChosen matches 5..5 run execute as @a at @s run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Hahaha! Alright, give me the vacuum so I can release all of the ghosts you have captured!","color":"white"}]

                                                      #execute if score t evilGhostChosen matches 100..100 run execute as @a at @s run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"No! Why? He doesn't even know how it works!","color":"none"}]
                                                    #  execute if score t evilGhostChosen matches 100..100 run execute as @a at @s run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score t evilGhostChosen matches 130..130 run execute as @a at @s run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Alright, let me just see here...","color":"white"}]

                                                      execute if score t evilGhostChosen matches 188..188 run execute as @a at @s run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Hm.","color":"white"}]

                                                      execute if score t evilGhostChosen matches 242..242 run execute as @a at @s run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"This is odd.","color":"white"}]

                                                      execute if score t evilGhostChosen matches 270..270 run scoreboard players set summonGhost evilGhostChosen 1

                                                      execute if score t evilGhostChosen matches 316..316 run execute as @a at @s run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Uh-oh.","color":"white"}]

                                                      execute if score t evilGhostChosen matches 365..365 run scoreboard players set summonGhost evilGhostChosen 32

                                                      execute if score t evilGhostChosen matches 285..365 run execute as @e[tag=evilghost] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 .01 5

                                                      execute if score t evilGhostChosen matches 365..365 run replaceitem entity @a armor.head minecraft:carved_pumpkin
                                                      execute if score t evilGhostChosen matches 365..365 run scoreboard players set active credits 1
                                                      execute if score t evilGhostChosen matches 365..365 run scoreboard players set timer credits -60

                                                      #teleport vacuum to evilghost
                                                      execute if score t evilGhostChosen matches 50.. run clear @a minecraft:light_gray_dye
                                                      execute if score t evilGhostChosen matches 50..50 run execute as @a at @s run summon armor_stand ~ ~ ~ {Tags:["vacuum2"],ArmorItems:[{},{},{},{id:"minecraft:light_gray_dye",Count:1b}],NoGravity:1b,Invisible:1b}
                                                      execute if score t evilGhostChosen matches 50.. run execute as @e[tag=vacuum2,limit=1] at @s facing entity @e[tag=evilghost,limit=1] feet run tp @s ^ ^ ^.15
                                                      execute if score t evilGhostChosen matches 50.. run execute as @e[tag=vacuum2] at @s run tp @s ~ ~ ~ ~30 ~
                                                      execute if score t evilGhostChosen matches 50.. run execute as @e[tag=evilghost] at @s run execute as @e[tag=vacuum2,distance=..1] at @s run data merge entity @e[tag=evilghost,type=armor_stand,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bubble_coral_fan",Count:1b}]}
                                                      execute if score t evilGhostChosen matches 50.. run execute as @e[tag=evilghost] at @s run execute as @e[tag=vacuum2,distance=..1] at @s run execute as @a at @s run playsound entity.chicken.egg player @s ~ ~ ~ 1000 2
                                                      execute if score t evilGhostChosen matches 50.. run execute as @e[tag=evilghost] at @s run execute as @e[tag=vacuum2,distance=..1] at @s run kill @s

                                                      #evil ghost spam summoning
                                                      execute if score t evilGhostChosen matches 270.. run scoreboard players add summonGhost evilGhostChosen 1
                                                      execute if score summonGhost evilGhostChosen matches 10..10 run execute as @e[tag=evilghost] at @s run summon minecraft:armor_stand ^ ^ ^1 {Tags:["stupid"],Motion:[0.5,1.0,-1.0],ArmorItems:[{},{},{},{id:"minecraft:purple_dye",Count:1b}],Invisible:1b}
                                                      execute if score summonGhost evilGhostChosen matches 20..20 run execute as @e[tag=evilghost] at @s run summon minecraft:armor_stand ^ ^ ^1 {Tags:["stupid"],Motion:[-0.5,1.0,-1.0],ArmorItems:[{},{},{},{id:"minecraft:purple_dye",Count:1b}],Invisible:1b}
                                                      execute if score summonGhost evilGhostChosen matches 30..30 run execute as @e[tag=evilghost] at @s run summon minecraft:armor_stand ^ ^ ^1 {Tags:["stupid"],Motion:[0.0,1.0,-1.0],ArmorItems:[{},{},{},{id:"minecraft:purple_dye",Count:1b}],Invisible:1b}
                                                      execute if score summonGhost evilGhostChosen matches 15..15 run execute as @e[tag=evilghost] at @s run summon minecraft:armor_stand ^ ^ ^1 {Tags:["stupid"],Motion:[0.5,1.0,-1.0],ArmorItems:[{},{},{},{id:"minecraft:purple_dye",Count:1b}],Invisible:1b}
                                                      execute if score summonGhost evilGhostChosen matches 25..25 run execute as @e[tag=evilghost] at @s run summon minecraft:armor_stand ^ ^ ^1 {Tags:["stupid"],Motion:[-0.5,1.0,-1.0],ArmorItems:[{},{},{},{id:"minecraft:purple_dye",Count:1b}],Invisible:1b}
                                                      execute if score summonGhost evilGhostChosen matches 15..15 run execute as @e[tag=evilghost] at @s run summon minecraft:armor_stand ^ ^ ^1 {Tags:["stupid"],Motion:[0.0,1.0,-1.0],ArmorItems:[{},{},{},{id:"minecraft:purple_dye",Count:1b}],Invisible:1b}
                                                      execute if score summonGhost evilGhostChosen matches 30..31 run scoreboard players set summonGhost evilGhostChosen 0



                                                      #credits
                                                      execute if score active credits matches 1..1 run scoreboard players add timer credits 1
                                                      execute if score timer credits matches 1..1 run tellraw @a ["",{"text":"-----------------------","color":"dark_gray"},{"text":"\n"},{"text":"Would you like to replay\nthis segment?","bold":true,"color":"gold"},{"text":" \n"},{"text":"(Click the text to select)","italic":true,"color":"gray"},{"text":"\n\n"},{"text":"Yes, please.","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function dev:restartbattle"}},{"text":"\n\n"},{"text":"No. I want to leave now.","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function dev:tplobby"}},{"text":"\n"},{"text":"-----------------------","color":"dark_gray"}]

                                                      execute if score timer credits matches 1..1 run kill @e[tag=stupid]
                                                      execute if score timer credits matches 1..1 run replaceitem entity @a armor.head minecraft:carved_pumpkin
                                                      execute if score timer credits matches 1..1 run data merge entity @e[tag=evilghost,limit=1] {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["evilghost"],ArmorItems:[{},{},{},{id:"minecraft:dead_bubble_coral",Count:1b}],Rotation:[180f,0f],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}],Silent:1b,Attributes:[{Name:generic.followRange,Base:0}],IsBaby:1b}

                                                      execute if score active credits matches 1..1 run bossbar set minecraft:orbs visible false
                                                      execute if score timer credits matches 1..1 run execute as @a at @s run playsound minecraft:game.credits player @s ~ ~ ~ 1000

                                                      execute if score timer credits matches 1..1 run title @a times 20 1000 20
                                                      execute if score timer credits matches 1..1 run title @a title {"text":"Annoying Ghosts","color":"gold"}
                                                      execute if score timer credits matches 1..1 run title @a subtitle {"text":"By ElectroBleach","color":"blue"}

                                                      execute if score timer credits matches 85..85 run title @a title {"text":"Help from","color":"gold"}
                                                      execute if score timer credits matches 85..85 run title @a subtitle {"text":"GenericallyNamed and Meeepy12","color":"blue"}

                                                      execute if score timer credits matches 168..168 run title @a title {"text":"Testing help","color":"gold"}
                                                      execute if score timer credits matches 168..168 run title @a subtitle {"text":"From PopularYouTube","color":"blue"}

                                                      execute if score timer credits matches 251..251 run title @a title {"text":"Sounds from","color":"gold"}
                                                      execute if score timer credits matches 251..251 run title @a subtitle {"text":"By ElectroBleach,","color":"blue"}

                                                      #execute if score timer credits matches 282..282 run title @a title {"text":"Music","color":"gold"}
                                                      execute if score timer credits matches 282..282 run title @a subtitle {"text":"Makkon,","color":"blue"}

                                                      #execute if score timer credits matches 335..335 run title @a title {"text":"Music ","color":"gold"}
                                                      execute if score timer credits matches 335..335 run title @a subtitle {"text":"and Radiarc","color":"blue"}

                                                      execute if score timer credits matches 416..416 run title @a clear
                                                      execute if score timer credits matches 417..417 run title @a title {"text":"Some textures from","color":"gold"}
                                                      execute if score timer credits matches 417..417 run title @a subtitle {"text":"The BDoubleO100 Resource Pack","color":"blue"}

                                                      execute if score timer credits matches 502..502 run title @a title {"text":"Thanks for playing!","color":"gold"}
                                                      execute if score timer credits matches 502..502 run title @a subtitle {"text":"We hope you enjoyed :D","color":"blue"}
                                                      execute if score timer credits matches 500..500 run title @a clear




                                                      #Benedict Chosen
                                                      execute if score active benedictChosen matches 1..1 run scoreboard players add t benedictChosen 1
                                                      execute if score t benedictChosen matches 5..5 run execute as @a at @s run playsound minecraft:ghosts.evil.battle.intro player @s ~ ~ ~ 1000
                                                        execute if score t benedictChosen matches 40..40 run execute as @a at @s run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Come on! That is, like, so inconvenient! Can't you just, like, give it to me? I guess I'll just have to fight you for it.","color":"white"}]

                                                        #tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Oh! There's one last thing I forgot to tell you about your vacuum!","color":"none"}]
                                                        #tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"If you right click twice as opposed to once, you'll be able to shoot the objects you vacuumed up back out!","color":"none"}]
                                                        #tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Suck up the debris Evil Ghost makes when he summons in ghosts and shoot it back at him!","color":"none"}]


                                                        execute if score t benedictChosen matches 375..375 run execute as @a at @s run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Survive Evil Ghost's minion attacks and suck him up when he's vulnerable!","color":"none"}]
                                                        execute if score t benedictChosen matches 375..375 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2
                                                        execute if score t benedictChosen matches 375..375 run scoreboard players set active1 music2 1
                                                        execute if score t benedictChosen matches 375..375 run spawnpoint @a 62 66 -414
                                                        execute if score t benedictChosen matches 275..275 run scoreboard players set fightActive benedictChosen 1



                                                        execute if score t benedictChosen matches 375..375 run kill @e[tag=evilghost]

                                                         execute if score t benedictChosen matches 375..375 run summon ocelot 62 66 -419 {NoAI:1b,Invulnerable:1b,Tags:["runner"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:dead_bubble_coral",Count:1b}],Pose:{Head:[0f,179f,0f]},Silent:1b,Tags:["evilghost"],Attributes:[{Name:generic.followRange,Base:0}]}]}

                #                                    data merge entity @s {Silent:1b,Invulnerable:1b,Tags:["runner"],PersistenceRequired:1b,NoAI:0,CatType:0,Rotation:[180F,0F],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Tags:["evilghost"],ArmorItems:[{},{},{},{id:"minecraft:dead_bubble_coral",Count:1b}]}],Rotation:[180f,0f],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:10000000,ShowParticles:0b}],Pose:{Head:[0f,179f,0f]}]}
                                                        #execute if score t benedictChosen matches 275..275 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2
                                                        execute if score t benedictChosen matches 275..275 run scoreboard players set gate int 1


                                                        #ensure red glow
                                                          execute as @e[tag=ghostHat] run team join target

                                                          #facing manager
                                                            execute if score t benedictChosen matches 275.. run data merge entity @e[tag=evilghost,limit=1] {Pose:{Head:[0f,179f,0f]}}
                                                            execute if score t benedictChosen matches 275.. run execute store result entity @e[type=armor_stand,limit=1,tag=evilghost] Pose.Head[1] float 1.0 run data get entity @e[tag=runner,limit=1] Rotation[0] 1.0
                                                          #  execute unless score t benedictChosen matches 275.. run execute as @e[tag=evilghost] at @s run tp @s 62 66 -419 180 ~


                                                            #summon gate
                                                              execute if score gate int matches 1..1 run summon armor_stand 51.5 71 -424.5 {ArmorItems:[{},{},{},{id:"minecraft:scute",Count:1b}],Rotation:[90f,0f],Tags:["gate1"],Invisible:1b,NoGravity:1b}
                                                              execute if score gate int matches 1..1 run summon armor_stand 73.5 71 -424.5 {ArmorItems:[{},{},{},{id:"minecraft:scute",Count:1b}],Rotation:[90f,0f],Tags:["gate1"],Invisible:1b,NoGravity:1b}
                                                              execute if score gate int matches 1..1 run summon armor_stand 62 71 -410 {ArmorItems:[{},{},{},{id:"minecraft:scute",Count:1b}],Rotation:[0f,0f],Tags:["gate1"],Invisible:1b,NoGravity:1b}
                                                              execute if score gate int matches 1..1 run execute as @a at @s run playsound minecraft:game.portcullis player @s ~ ~ ~ 1000


                                                              #gate down
                                                                execute as @e[tag=gate1] at @s if entity @s[y=65,distance=1..] at @s run tp @s ~ ~-.1 ~
                                                                execute as @e[tag=gate1] at @s if entity @s[y=65,distance=..1] at @s run fill 51 70 -424 51 66 -426 minecraft:barrier
                                                                execute as @e[tag=gate1] at @s if entity @s[y=65,distance=..1] at @s run fill 61 66 -410 63 70 -410 minecraft:barrier
                                                                execute as @e[tag=gate1] at @s if entity @s[y=65,distance=..1] at @s run fill 73 66 -424 73 70 -426 minecraft:barrier

                                                                #kill gate
                                                                execute if score gate int matches 2..2 run kill @e[tag=gate1]
                                                                execute if score gate int matches 2..2 run fill 51 70 -424 51 66 -426 air
                                                                execute if score gate int matches 2..2 run fill 61 66 -410 63 70 -410 air
                                                                execute if score gate int matches 2..2 run fill 73 66 -424 73 70 -426 air

                                                                #gate up
                                                                  execute if score gate int matches 3..3 run execute as @e[tag=gate1] at @s if entity @s[y=73,distance=1..] at @s run tp @s ~ ~.1 ~
                                                                  execute if score gate int matches 3..3 run execute as @a at @s run playsound minecraft:game.portcullis player @s ~ ~ ~ 1000
                                                                  execute as @e[tag=gate1] at @s if entity @s[y=73,distance=..1] at @s run fill 51 70 -424 51 66 -426 minecraft:air
                                                                  execute as @e[tag=gate1] at @s if entity @s[y=73,distance=..1] at @s run fill 61 66 -410 63 70 -410 minecraft:air
                                                                  execute as @e[tag=gate1] at @s if entity @s[y=73,distance=..1] at @s run fill 73 66 -424 73 70 -426 minecraft:air

                                                                  #kill gate
                                                                  execute if score gate int matches 2..2 run kill @e[tag=gate1]
                                                                  execute if score gate int matches 2..2 run fill 51 70 -424 51 66 -426 air
                                                                  execute if score gate int matches 2..2 run fill 61 66 -410 63 70 -410 air
                                                                  execute if score gate int matches 2..2 run fill 73 66 -424 73 70 -426 air



                                                            execute if score gate int matches 1.. run scoreboard players set gate int 0


                                                            effect give @e[tag=miniGhost] minecraft:fire_resistance 1000000 255 true
                                                            team join target @e[tag=evilghost]

                                                          #boss Battle
                                                          execute if score fightActive benedictChosen matches 1..1 run execute if score minionSpawn benedictChosen matches 1..1 run execute as @e[tag=slocation,sort=random,limit=1] at @s run summon zombie ~ ~ ~ {CustomName:"{\"text\":\"annoying minion\"}",NoGravity:0b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["miniGhost"],ArmorItems:[{},{},{},{id:"minecraft:dead_brain_coral_fan",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.followRange,Base:10}]}
                                                          execute if score fightActive benedictChosen matches 1..1 run execute if score minionSpawn benedictChosen matches 1..1 run execute as @e[tag=miniGhost] at @s run particle end_rod ~ ~ ~ .5 .5 .5 .01 10 force
                                                          execute if score fightActive benedictChosen matches 1..1 run execute if score minionSpawn benedictChosen matches 1..1 run execute as @a at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1000 0
                                                          execute if score fightActive benedictChosen matches 1..1 run execute if score minionSpawn benedictChosen matches 1..1 run scoreboard players set minionSpawn benedictChosen 0


                                                          execute if score fightActive benedictChosen matches 1..1 run scoreboard players add bossTimer benedictChosen 1
                                                          execute if score bossTimer benedictChosen matches 1200..1200 run execute as @e[tag=slocation,limit=1,sort=random] at @s run summon minecraft:lightning_bolt
                                                          execute if score bossTimer benedictChosen matches 1210..1210 run execute as @e[tag=slocation,limit=1,sort=random] at @s run summon minecraft:lightning_bolt
                                                          execute if score bossTimer benedictChosen matches 1220..1220 run execute as @e[tag=slocation,limit=1,sort=random] at @s run summon minecraft:lightning_bolt
                                                          execute if score bossTimer benedictChosen matches 1230..1230 run execute as @e[tag=slocation,limit=1,sort=random] at @s run summon minecraft:lightning_bolt
                                                          execute if score bossTimer benedictChosen matches 1240..1240 run execute as @e[tag=slocation,limit=1,sort=random] at @s run summon minecraft:lightning_bolt
                                                          execute if score bossTimer benedictChosen matches 1250..1250 run execute as @e[tag=slocation,limit=1,sort=random] at @s run summon minecraft:lightning_bolt
                                                          execute if score bossTimer benedictChosen matches 1250..1250 run execute as @e[tag=slocation,limit=1,sort=random] at @s run summon minecraft:lightning_bolt
                                                          execute if score bossTimer benedictChosen matches 1260..1260 run execute as @e[tag=evilghost] at @s run summon minecraft:lightning_bolt
                                                          execute if score bossTimer benedictChosen matches 1260..1260 run execute as @e[team=randomizer,sort=random,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["selector"],Invulnerable:1b}

                                                          execute if score bossTimer benedictChosen matches 100..100 run execute as @e[tag=slocation,sort=random,limit=1] at @s run scoreboard players set minionSpawn benedictChosen 1
                                                          #execute if score bossTimer benedictChosen matches 300..300 run execute as @e[tag=slocation,sort=random,limit=1] at @s run scoreboard players set minionSpawn benedictChosen 1
                                                          execute if score bossTimer benedictChosen matches 500..500 run execute as @e[tag=slocation,sort=random,limit=1] at @s run scoreboard players set minionSpawn benedictChosen 1
                                                          #execute if score bossTimer benedictChosen matches 700..700 run execute as @e[tag=slocation,sort=random,limit=1] at @s run scoreboard players set minionSpawn benedictChosen 1
                                                          execute if score bossTimer benedictChosen matches 900..900 run execute as @e[tag=slocation,sort=random,limit=1] at @s run scoreboard players set minionSpawn benedictChosen 1
                                                          execute if score bossTimer benedictChosen matches 1100..1100 run execute as @e[tag=slocation,sort=random,limit=1] at @s run scoreboard players set minionSpawn benedictChosen 1

                                                          execute if score bossTimer benedictChosen matches 1500.. run scoreboard players set bossTimer benedictChosen 0



                                                          #randomizer saying
                                                            #random1
                                                              execute as @e[tag=random1] at @s run execute as @e[tag=selector,distance=..1] at @s run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Oh no! I’ve struck myself with a lightning bolt! I’m all dazed and vulnerable now! Dang it!","color":"white"}]
                                                              execute as @e[tag=random1] at @s run execute as @e[tag=selector,distance=..1] at @s run scoreboard players set dazed benedictChosen 1
                                                              execute as @e[tag=random1] at @s run execute as @e[tag=selector,distance=..1] at @s run execute as @a at @s run playsound minecraft:item.totem.use player @s ~ ~ ~ 1000
                                                              execute as @e[tag=random1] at @s run execute as @e[tag=selector,distance=..1] at @s run kill @s
                                                              #random2
                                                                execute as @e[tag=random2] at @s run execute as @e[tag=selector,distance=..1] at @s run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Gah! I've struck myself with a lightning bolt again! Why does this keep happening to me!","color":"white"}]
                                                                execute as @e[tag=random2] at @s run execute as @e[tag=selector,distance=..1] at @s run scoreboard players set dazed benedictChosen 1
                                                                execute as @e[tag=random2] at @s run execute as @e[tag=selector,distance=..1] at @s run execute as @a at @s run playsound minecraft:item.totem.use player @s ~ ~ ~ 1000
                                                                execute as @e[tag=random2] at @s run execute as @e[tag=selector,distance=..1] at @s run kill @s
                                                                #random3
                                                                  execute as @e[tag=random3] at @s run execute as @e[tag=selector,distance=..1] at @s run tellraw @a ["",{"text":"Evil Ghost: ","color":"dark_purple"},{"text":"Wow! Almost killed myself again! My own incompetence surprises me sometimes!","color":"white"}]
                                                                  execute as @e[tag=random3] at @s run execute as @e[tag=selector,distance=..1] at @s run scoreboard players set dazed benedictChosen 1
                                                                  execute as @e[tag=random3] at @s run execute as @e[tag=selector,distance=..1] at @s run execute as @a at @s run playsound minecraft:item.totem.use player @s ~ ~ ~ 1000
                                                                  execute as @e[tag=random3] at @s run execute as @e[tag=selector,distance=..1] at @s run kill @s

                                                                  #evil daze timer
                                                                    execute if score dazed benedictChosen matches 1..1 run scoreboard players add dazeTimer benedictChosen 1
                                                                    execute if score dazed benedictChosen matches 1..1 run data merge entity @e[tag=runner,limit=1] {NoAI:1b}
                                                                    execute if score dazed benedictChosen matches 1..1 run tag @e[tag=evilghost] add bossGhost
                                                                    execute if score dazed benedictChosen matches 1..1 run effect give @e[tag=evilghost] glowing 1000 255 true
                                                                    execute if score dazed benedictChosen matches 0..0 run effect clear @e[tag=evilghost] glowing
                                                                    execute if score dazed benedictChosen matches 0..0 run data merge entity @e[tag=runner,limit=1] {NoAI:0}
                                                                    execute if score dazed benedictChosen matches 0..0 run tag @e[tag=evilghost] remove bossGhost
                                                                    execute if score dazeTimer benedictChosen matches 240..240 run scoreboard players set dazed benedictChosen 0
                                                                    execute if score dazeTimer benedictChosen matches 240..240 run scoreboard players set dazeTimer benedictChosen 0

                                                                    #egexist
                                                                    scoreboard players set egexist benedictChosen 0
                                                                      execute as @e[tag=evilghost,limit=1] at @s run scoreboard players set egexist benedictChosen 1

                                                                execute if score egexist benedictChosen matches 0..0 if score fightActive benedictChosen matches 1..1 run function dev:battlestop



                                                                #music1
                                                                  execute if score active1 music2 matches 1..1 run scoreboard players add t1 music2 1
                                                                  execute if score t1 music2 matches 2..2 run execute as @a at @s run playsound minecraft:ghosts.evil.battle.music player @s ~ ~ ~ 1000
                                                                  execute if score t1 music2 matches 882.. run scoreboard players set t1 music2 0
                                                                    execute if score active1 music2 matches 0..0 run scoreboard players set t1 music2 0
                                                                    execute if score active1 music2 matches 0..0 run stopsound @a player minecraft:ghosts.evil.battle.music



                                                                    execute as @e[tag=evilghost] at @s run tp @e[tag=knockout] ~ ~2 ~
                                                                    execute as @e[tag=knockout] at @s run tp @s ~ ~ ~ ~12 ~
                                                                    execute if score dazeTimer benedictChosen matches 1..1 run execute as @e[tag=evilghost,limit=1] at @s run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b}],CustomName:"{\"text\":\"Vacuum-able for 12 seconds\",\"color\":\"red\"}",Tags:["knockout"],NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Small:1b}
                                                                    execute if score dazeTimer benedictChosen matches 239..239 run kill @e[tag=knockout]


                                                                    execute if score dazeTimer benedictChosen matches 20..20 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 11 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 40..40 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 10 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 60..60 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 9 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 80..80 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 8 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 100..100 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 7 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 120..120 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 6 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 140..140 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 5 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 160..160 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 4 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 180..180 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 3 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 200..200 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 2 seconds\",\"color\":\"red\"}"}
                                                                    execute if score dazeTimer benedictChosen matches 220..220 run data merge entity @e[tag=knockout,limit=1] {CustomName:"{\"text\":\"Vacuum-able for 1 second\",\"color\":\"red\"}"}



                                                    #subBattle
                                                      execute if score active subBattle matches 1..1 run scoreboard players add timer subBattle 1

                                                      execute if score timer subBattle matches 20..20 if score subSequence subBattle matches 0..0 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Congratulations, ghost hunter, you’ve just completed your first mission working for No Mo’ Ghost Co.!","color":"none"}]
                                                      execute if score timer subBattle matches 20..20 if score subSequence subBattle matches 0..0 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score timer subBattle matches 120..120 if score subSequence subBattle matches 0..0 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Here is your first reward:","color":"none"}]
                                                      execute if score timer subBattle matches 120..120 if score subSequence subBattle matches 0..0 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score timer subBattle matches 220..220 if score subSequence subBattle matches 0..0 run title @a title ["",{"text":"Nothing!","color":"red"}]
                                                      execute if score timer subBattle matches 220..220 if score subSequence subBattle matches 0..0 run execute as @a at @s run playsound minecraft:benedict.applause player @s ~ ~ ~ 1000

                                                      execute if score timer subBattle matches 320..320 if score subSequence subBattle matches 0..0 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"That’s right, you win absolutely nothing, except for the gratitude associated with the successful act of brutally vacuuming up a dozen innocent ghosts!","color":"none"}]
                                                      execute if score timer subBattle matches 320..320 if score subSequence subBattle matches 0..0 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score timer subBattle matches 380..380 if score subSequence subBattle matches 0..0 run title @a clear

                                                      execute if score timer subBattle matches 460..460 if score subSequence subBattle matches 0..0 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"You thought you'd get paid for this? Well, maybe you should've looked a little closer at the contract, because it explicitly stated that I am allowed to totally scam you! Hahahaha!","color":"none"}]
                                                      execute if score timer subBattle matches 460..460 if score subSequence subBattle matches 0..0 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score timer subBattle matches 580..580 if score subSequence subBattle matches 0..0 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Well, time to head back to the garage for a quick break. Then, we'll make our way to another mansion later tonight! Go through the front door and meet me out front. I’ll pick you up in the Heli-Van™.","color":"none"}]
                                                      execute if score timer subBattle matches 580..580 if score subSequence subBattle matches 0..0 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000

                                                      execute if score timer subBattle matches 680..680 if score subSequence subBattle matches 0..0 run scoreboard players set status doorStatus 1

                                                      execute if score timer subBattle matches 700..700 if score subSequence subBattle matches 0..0 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"Meet Benedict in the Heli-Van™","color":"none"}]
                                                      execute if score timer subBattle matches 700..700 if score subSequence subBattle matches 0..0 run summon minecraft:armor_stand 62 58 -349 {NoGravity:1b,Invisible:1b,Tags:["van3"],ArmorItems:[{},{},{},{id:"minecraft:emerald_ore",Count:1b}],Rotation:[90f,0f]}
                                                      execute if score timer subBattle matches 700..700 if score subSequence subBattle matches 0..0 run execute as @a at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1000 2


                                                      execute if score timer subBattle matches 700.. if score subSequence subBattle matches 0..0 run execute as @a[x=62,y=66,z=-384,distance=..2] at @s run scoreboard players set subSequence subBattle 1
                                                      execute if score subSequence subBattle matches 1..1 run scoreboard players set status doorStatus 2
                                                      execute if score subSequence subBattle matches 1..1 run weather thunder
                                                      execute if score subSequence subBattle matches 1..1 run execute as @a at @s run playsound minecraft:benedict.anxiety player @s ~ ~ ~ 1000
                                                      execute if score subSequence subBattle matches 1..1 run scoreboard players set subSequence subBattle 2
                                                      execute if score subSequence subBattle matches 2..2 run scoreboard players set timer subBattle 0
                                                      execute if score subSequence subBattle matches 2..2 run execute as @a[x=62,y=60,z=-369,distance=..3] at @s run scoreboard players set subSequence subBattle 3
                                                      execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 1..180 run tp @a 62 59.5 -369
                                                      execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 40..40 run tellraw @a ["",{"text":"Benedict: ","color":"red"},{"text":"Hmm, that was odd. I think something is up.","color":"none"}]
                                                      execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 40..40 run execute as @a at @s run playsound minecraft:benedict.radio player @s ~ ~ ~ 1000
                                                      execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 130..130 run tellraw @a ["",{"text":"Unknown Ghost: ","color":"gray"},{"text":"Schnurglerdurgh!","color":"white"}]
                                                      execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 130..130 run execute as @a at @s run playsound minecraft:ghosts.pink.snurgle player @s ~ ~ ~ 1000

                                                    #  execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 180..180 run tellraw @a ["",{"text":"[New Objective] ","color":"green"},{"text":"HURRY!","color":"none"}]
                                                      execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 180..180 run fill 64 59 -368 64 63 -349 barrier
                                                      execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 180..180 run fill 60 59 -368 60 62 -349 barrier
                                                      execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 180..180 run effect give @a minecraft:slowness 100000 2 true
                                                      #execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 180..180 run execute as @a at @s run playsound minecraft:ghosts.run player @s ~ ~ ~ 1000
                                                      execute if score subSequence subBattle matches 3..3 if score timer subBattle matches 180.. run execute as @e[tag=van3] at @s run execute as @a[distance=..6] at @s run scoreboard players set subSequence subBattle 4

                                                      execute if score subSequence subBattle matches 4..4 run replaceitem entity @a armor.head minecraft:carved_pumpkin
                                                      execute if score subSequence subBattle matches 4..4 run weather clear
                                                      execute if score subSequence subBattle matches 4..4 run effect give @a minecraft:blindness 1000000 255 true
                                                      execute if score subSequence subBattle matches 4..6 run execute as @a at @s run tp @s 62.5 59.0 -402.5 0 0
                                                      execute if score subSequence subBattle matches 4..4 run summon minecraft:armor_stand 62 59 -394 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["pinkie"],ArmorItems:[{},{},{},{id:"minecraft:bubble_coral",Count:1b}],Rotation:[180f,0f]}
                                                      execute if score subSequence subBattle matches 4..4 run scoreboard players set timer subBattle 0
                                                      execute if score subSequence subBattle matches 4..4 run stopsound @a player minecraft:benedict.anxiety
                                                      execute if score subSequence subBattle matches 4..4 run bossbar set minecraft:orbs visible false
                                                      execute if score subSequence subBattle matches 4..4 run scoreboard players set subSequence subBattle 5

                                                      execute if score subSequence subBattle matches 5..5 run execute if score timer subBattle matches 100..100 run execute as @a at @s run playsound minecraft:benedict.spooky player @s ~ ~ ~ 1000
                                                      execute if score subSequence subBattle matches 5..5 run execute if score timer subBattle matches 100..100 run scoreboard players set subSequence subBattle 6



                                                      execute if score subSequence subBattle matches 6..6 run execute as @e[tag=pinkie] at @s run tp @s ~ ~ ~-.02
                                                      execute if score subSequence subBattle matches 6..6 run replaceitem entity @a armor.head minecraft:air
                                                      execute if score subSequence subBattle matches 6..6 run gamemode spectator @a
                                                      execute if score subSequence subBattle matches 6..6 run execute as @a at @s run execute as @e[tag=pinkie,distance=..2.5] at @s run stopsound @a player minecraft:benedict.anxiety
                                                      execute if score subSequence subBattle matches 6..6 run execute as @a at @s run execute as @e[tag=pinkie,distance=..2.5] at @s run execute as @a at @s run playsound minecraft:entity.evoker_fangs.attack player @s ~ ~ ~ 1000
                                                      execute if score subSequence subBattle matches 6..6 run execute as @a at @s run execute as @e[tag=pinkie,distance=..2.5] at @s run scoreboard players set subSequence subBattle 7
                                                     execute if score subSequence subBattle matches 7..7 run scoreboard players set timer credits2 -60
                                                      execute if score subSequence subBattle matches 7..7 run scoreboard players set active credits2 1



                                                    #DoorStatus
                                                        #1
                                                          execute if score status doorStatus matches 1..1 run setblock 61 66 -387 dark_oak_door[hinge=left,open=true,half=lower,facing=north]
                                                          execute if score status doorStatus matches 1..1 run setblock 61 67 -387 dark_oak_door[hinge=left,open=true,half=upper,facing=north]
                                                          execute if score status doorStatus matches 1..1 run setblock 61 68 -387 dark_oak_door[hinge=left,open=true,half=lower,facing=north]
                                                          execute if score status doorStatus matches 1..1 run setblock 61 69 -387 dark_oak_door[hinge=left,open=true,half=upper,facing=north]
                                                          execute if score status doorStatus matches 1..1 run fill 61 66 -388 61 69 -388 air
                                                          execute if score status doorStatus matches 1..1 run fill 63 66 -387 63 69 -387 air
                                                          execute if score status doorStatus matches 1..1 run setblock 63 66 -387 dark_oak_door[hinge=right,open=true,half=lower,facing=north]
                                                          execute if score status doorStatus matches 1..1 run setblock 63 67 -387 dark_oak_door[hinge=right,open=true,half=upper,facing=north]
                                                          execute if score status doorStatus matches 1..1 run setblock 63 68 -387 dark_oak_door[hinge=right,open=true,half=lower,facing=north]
                                                          execute if score status doorStatus matches 1..1 run setblock 63 69 -387 dark_oak_door[hinge=right,open=true,half=upper,facing=north]
                                                          execute if score status doorStatus matches 1..1 run fill 63 66 -388 63 69 -388 air
                                                          execute if score status doorStatus matches 1..1 run fill 63 66 -389 61 70 -389 air
                                                          execute if score status doorStatus matches 1..1 run fill 62 66 -388 62 69 -388 air
                                                          execute if score status doorStatus matches 1..1 run playsound minecraft:block.wooden_door.open player @a ~ ~ ~ 1000 .75

                                                        #2
                                                          execute if score status doorStatus matches 2..2 run setblock 63 66 -388 dark_oak_door[hinge=right,open=false,half=lower,facing=north]
                                                          execute if score status doorStatus matches 2..2 run setblock 63 67 -388 dark_oak_door[hinge=right,open=false,half=upper,facing=north]
                                                          execute if score status doorStatus matches 2..2 run setblock 63 68 -388 dark_oak_door[hinge=right,open=false,half=lower,facing=north]
                                                          execute if score status doorStatus matches 2..2 run setblock 63 69 -388 dark_oak_door[hinge=right,open=false,half=upper,facing=north]
                                                          execute if score status doorStatus matches 2..2 run fill 61 66 -387 61 69 -387 air
                                                          execute if score status doorStatus matches 2..2 run fill 63 66 -387 63 69 -387 barrier
                                                          execute if score status doorStatus matches 2..2 run setblock 61 66 -388 dark_oak_door[hinge=left,open=false,half=lower,facing=north]
                                                          execute if score status doorStatus matches 2..2 run setblock 61 67 -388 dark_oak_door[hinge=left,open=false,half=upper,facing=north]
                                                          execute if score status doorStatus matches 2..2 run setblock 61 68 -388 dark_oak_door[hinge=left,open=false,half=lower,facing=north]
                                                          execute if score status doorStatus matches 2..2 run setblock 61 69 -388 dark_oak_door[hinge=left,open=false,half=upper,facing=north]
                                                          execute if score status doorStatus matches 2..2 run fill 63 66 -387 63 69 -387 air
                                                          execute if score status doorStatus matches 2..2 run fill 63 66 -387 63 69 -387 barrier
                                                          execute if score status doorStatus matches 2..2 run fill 61 66 -387 61 69 -387 barrier
                                                          execute if score status doorStatus matches 2..2 run fill 63 66 -389 61 70 -389 barrier
                                                          execute if score status doorStatus matches 2..2 run fill 62 66 -388 62 69 -388 minecraft:dark_oak_trapdoor[open=true]
                                                            execute if score status doorStatus matches 2..2 run playsound minecraft:block.wooden_door.close player @a ~ ~ ~ 1000 .75
                                                          execute if score status doorStatus matches 1..2 run scoreboard players set status doorStatus 0



                                                          execute if score active credits2 matches 1..1 run scoreboard players set subSequence subBattle 8
                                                          execute if score active credits2 matches 1..1 run scoreboard players add timer credits2 1

                                                          execute if score timer credits2 matches 1..1 run kill @e[tag=stupid]
                                                          execute if score active credits2 matches 1..1 run replaceitem entity @a armor.head minecraft:carved_pumpkin
                                                          execute if score active credits2 matches 1..1 run stopsound @a player
                                                          execute if score timer credits2 matches 1..1 run data merge entity @e[tag=evilghost,limit=1] {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["evilghost"],ArmorItems:[{},{},{},{id:"minecraft:dead_bubble_coral",Count:1b}],Rotation:[180f,0f],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:1000000,ShowParticles:0b}],Silent:1b,Attributes:[{Name:generic.followRange,Base:0}],IsBaby:1b}

                                                          execute if score active credits2 matches 1..1 run bossbar set minecraft:orbs visible false
                                                          execute if score timer credits2 matches 1..1 run stopsound @a player
                                                          execute if score timer credits2 matches 1..1 run execute as @a at @s run playsound minecraft:game.credits master @s ~ ~ ~ 1000

                                                          execute if score timer credits2 matches 1..1 run title @a times 20 1000 20
                                                          execute if score timer credits2 matches 1..1 run title @a title {"text":"Annoying Ghosts","color":"gold"}
                                                          execute if score timer credits2 matches 1..1 run title @a subtitle {"text":"By ElectroBleach","color":"blue"}

                                                          execute if score timer credits2 matches 85..85 run title @a title {"text":"Help from","color":"gold"}
                                                          execute if score timer credits2 matches 85..85 run title @a subtitle {"text":"GenericallyNamed and Meeepy12","color":"blue"}

                                                          execute if score timer credits2 matches 168..168 run title @a title {"text":"Testing help","color":"gold"}
                                                          execute if score timer credits2 matches 168..168 run title @a subtitle {"text":"From PopularYouTube","color":"blue"}

                                                          execute if score timer credits2 matches 251..251 run title @a title {"text":"Sounds from","color":"gold"}
                                                          execute if score timer credits2 matches 251..251 run title @a subtitle {"text":"By ElectroBleach,","color":"blue"}

                                                          #execute if score timer credits2 matches 282..282 run title @a title {"text":"Music","color":"gold"}
                                                          execute if score timer credits2 matches 282..282 run title @a subtitle {"text":"Makkon,","color":"blue"}

                                                          #execute if score timer credits2 matches 335..335 run title @a title {"text":"Music ","color":"gold"}
                                                          execute if score timer credits2 matches 335..335 run title @a subtitle {"text":"and Radiarc","color":"blue"}


                                                          execute if score timer credits2 matches 417..417 run title @a title {"text":"Some textures from","color":"gold"}
                                                          execute if score timer credits2 matches 417..417 run title @a subtitle {"text":"The BDoubleO100 Resource Pack","color":"blue"}

                                                          execute if score timer credits2 matches 502..502 run title @a title {"text":"Thanks for playing!","color":"gold"}
                                                          execute if score timer credits2 matches 502..502 run title @a subtitle {"text":"We hope you enjoyed :D","color":"blue"}
                                                          execute if score timer credits2 matches 500..500 run title @a clear


                                                        #No fall damage
                                                          execute as @a at @s run execute if block ~ ~-2 ~ air run effect give @s minecraft:jump_boost 1 255 true
