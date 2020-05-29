#snowman counter

effect clear @a minecraft:saturation
scoreboard players set canFall Valid 1

  #snowman summoner
    execute as @a at @s if score @s sdeath matches 1..1 run execute if score snowmanActive Valid matches 1..1 run execute as @e[type=armor_stand,sort=random,tag=stp1,limit=1] at @s run summon snow_golem ~ ~ ~ {Pumpkin:0b}
  execute if score snowmanActive Valid matches 1..1 run execute as @a[tag=!spectator] at @s run scoreboard players operation player snowmanDeath += @s snowmanDeath
  execute if score snowmanActive Valid matches 1..1 run scoreboard players set @a snowmanDeath 0

  execute if score snowmanActive Valid matches 1..1 run scoreboard players set total snowmanDeath 28
  #execute if score snowmanActive Valid matches 1..1 run scoreboard players operation null snowmanDeath = total snowmanDeath
  execute if score snowmanActive Valid matches 1..1 run execute as @a[tag=!spectator,limit=1] at @s run scoreboard players operation null snowmanDeath -= player snowmanDeath

  execute as @a at @s run scoreboard players operation null snowmanDeath -= @s sdeath
  scoreboard players set @a sdeath 0


  #enco messages
    execute if score null snowmanDeath matches 3..3 run execute as @e[sort=random,tag=randomtalk,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["fart"]}
    execute if score null snowmanDeath matches 3..3 run scoreboard players set encoMessage Valid 0
    execute if score null snowmanDeath matches 3..3 run scoreboard players set null snowmanDeath 2

      execute if score null snowmanDeath matches 12..12 run execute as @e[sort=random,tag=randomtalk,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["fart"]}
      execute if score null snowmanDeath matches 12..12 run scoreboard players set encoMessage Valid 0
      execute if score null snowmanDeath matches 12..12 run scoreboard players set null snowmanDeath 11

        execute if score null snowmanDeath matches 20..20 run execute as @e[sort=random,tag=randomtalk,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["fart"]}
        execute if score null snowmanDeath matches 20..20 run scoreboard players set encoMessage Valid 0
        execute if score null snowmanDeath matches 20..20 run scoreboard players set null snowmanDeath 19

        execute if score null snowmanDeath matches 0..0 run scoreboard players set snowmanActive Valid 2
        execute if score null snowmanDeath matches 0..0 run kill @e[type=snow_golem]
        execute if score null snowmanDeath matches 0..0 run stopsound @a player minecraft:music_disc.stal
        execute if score null snowmanDeath matches 0..0 run scoreboard players set snowmanActive Valid 3
        execute if score snowmanActive Valid matches 3..3 run scoreboard players set null snowmanDeath -1
        execute if score null snowmanDeath matches 0..0 run scoreboard players set snowmanActive Valid 0

  execute as @e[type=armor_stand,tag=fart,x=4454,y=68,z=-4127,distance=..1] at @s run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Keep going! Only ","color":"none"},{"score":{"name":"null","objective":"snowmanDeath"},"color":"none"},{"text":" snowmen remain!","color":"none"}]
  execute as @e[type=armor_stand,tag=fart,x=4454,y=68,z=-4127,distance=..1] at @s run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000
  execute as @e[type=armor_stand,tag=fart,x=4454,y=68,z=-4127,distance=..1] at @s run kill @e[tag=fart]

  execute as @e[type=armor_stand,tag=fart,x=4453,y=68,z=-4127,distance=..1] at @s run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"You can do it! Only ","color":"none"},{"score":{"name":"null","objective":"snowmanDeath"},"color":"none"},{"text":" snowmen remain!","color":"none"}]
  execute as @e[type=armor_stand,tag=fart,x=4453,y=68,z=-4127,distance=..1] at @s run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000
  execute as @e[type=armor_stand,tag=fart,x=4453,y=68,z=-4127,distance=..1] at @s run kill @e[tag=fart]

  execute as @e[type=armor_stand,tag=fart,x=4452,y=68,z=-4127,distance=..1] at @s run tellraw @a ["",{"text":"Decklin the Spider: ","color":"dark_green"},{"text":"Don't give up now! There are ","color":"none"},{"score":{"name":"null","objective":"snowmanDeath"},"color":"none"},{"text":" snowmen remaining!","color":"none"}]
  execute as @e[type=armor_stand,tag=fart,x=4452,y=68,z=-4127,distance=..1] at @s run playsound minecraft:voices.sneeze player @a ~ ~ ~ 1000
  execute as @e[type=armor_stand,tag=fart,x=4452,y=68,z=-4127,distance=..1] at @s run kill @e[tag=fart]

  #compare and kill access targets
    execute if score totalPlayers playerCountComp < totalTarget targetCount run kill @e[type=silverfish]

    #count players for comp
    scoreboard players set totalPlayers playerCountComp 0
    scoreboard players set @a playerCountComp 1
    scoreboard players operation totalPlayers playerCountComp += @a playerCountComp

    #count targets for comp
    scoreboard players set totalTarget targetCount 0
    scoreboard players set @e[type=silverfish] targetCount 1
    scoreboard players operation totalTarget targetCount += @e[type=silverfish] targetCount


  #Silvefish targets
  #summon and tp target
  execute as @e[type=silverfish] at @s run tp @p
  scoreboard players set @a[tag=!spectator] targetnear 0
  execute as @e[tag=target,limit=1] at @s run tp @a[tag=!spectator]
  execute as @a[tag=!spectator] at @s run teleport @e[limit=1,distance=..1,tag=target] ~ ~2.4 ~
  execute as @e[tag=target] at @s run scoreboard players set @a[tag=!spectator,distance=..6] targetnear 1
  execute as @p[tag=!spectator,scores={targetnear=0..0}] at @s run summon silverfish ~ ~2 ~ {Tags:["target"],PersistenceRequired:1,Invulnerable:1,NoAI:0,Silent:1,Team:"snowman",ActiveEffects:[{Id:14,Amplifier:1,Duration:200000000,ShowParticles:0b}],Attributes:[{Name:generic.followRange,Base:0}]}
  execute as @a[tag=!spectator] at @s run execute as @e[type=snowball] at @s run effect give @a[distance=..3] minecraft:poison 1 10
  execute as @a[scores={health=1..1}] at @s run kill @s
  effect give @e[type=minecraft:silverfish] minecraft:invisibility 1000000 255 true
    #activetarget? (not in effect atm)
  tag @e[type=silverfish] remove activeTarget
  execute as @a at @s run execute as @e[tag=target,distance=..6] at @s run tag @s add activeTarget
  kill @e[type=silverfish,tag=!activeTarget]
  execute if score @a[limit=1] deaths matches 1.. run kill @e[type=silverfish]

execute as @a at @s run scoreboard players add @s jungleTracks 1
execute as @a[scores={jungleTracks=5..5}] at @s run stopsound @a player minecraft:music_disc.stal
execute as @a[scores={jungleTracks=5..5}] at @s run playsound minecraft:music_disc.stal player @s ~ ~ ~ 1000
scoreboard players reset @a[scores={jungleTracks=1558..}] jungleTracks
