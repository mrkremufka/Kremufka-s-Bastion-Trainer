execute in minecraft:the_nether positioned 19 130 32 if block ~ ~ ~ minecraft:air run function kbt:loadout/sign/place
execute in minecraft:the_nether positioned 19 130 32 if block ~ ~ ~ #minecraft:signs run function kbt:loadout/sign/place
execute in minecraft:the_nether positioned 19 130 32 if block ~ ~ ~ #minecraft:signs run data merge block ~ ~ ~ {Text1:'{"text":""}',Text2:'{"text":"Loadout","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger kbt.loadout set 8"}}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute in minecraft:the_nether positioned 19 130 32 unless block ~ ~ ~ #minecraft:signs run tellraw @a {"text":"Place a sign at 19 130 32, then run /function kbt:loadout/sign/bind","color":"red"}
