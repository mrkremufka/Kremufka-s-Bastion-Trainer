execute positioned 1004.5 227.5 -1101.5 store success score #sh_saved kbt.settings run kill @e[type=minecraft:armor_stand,tag=kbt.share_route,distance=..0.6]
fill 1004 226 -1102 1005 227 -1102 minecraft:air
scoreboard players set #sh_probing kbt.settings 0
execute unless score #sh_saved kbt.settings matches 1 run function kbt:share/export/marker
execute unless score #sh_saved kbt.settings matches 1 run tellraw @s {"text":"Not saved yet Name the file and press SAVE at the bottom right","color":"yellow"}
execute if score #sh_saved kbt.settings matches 1 run tellraw @s [{"text":"Exported ","color":"green"},{"block":"1000 231 -1102","nbt":"name","color":"gold"},{"text":" to generated/minecraft/structures in this world","color":"gray"}]
execute if score #sh_saved kbt.settings matches 1 run function kbt:share/booth/close
