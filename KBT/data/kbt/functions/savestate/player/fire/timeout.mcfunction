tp @s @e[type=minecraft:armor_stand,tag=kbt.ss_anchor,limit=1]
gamemode spectator @s
function kbt:savestate/player/fire/cleanup
tellraw @s {"text":"Could not restore fire state Move to retry","color":"red"}
