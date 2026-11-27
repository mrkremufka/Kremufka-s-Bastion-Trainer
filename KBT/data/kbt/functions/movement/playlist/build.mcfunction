scoreboard players operation #mv_bastion kbt.settings = #mv_choice kbt.settings
data modify storage kbt:movement_playlist queue set from storage kbt:routes records
data modify storage kbt:movement_playlist pool set value []
execute if data storage kbt:movement_playlist queue[0] run function kbt:movement/playlist/filter
execute unless data storage kbt:movement_playlist pool[0] run tellraw @s {"text":"No saved Movement Trails with a prepared layout for this bastion Create and save a trail first","color":"yellow"}
execute if data storage kbt:movement_playlist pool[0] run function kbt:movement/playlist/begin
