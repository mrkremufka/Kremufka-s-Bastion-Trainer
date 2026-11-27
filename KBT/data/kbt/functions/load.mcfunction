scoreboard players set #gen_precleaned kbt.settings 0
function kbt:arena/lava_fix/cancel
function kbt:settings/init
function kbt:arena/invalidate
scoreboard players set #kbt_tick2 kbt.settings 0
scoreboard players set #kbt_tick5 kbt.settings 0
scoreboard players set #kbt_tick20 kbt.settings 0
scoreboard players set #kbt_tick100 kbt.settings 0
scoreboard players set #ui_cd_active kbt.settings 12
scoreboard players set #custom_settings_chest kbt.settings 0
execute in minecraft:overworld if entity @e[type=minecraft:armor_stand,tag=kbt.settings_chest] run scoreboard players set #custom_settings_chest kbt.settings 1
execute in minecraft:the_end if entity @e[type=minecraft:armor_stand,tag=kbt.settings_chest] run scoreboard players set #custom_settings_chest kbt.settings 1
execute in minecraft:the_nether positioned 23.5 129 33.5 if entity @e[type=minecraft:armor_stand,tag=kbt.settings_chest,distance=1..] run scoreboard players set #custom_settings_chest kbt.settings 1
execute in minecraft:the_nether run function kbt:savestate/init
execute in minecraft:the_nether run forceload add 936 936 1063 1063
scoreboard players set #arena_drop_ticks kbt.settings 0
function kbt:settings/presets/init
scoreboard objectives add kbt.discord trigger
execute in minecraft:the_nether run forceload add 1003 -997
function kbt:practice/extinguish_restore
function kbt:debug/glow/init
function kbt:debug/info/init
function kbt:debug/gold/init
function kbt:practice/init
function kbt:loadout/init
function kbt:routes/creator/init
function kbt:routes/builtin/init
function kbt:routes/setup/init
function kbt:routes/practice/init
function kbt:routes/settings/init
function kbt:routes/timer/init
function kbt:movement/playlist/init
function kbt:movement/playlist/pb/init
function kbt:movement/migrate_legacy
function kbt:movement/playlist/pb/sync
function kbt:route_browser/test/init
function kbt:route_browser/catalog/init
function kbt:movement/specific/init
function kbt:movement/playlists/init
function kbt:movement/playlists/ui/init
function kbt:share/init
function kbt:imports/init
function kbt:practice/difficulty
function kbt:maintenance/reset_requested_pbs
execute in minecraft:the_nether run function kbt:debug/apply
tellraw @a [{"text":"KBT loaded","color":"gold"}]
execute if data storage kbt:release pending run schedule function kbt:release/prepare 2t replace
