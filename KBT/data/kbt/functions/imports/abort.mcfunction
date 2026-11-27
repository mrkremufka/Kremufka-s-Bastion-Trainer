scoreboard players set #ki_ok kbt.settings 0
scoreboard players set #ki_busy kbt.settings 0
scoreboard players set #ki_phase kbt.settings 0
tellraw @a {"text":"Import failed; existing routes and playlists were kept Check duplicate UUIDs, slot files and trail dependencies","color":"red"}
data remove storage kbt:imports runtime
data remove storage kbt:imports entry
