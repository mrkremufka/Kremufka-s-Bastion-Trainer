function kbt:routes/setup/capture
data modify storage kbt:route_setup edit_generation.choices set from storage kbt:route_setup chosen
data modify storage kbt:route_setup edit_generation.record set from storage kbt:route_runtime found
data modify storage kbt:route_setup edit_generation.queued set value 1b
function kbt:routes/creator/generation/restore_menu
function kbt:routes/practice/stop
schedule clear kbt:practice/generate
schedule clear kbt:arena/generate_selected
tag @s remove kbt.start_player
execute if entity @s[gamemode=survival] run scoreboard players set @s kbt.rc_genmode 0
execute if entity @s[gamemode=creative] run scoreboard players set @s kbt.rc_genmode 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s kbt.rc_genmode 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s kbt.rc_genmode 3
tag @s add kbt.rc_creating
scoreboard players set #rc_generating kbt.settings 1
scoreboard players set #rc_gen_wait kbt.settings 0
gamemode spectator @s
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"}] in minecraft:the_nether run tp @s 21 129 29 0 0
execute in minecraft:the_nether run forceload add 936 936 1063 1063
schedule function kbt:routes/setup/generate 1t replace
tellraw @s {"text":"Rebuilding this route's bastion Route points and tasks are kept","color":"aqua"}
title @s actionbar {"text":"Preparing | Loading arena chunks","color":"aqua"}
