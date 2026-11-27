execute unless data storage kbt:routes meta.next_movement_id run data modify storage kbt:routes meta.next_movement_id set value 80001
execute store result score #mv_next kbt.settings run data get storage kbt:routes meta.next_movement_id
execute if score #mv_next kbt.settings matches 80001..90000 run function kbt:movement/create_active
execute unless score #mv_next kbt.settings matches 80001..90000 run tellraw @s {"text":"Movement ID range exhausted or invalid (80001..90000)","color":"red"}