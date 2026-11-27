scoreboard players set #ki_resolving kbt.settings 0
execute if score #ki_valid kbt.settings matches 1 run data modify storage kbt:imports runtime.playlists append from storage kbt:imports runtime.current_record
execute if score #ki_valid kbt.settings matches 1 run function kbt:imports/add_map
execute if score #ki_valid kbt.settings matches 1 if score #ki_id kbt.settings >= #ki_playlist_next kbt.settings run scoreboard players operation #ki_playlist_next kbt.settings = #ki_id kbt.settings
execute if score #ki_valid kbt.settings matches 1 if score #ki_id kbt.settings = #ki_playlist_next kbt.settings run scoreboard players add #ki_playlist_next kbt.settings 1
execute if score #ki_valid kbt.settings matches 1 run scoreboard players add #ki_count_playlist kbt.settings 1
