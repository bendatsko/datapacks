scoreboard players set gSequence skeletonStatus 0
scoreboard players set gTimer skeletonStatus 1
tag @a remove gPlaying
scoreboard players set subSkelTalk skeletonStatus 0
scoreboard players set timer skeletonStatus 0
data merge entity @e[tag=skeleton,limit=1] {HandItems:[{id:"minecraft:apple",Count:1b}]}
