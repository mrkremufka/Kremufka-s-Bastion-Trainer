scoreboard players add #ui_clock kbt.settings 1
execute if score #ui_clock kbt.settings matches 10.. run scoreboard players set #ui_clock kbt.settings 0
function kbt:practice/respawn/tick
execute if score #lava_wait kbt.settings matches 1.. run scoreboard players remove #lava_wait kbt.settings 1
scoreboard players add #kbt_tick2 kbt.settings 1
execute if score #kbt_tick2 kbt.settings matches 2.. run scoreboard players set #kbt_tick2 kbt.settings 0
scoreboard players add #kbt_tick5 kbt.settings 1
execute if score #kbt_tick5 kbt.settings matches 5.. run scoreboard players set #kbt_tick5 kbt.settings 0
scoreboard players add #kbt_tick20 kbt.settings 1
execute if score #kbt_tick20 kbt.settings matches 20.. run scoreboard players set #kbt_tick20 kbt.settings 0
scoreboard players add #kbt_tick100 kbt.settings 1
execute if score #kbt_tick100 kbt.settings matches 100.. run scoreboard players set #kbt_tick100 kbt.settings 0
execute in minecraft:overworld if entity @a[distance=0..] run function kbt:practice/return_from_overworld
function kbt:savestate/tick
function kbt:movement/playlist/tick
function kbt:loadout/tick
function kbt:debug/gold/tick
function kbt:routes/setup/tick
function kbt:routes/practice/tick
function kbt:routes/creator/tick
function kbt:practice/tick
execute if score #arena_drop_ticks kbt.settings matches 1.. run function kbt:arena/drop_cleanup/tick
function kbt:lobby/tick
execute in minecraft:the_nether run function kbt:tick_nether
execute in minecraft:overworld run function kbt:settings/tick
execute in minecraft:the_nether run function kbt:settings/tick
execute in minecraft:the_end run function kbt:settings/tick
clear @a #kbt:menu_tokens{kbt_menu:1b}
function kbt:imports/progress/tick
function kbt:share/tick
