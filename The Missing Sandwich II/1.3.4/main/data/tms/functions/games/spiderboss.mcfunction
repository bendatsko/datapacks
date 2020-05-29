#spiderBoss

  #KEY
    #1: summoning spipder (particles and /summon)
    #2: battle interlude

execute if score spiderboss Valid matches ..4 run effect clear @a minecraft:jump_boost
execute if score spiderboss Valid matches ..4 run effect clear @a minecraft:saturation
scoreboard players set canFall Valid 1

    #spider exist detection
      execute if score spiderBoss Valid matches 2..2 run scoreboard players set spiderExist spiderSequence 0
      execute as @e[tag=spiderboss] run scoreboard players set spiderExist spiderSequence 1
  #spider particle activation
    execute if score spiderBoss Valid matches 1..1 run summon armor_stand 4475 7.5 -4075 {Tags:["tpSpawnParticle"],Motion:[-2.6,0.7,0.0],Invisible:1}
    execute if score spiderBoss Valid matches 1..1 run playsound minecraft:block.conduit.ambient player @a ~ ~ ~ 500 2
    execute if score spiderBoss Valid matches 1..1 run scoreboard players set @a jungleTracks 0

      #particles
        execute as @e[tag=tpSpawnParticle] at @s run particle minecraft:flame ~ ~ ~ .01 .01 .01 .1 2 force
        execute as @e[tag=tpSpawnParticle] at @s run particle minecraft:end_rod ~ ~ ~ .01 .01 .01 .1 1 force
        execute as @e[tag=spiderboss] at @s run particle minecraft:enchant ~ ~ ~ 2 2 2 1 1 force
          #remove previous spider
          execute if score spiderBoss Valid matches 1..1 run execute as @e[tag=spiderboss] at @s run tp @s ~ ~-5 ~

          execute if score spiderBoss Valid matches 1..1 run execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run scoreboard players set spiderBoss Valid 2
          execute if score spiderBoss Valid matches 1..1 run scoreboard players set spiderExist spiderSequence 1
            #summon spider
            execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run kill @e[tag=spiderboss]
            execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run summon spider 4449 3 -4072 {Rotation:[100f,0f],Attributes:[{Name:generic.maxHealth,Base:250},{Name:generic.attackDamage,Base:10},{Name:generic.followRange,Base:100}],Tags:["spiderboss"],Health:200.0f,NoAI:0,Silent:1,Invulnerable:0,Time:-2147483648,ActiveEffects:[{Id:12,Amplifier:0,PersistenceRequired:1,Duration:199999980}]}
            execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run playsound minecraft:entity.illusion_illager.mirror_move player @a ~ ~ ~ 1000
            execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1000
            execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run playsound minecraft:block.conduit.activate player @a ~ ~ ~ 1000 1.5
            execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run stopsound @a player minecraft:block.conduit.ambient
            execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run execute as @e[tag=spiderboss] at @s run particle minecraft:explosion_emitter ~ ~ ~ .01 .01 .01 .01 1 force
            execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run tellraw @a ["",{"text":"[Objective] ","color":"green","bold":true},{"text":"Kill Decklin the spider!","color":"none","bold":false}]
            execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run scoreboard players set spiderBoss Valid 2

    #change score to battle
      execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run kill @e[tag=tpSpawnParticle]
      execute as @e[x=4449,y=3,z=-4073,distance=..3,tag=tpSpawnParticle] at @s run scoreboard players set spiderBoss Valid 2


      #Music
        execute if score spiderBoss Valid matches 2..2 run scoreboard players add @a jungleTracks 1
        execute as @a[scores={jungleTracks=5..5}] at @s run playsound minecraft:music_disc.strad player @s ~ ~ ~ 1000
        scoreboard players reset @a[scores={jungleTracks=2000..}] jungleTracks


        execute if score spiderExist spiderSequence matches 0..0 run scoreboard players set spiderBoss Valid 3

        execute if score spiderBoss Valid matches 3..3 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1
        execute if score spiderBoss Valid matches 3..3 run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1000
        execute if score spiderBoss Valid matches 3..3 run playsound minecraft:entity.elder_guardian.death player @a ~ ~ ~ 1000
        execute if score spiderBoss Valid matches 3..3 run scoreboard players set spiderExist spiderSequence 3
        execute if score spiderBoss Valid matches 3..3 run scoreboard players set keySummon spiderSequence 0
        execute if score spiderBoss Valid matches 3..3 run scoreboard players set spiderBoss Valid 4

        execute if score spiderBoss Valid matches 4..4 run stopsound @a player minecraft:music_disc.strad
        execute if score spiderBoss Valid matches 4..4 run scoreboard players add keySummon spiderSequence 1
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1000
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 1000
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1000
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run particle explosion 4449 3 -4072 0 0 0 0.2 100 force
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run particle lava 4449 3 -4072 0 0 0 0.3 50 force
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run particle minecraft:explosion_emitter 4449 3 -4072 0 0 0 0.1 1 force
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run particle minecraft:firework 4449 3 -4072 0 0 0 0.2 50 force
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run particle flame 4449 3 -4072 0 0 0 0.2 100 force
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run kill @e[type=llama_spit]
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run effect give @a minecraft:saturation 500000 255 true
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run summon item 4449 3 -4072 {Tags:["key2"],Item:{id:"minecraft:fermented_spider_eye",Count:1b,tag:{display:{Name:"{\"text\":\"Temple Key 2\"}"}}}}
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run scoreboard players set teleportTimer spiderSequence 0
        execute if score spiderBoss Valid matches 4..4 if score keySummon spiderSequence matches 38..38 run scoreboard players set spiderBoss Valid 5


        execute as @a[nbt={Inventory:[{id:"minecraft:fermented_spider_eye",tag:{display:{Name:"{\"text\":\"Temple Key 2\"}"}}}]}] at @s if score spiderBoss Valid matches 5..5 run scoreboard players add teleportTimer spiderSequence 1
        execute if score spiderBoss Valid matches 5..5 if score teleportTimer spiderSequence matches 60..60 run tp @a 4416 89 -4047
        execute if score spiderBoss Valid matches 5..5 if score teleportTimer spiderSequence matches 60..60 run playsound minecraft:custom.unnfect player @a ~ ~ ~ 1000 2
        execute if score spiderBoss Valid matches 5..5 if score teleportTimer spiderSequence matches 60..60 run setblock 4415 88 -4048 minecraft:spruce_planks


      execute if score spiderBoss Valid matches 6..6 run scoreboard players set spiderBoss Valid 7


        execute if score spiderBoss Valid matches 7..7 run say sequence comes to a hault.


        #Edmund Talks
        execute if score teleportTimer spiderSequence matches 150..150 run tellraw @a ["",{"text":"Edmund: ","color":"yellow"},{"text":"Aha! You found my key! You can keep it. It's not like I'll be using it for anything!","color":"white"}]
        execute if score teleportTimer spiderSequence matches 150..150 run playsound minecraft:entity.wolf.step player @a ~ ~ ~ 1000
        execute if score teleportTimer spiderSequence matches 150.. run scoreboard players set canFall Valid 0
        execute if score teleportTimer spiderSequence matches 150.. run kill @e[tag=lock]

        execute if score teleportTimer spiderSequence matches 250..250 run tellraw @a ["",{"selector":"@p","color":"aqua"},{"text":": Thank you for all of your help! Just out of curiosity, do you have any idea where the third and final key to the temple is? ","color":"white"}]
        execute if score teleportTimer spiderSequence matches 250..250 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1000 1

        execute if score teleportTimer spiderSequence matches 350..350 run tellraw @a ["",{"text":"Edmund: ","color":"yellow"},{"text":"Alas, I do not. ","color":"white"},{"text":"But, you may want to look around the village a bit.","color":"green"},{"text":" Somebody may know something about the key you're looking for. ","color":"none"}]
        execute if score teleportTimer spiderSequence matches 350..350 run playsound minecraft:entity.wolf.step player @a ~ ~ ~ 1000
        execute if score teleportTimer spiderSequence matches 350..350 run execute as @a[limit=1] at @s run summon zombie 4445 91 -4069 {CustomName:"{\"text\":\"Grandma Buttercreme\"}",Tags:["creme"],HandItems:[{id:"minecraft:gold_nugget",Count:1b},{}],Attributes:[{Name:generic.followRange,Base:0}],Invulnerable:1,PersistenceRequired:1,Silent:1}
        execute if score teleportTimer spiderSequence matches 351.. run scoreboard players set spiderBossActive Valid 0
