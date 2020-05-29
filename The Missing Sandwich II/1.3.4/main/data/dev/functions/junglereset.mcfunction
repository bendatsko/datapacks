###jungle reset
setblock 4415 88 -4048 minecraft:spruce_planks
scoreboard players reset @e jungleVValid
scoreboard players set carlsonAdd Valid 0
scoreboard players set carlsonDetect Valid 0
scoreboard players set carlsonTimer Valid 0
scoreboard players set edmundSequence Valid 0
scoreboard players set ed jungleVValid 0
scoreboard players set ed2 jungleVValid 0
scoreboard players set summonSpider spiderSequence 3
scoreboard players set playedFallSound spiderSequence 0
scoreboard players set spiderAtLocation spiderSequence 0
scoreboard players set spiderTalk Valid 0
scoreboard players set snowmanActive Valid 0
scoreboard players set spiderTalk2 Valid 0
scoreboard players set @a jungleTracks 0
scoreboard players set spiderBossActive Valid 0
scoreboard players set keySummon spiderSequence 0
scoreboard players set teleportTimer spiderSequence 0
kill @e[tag=lock]
summon iron_golem 4444.5 91 -4064.05 {Tags:["lock"],PlayerCreated:0,Invulnerable:1,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:2,Duration:10000000}]}
kill @e[tag=creme]

#Entities
  #reset all villagers
  execute as @e[tag=ed] at @s run scoreboard players set @s Valid 0
  #normal Villagers
    scoreboard players set jub jungleVValid 0
    scoreboard players set mcfoo jungleVValid 0
    scoreboard players set tim jungleVValid 0
    scoreboard players set raz jungleVValid 0
    scoreboard players set ptudr jungleVValid 0
    scoreboard players set chudu jungleVValid 0
    scoreboard players set gtom jungleVValid 0
    scoreboard players set jfoob jungleVValid 0
    scoreboard players set warb jungleVValid 0
    scoreboard players set mrmiss jungleVValid 0
    scoreboard players set barth jungleVValid 0
    scoreboard players set rtom jungleVValid 0
    scoreboard players set goo jungleVValid 0
    kill @e[tag=key2]
      #spiderboss
        kill @e[tag=spiderboss]
        kill @e[tag=poopspit]

        #snowman
          scoreboard players set null snowmanDeath 28
          scoreboard players set snowmanActive Valid 0
          scoreboard players add spiderTalk2 Valid 0

          #Buttercreme
            scoreboard players set talkActive Buttercreme 0
            scoreboard players set letsGo Buttercreme 0
            scoreboard players set countDownTp Buttercreme 0
            scoreboard players set buttConvo Buttercreme 0
