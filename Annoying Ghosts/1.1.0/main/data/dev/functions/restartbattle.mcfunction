replaceitem entity @a armor.head air
scoreboard players set benedict_talking ghost_sequences 2399
scoreboard players set active credits 0
title @a clear
stopsound @a player minecraft:game.credits
tellraw @a {"text":"You've just been taken back to the decision to join or abandon Benedict.","italic":true,"color":"gray"}
scoreboard players set active evilGhostChosen 0
scoreboard players set t evilGhostChosen 0
scoreboard players set summonGhost evilGhostChosen 1000
bossbar set minecraft:orbs visible true
bossbar set minecraft:orbs players @a
