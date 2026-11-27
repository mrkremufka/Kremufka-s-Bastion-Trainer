data modify storage kbt:movement_playlists runtime set value {}
scoreboard players set #mpl_check_playlist_id kbt.settings 0
execute if data storage kbt:movement_playlists selected_id store result score #mpl_check_playlist_id kbt.settings run data get storage kbt:movement_playlists selected_id
function kbt:movement/playlists/lookup
data modify storage kbt:movement_playlists runtime.input_ids set value []
execute if data storage kbt:movement_playlists runtime.selected.trail_ids run data modify storage kbt:movement_playlists runtime.input_ids set from storage kbt:movement_playlists runtime.selected.trail_ids
function kbt:movement/playlists/check_list
execute if score #mpl_check_valid kbt.settings matches 1 run function kbt:movement/playlists/run_loadout
execute unless score #mpl_check_valid kbt.settings matches 1 run tellraw @s {"text":"Playlist unavailable A selected trail was removed, duplicated or has no playable saved layout","color":"yellow"}
