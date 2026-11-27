scoreboard players set #mv_loadout_ok kbt.settings 0
execute if score #loadout kbt.settings matches 1 if data storage kbt:loadouts slots.slot1{saved:1b} run scoreboard players set #mv_loadout_ok kbt.settings 1
execute if score #loadout kbt.settings matches 2 if data storage kbt:loadouts slots.slot2{saved:1b} run scoreboard players set #mv_loadout_ok kbt.settings 1
execute if score #loadout kbt.settings matches 3 if data storage kbt:loadouts slots.slot3{saved:1b} run scoreboard players set #mv_loadout_ok kbt.settings 1
execute if score #mv_loadout_ok kbt.settings matches 0 run tellraw @s {"text":"Choose a saved loadout in the lobby before starting Movement Practice","color":"yellow"}
execute if score #mv_loadout_ok kbt.settings matches 1 run function kbt:movement/playlist/build
