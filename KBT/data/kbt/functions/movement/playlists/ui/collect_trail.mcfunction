scoreboard players set #mpl_ui_match kbt.settings 0
scoreboard players set #mpl_ui_type kbt.settings -1
execute if data storage kbt:movement_playlists ui.record.bastion store result score #mpl_ui_type kbt.settings run data get storage kbt:movement_playlists ui.record.bastion
execute if data storage kbt:movement_playlists ui.record{mode:"movement",ready:1b,source:1} if data storage kbt:movement_playlists ui.record.layout{mode:"snapshot",schema:1} run scoreboard players set #mpl_ui_match kbt.settings 1
execute if data storage kbt:movement_playlists ui.record{mode:"movement",ready:1b,source:0} if data storage kbt:movement_playlists ui.record.layout{mode:"builtin",schema:1} run scoreboard players set #mpl_ui_match kbt.settings 1
execute if data storage kbt:movement_playlists ui.record{mode:"movement",ready:1b,source:1} if data storage kbt:movement_playlists ui.record.layout{mode:"builtin",schema:1,imported:1b} if data storage kbt:movement_playlists ui.record.import_key run scoreboard players set #mpl_ui_match kbt.settings 1
execute if score #mpl_ui_match kbt.settings matches 1 if score #mpl_ui_type kbt.settings = #mpl_ui_filter kbt.settings if data storage kbt:movement_playlists ui.record.id if data storage kbt:movement_playlists ui.record.name run function kbt:movement/playlists/ui/entry_trail
