data modify storage kbt:share blocks_name set from block 1000 231 -1102 name
data remove storage kbt:share blocks_loaded
scoreboard players set #sh_booth kbt.settings 3
scoreboard players set #sh_full_wait kbt.settings 0
execute in minecraft:the_nether run forceload add 936 936 1063 1063
schedule function kbt:share/import/blocks/prepare 2t replace
tellraw @s {"text":"Loading the full route snapshot Please wait","color":"aqua"}
