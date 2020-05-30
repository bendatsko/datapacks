data merge entity @e[tag=activeDrawer,limit=1] {Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:brain_coral_fan",Count:1b}]}
kill @e[tag=drawertape]
scoreboard players set sequence office 0
execute as @e[tag=treeguy] at @s run tp @s ~ ~ -245
#summon minecraft:armor_stand -112.463 64.12 -338.56 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["hammer"],DisabledSlots:262144,ArmorItems:[{},{},{},{id:"minecraft:birch_sapling",Count:1b,tag:{display:{Name:"{\"text\":\"Hammer\"}"}}]}
data merge entity @e[tag=hammer,limit=1] {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["hammer"],DisabledSlots:262144,ArmorItems:[{},{},{},{id:"minecraft:birch_sapling",Count:1b,tag:{display:{Name:"{\"text\":\"Hammer\",\"italic\":false}"}}}]}
execute as @e[tag=king] at @s run tp @s ~ ~15 ~
