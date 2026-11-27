scoreboard players set #ss_valid kbt.settings 0
execute if data storage kbt:savestate current run scoreboard players set #ss_valid kbt.settings 1
data modify storage kbt:savestate compare set from storage kbt:savestate current.owner
execute store success score #ss_diff kbt.settings run data modify storage kbt:savestate compare set from entity @s UUID
execute if score #ss_diff kbt.settings matches 1 run scoreboard players set #ss_valid kbt.settings 0
scoreboard players set #ss_mode kbt.settings 0
execute if entity @s[tag=kbt.rp_context] run scoreboard players set #ss_mode kbt.settings 1
execute store result score #ss_saved_mode kbt.settings run data get storage kbt:savestate current.mode
execute unless score #ss_mode kbt.settings = #ss_saved_mode kbt.settings run scoreboard players set #ss_valid kbt.settings 0
data modify storage kbt:savestate compare set from storage kbt:savestate current.context
execute if score #ss_mode kbt.settings matches 0 store success score #ss_diff kbt.settings run data modify storage kbt:savestate compare set from storage kbt:general_practice scenario
execute if score #ss_mode kbt.settings matches 1 store success score #ss_diff kbt.settings run data modify storage kbt:savestate compare set from storage kbt:route_practice route
execute if score #ss_diff kbt.settings matches 1 run scoreboard players set #ss_valid kbt.settings 0
execute if score #ss_valid kbt.settings matches 0 run tellraw @s {"text":"No savestate for this training session Drop an axe without Shift to save first","color":"red"}
execute if score #ss_valid kbt.settings matches 1 run function kbt:savestate/restore
