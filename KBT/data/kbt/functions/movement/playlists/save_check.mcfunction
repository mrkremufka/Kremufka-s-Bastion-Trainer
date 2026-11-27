data modify storage kbt:movement_playlists runtime set value {}
scoreboard players set #mpl_save_name_len kbt.settings 0
execute if data storage kbt:movement_playlists draft.name store result score #mpl_save_name_len kbt.settings run data get storage kbt:movement_playlists draft.name
scoreboard players set #mpl_save_valid kbt.settings 1
execute unless score #mpl_save_name_len kbt.settings matches 1..64 run scoreboard players set #mpl_save_valid kbt.settings 0
data modify storage kbt:movement_playlists runtime.input_ids set value []
execute if data storage kbt:movement_playlists draft.trail_ids run data modify storage kbt:movement_playlists runtime.input_ids set from storage kbt:movement_playlists draft.trail_ids
execute if score #mpl_save_valid kbt.settings matches 1 run function kbt:movement/playlists/check_list
execute if score #mpl_save_valid kbt.settings matches 1 unless score #mpl_check_valid kbt.settings matches 1 run scoreboard players set #mpl_save_valid kbt.settings 0
execute if score #mpl_save_valid kbt.settings matches 1 run function kbt:movement/playlists/save_id
execute unless score #mpl_save_valid kbt.settings matches 1 run tellraw @s {"text":"Playlist not saved Use a name of 1..64 characters and unique saved Movement trails with available layouts","color":"yellow"}
