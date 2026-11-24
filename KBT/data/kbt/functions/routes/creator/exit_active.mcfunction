function kbt:routes/creator/empty/cleanup
function kbt:routes/creator/text/clear
function kbt:routes/creator/naming/clear
execute in minecraft:the_nether run kill @e[type=minecraft:armor_stand,tag=kbt.rc_preview]
execute in minecraft:the_nether run kill @e[type=minecraft:armor_stand,tag=kbt.rc_preview_origin]
execute in minecraft:the_nether run kill @e[type=minecraft:armor_stand,tag=kbt.rc_ray]
data remove storage kbt:route_runtime preview_queue
data remove storage kbt:routes editor.pending
scoreboard players set #rc_confirm kbt.settings 0
scoreboard players set @s kbt.rc_open 0
scoreboard players set @s kbt.rc_delete 0
clear @s #kbt:route_tools{kbtRouteWand:1b}
function kbt:routes/creator/break/reset
clear @s minecraft:snowball{kbtRouteControl:1}
clear @s minecraft:egg{kbtRouteControl:2}
clear @s minecraft:splash_potion{kbtRouteControl:3}
scoreboard players set @s kbt.rc_exit 0
scoreboard players set @s kbt.rc_splash 0
scoreboard players set @s kbt.creator 0
scoreboard players set @s kbt.rc_book 0
scoreboard players set @s kbt.rc_cd 0
scoreboard players set @s kbt.rc_menu 0
function kbt:practice/clear_drops
execute if score @s kbt.rc_mode matches 0 run gamemode survival @s
execute if score @s kbt.rc_mode matches 1 run gamemode creative @s
execute if score @s kbt.rc_mode matches 2 run gamemode adventure @s
execute if score @s kbt.rc_mode matches 3 run gamemode spectator @s
function kbt:practice/difficulty
execute if score #rc_empty_discarded kbt.settings matches 0 run tellraw @s {"text":"Route Creator closed. Draft kept; use /function kbt:routes/creator/start to resume.","color":"gold"}
execute if score #rc_empty_discarded kbt.settings matches 1 run tellraw @s {"text":"Creator closed. Empty draft discarded.","color":"gold"}
