scoreboard players set sequence global 0
kill @e[tag=boulder]
summon minecraft:armor_stand -84.48 69.00 -373.51 {CustomNameVisible:0b,NoGravity:0b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["boulder"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b}]}
kill @e[tag=train]
summon minecraft:armor_stand 114.5 40 -220 {ArmorItems:[{},{},{},{id:"minecraft:bubble_coral_fan",Count:1b}],Rotation:[180f,0f],Tags:["train"],NoGravity:1b,Invisible:1b}
execute as @e[team=hub] at @s run data merge entity @s {CustomNameVisible:1b}
