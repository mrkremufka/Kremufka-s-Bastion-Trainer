function kbt:arena/reset
execute store success score #sh_backup kbt.settings run clone 934 128 936 935 128 936 1004 226 -1102 replace force
execute if score #sh_backup kbt.settings matches 1 run data modify storage kbt:share stage_backup set value 1b
execute if score #sh_backup kbt.settings matches 1 run setblock 934 128 936 minecraft:air
execute if score #sh_backup kbt.settings matches 1 run setblock 935 128 936 minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:0,ignoreEntities:0b,powered:0b,integrity:1.0f}
execute if score #sh_backup kbt.settings matches 1 run data modify block 935 128 936 name set from storage kbt:share blocks_name
execute if score #sh_backup kbt.settings matches 1 run setblock 934 128 936 minecraft:redstone_block
execute if score #sh_backup kbt.settings matches 1 run schedule function kbt:share/import/blocks/finish 2t replace
execute unless score #sh_backup kbt.settings matches 1 run tellraw @s {"text":"Could not prepare the snapshot loader Try importing again","color":"red"}
execute unless score #sh_backup kbt.settings matches 1 run function kbt:share/booth/close
function kbt:arena/invalidate
