#lobby reset

kill @e[tag=door1]
kill @e[tag=door2]
fill 46 8 -179 50 4 -179 minecraft:barrier
scoreboard players set doorStatus lobby 0
scoreboard players set driveTime lobby 0
scoreboard players set benedict clocks 0
scoreboard players set benedict_talking ghost_sequences 0
scoreboard players set jh_fire ghost_sequences 0
scoreboard players set ghost_talking ghost_sequences 0
kill @e[tag=van]
kill @e[tag=van2]
kill @e[tag=ben]
summon minecraft:armor_stand 48.00 3 -184 {NoGravity:1b,Invisible:1b,Tags:["van"],ArmorItems:[{},{},{},{id:"minecraft:emerald_ore",Count:1b}],Rotation:[180f,0f]}
summon minecraft:armor_stand 61.11 58.00 -307.21 {NoGravity:1b,Invisible:1b,Tags:["van2"],ArmorItems:[{},{},{},{id:"minecraft:emerald_ore",Count:1b}]}
summon armor_stand 64.46 59.33 -309.00 {NoGravity:1b,Invisible:1b,Tags:["ben"],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b}],Rotation:[-122f,0f]}
scoreboard players set Sequence ghost_sequences 0
scoreboard players set progress bossbar 0
scoreboard players set levelClear clocks 0
kill @e[tag=ham_jerry]
setblock 92 61 -416 air
setblock 86 61 -427 air
stopsound @a
bossbar set minecraft:orbs players
scoreboard players set levelClear clocks 0
scoreboard players set levelClear2 clocks 0


#blockades
  kill @e[tag=blockade1]
    #basement
      summon armor_stand 123.50 59.71 -400.50 {Invisible:1b,PersistenceRequired:1b,Tags:["blockade1"],DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{},{},{},{id:"minecraft:rabbit_foot",Count:1b}]}
      fill 123 60 -401 123 59 -401 minecraft:barrier
        summon armor_stand 66.62 66.00 -406.02 {Invisible:1b,PersistenceRequired:1b,Tags:["blockade1"],DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{},{},{},{id:"minecraft:rabbit_foot",Count:1b}]}
        fill 66 67 -407 66 66 -406 minecraft:barrier
          summon armor_stand 58.50 66.00 -406.02 {Invisible:1b,PersistenceRequired:1b,Tags:["blockade1"],DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{},{},{},{id:"minecraft:rabbit_foot",Count:1b}]}
          fill 58 67 -407 58 66 -406 minecraft:barrier
            fill 88 59 -393 91 63 -393 barrier

          #attic
            fill 90 83 -397 90 84 -397 minecraft:barrier
              summon armor_stand 90 83 -397 {Invisible:1b,PersistenceRequired:1b,Tags:["blockade2"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:rabbit_foot",Count:1b}]}



              #reset Carpet
              fill 89 83 -409 89 83 -406 black_carpet
              setblock 90 83 -406 minecraft:black_carpet
              setblock 90 83 -409 black_carpet
              fill 91 83 -409 91 83 -406 minecraft:black_carpet
              fill 90 83 -408 90 83 -407 orange_carpet

              #boss battle
              setblock 61 82 -425 minecraft:dark_oak_slab[type=top]


  #door1:

    summon armor_stand 39 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

    summon armor_stand 38 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

    summon armor_stand 37 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

    summon armor_stand 36 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

    summon armor_stand 35 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

      summon armor_stand 39 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

      summon armor_stand 38 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

      summon armor_stand 37 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

      summon armor_stand 36 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

      summon armor_stand 35 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

        summon armor_stand 39 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

        summon armor_stand 38 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

        summon armor_stand 37 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

        summon armor_stand 36 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

        summon armor_stand 35 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

          summon armor_stand 39 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

          summon armor_stand 38 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

          summon armor_stand 37 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

          summon armor_stand 36 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

          summon armor_stand 35 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

            summon armor_stand 39 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

            summon armor_stand 38 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

            summon armor_stand 37 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

            summon armor_stand 36 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

            summon armor_stand 35 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}





            #door2:

              summon armor_stand 50 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

              summon armor_stand 49 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

              summon armor_stand 48 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

              summon armor_stand 47 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

              summon armor_stand 46 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                summon armor_stand 50 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                summon armor_stand 49 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                summon armor_stand 48 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                summon armor_stand 47 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                summon armor_stand 46 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                  summon armor_stand 50 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                  summon armor_stand 49 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                  summon armor_stand 48 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                  summon armor_stand 47 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                  summon armor_stand 46 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                    summon armor_stand 50 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                    summon armor_stand 49 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                    summon armor_stand 48 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                    summon armor_stand 47 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                    summon armor_stand 46 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                      summon armor_stand 50 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                      summon armor_stand 49 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                      summon armor_stand 48 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                      summon armor_stand 47 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}

                      summon armor_stand 46 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door1"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door1"],BlockState:{Name:"minecraft:coal_ore"}}]}



                      #door3:

                        summon armor_stand 61 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                        summon armor_stand 60 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                        summon armor_stand 59 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                        summon armor_stand 58 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                        summon armor_stand 57 4 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                          summon armor_stand 61 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                          summon armor_stand 60 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                          summon armor_stand 59 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                          summon armor_stand 58 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                          summon armor_stand 57 5 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                            summon armor_stand 61 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                            summon armor_stand 60 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                            summon armor_stand 59 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                            summon armor_stand 58 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                            summon armor_stand 57 6 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                              summon armor_stand 61 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                              summon armor_stand 60 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                              summon armor_stand 59 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                              summon armor_stand 58 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                              summon armor_stand 57 7 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                                summon armor_stand 61 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                                summon armor_stand 60 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                                summon armor_stand 59 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                                summon armor_stand 58 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}

                                summon armor_stand 57 8 -178.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["door2"],PersistenceRequired:1b,Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:-2147483648,Tags:["door2"],BlockState:{Name:"minecraft:coal_ore"}}]}



                                #level reset
                                  setblock 56 55 -402 lever[facing=west,powered=false]
                                  setblock 53 58 -402 minecraft:redstone_lamp
                                  setblock 45 54 -402 minecraft:iron_door[half=lower,open=true]
                                  setblock 45 55 -402 minecraft:iron_door[half=upper,open=true]



                                  #vortex reset
                                    kill @e[tag=wormhole]
                                    data merge entity @e[tag=clarissa,limit=1] {Rotation:[90f,0f]}
                                    scoreboard players set flowerShoot clocks 0
                                    scoreboard players set summonVortex clocks 0
                                    stopsound @a player minecraft:game.wormhole_ambient
                                    scoreboard players set clarissa_battle Music 0
