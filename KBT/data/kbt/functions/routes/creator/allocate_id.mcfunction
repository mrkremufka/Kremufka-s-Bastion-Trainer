execute store result storage kbt:routes draft.id int 1 run scoreboard players get #rc_free_id kbt.settings
data modify storage kbt:routes draft.generation set from storage kbt:routes meta.next_id
execute store result score #rc_next kbt.settings run data get storage kbt:routes meta.next_id
scoreboard players add #rc_next kbt.settings 1
execute store result storage kbt:routes meta.next_id int 1 run scoreboard players get #rc_next kbt.settings
scoreboard players set #rc_id_last kbt.settings -1
execute if data storage kbt:route_practice last_id store result score #rc_id_last kbt.settings run data get storage kbt:route_practice last_id
execute if score #rc_id_last kbt.settings = #rc_free_id kbt.settings run data remove storage kbt:route_practice last_id
