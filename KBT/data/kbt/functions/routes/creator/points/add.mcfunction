execute unless data storage kbt:routes draft.visuals run data modify storage kbt:routes draft.visuals set value []
data modify storage kbt:route_runtime element set value {type:0,stage:1,pos:[0.0d,0.0d,0.0d]}
execute store result storage kbt:route_runtime element.type int 1 run scoreboard players get #rc_tool kbt.settings
execute if score #rc_tool kbt.settings matches 3 run data modify storage kbt:route_runtime element.required_block set value "minecraft:gold_block"
execute store result score #rc_stage kbt.settings run data get storage kbt:routes draft.stage
execute store result storage kbt:route_runtime element.stage int 1 run scoreboard players get #rc_stage kbt.settings
scoreboard players set #rc_valid kbt.settings 0
execute if score #rc_tool kbt.settings matches 1 run function kbt:routes/creator/points/player
execute if score #rc_tool kbt.settings matches 5 run function kbt:routes/creator/points/player
execute if score #rc_tool kbt.settings matches 7 run function kbt:routes/creator/points/player
execute if score #rc_tool kbt.settings matches 12 run function kbt:routes/creator/points/player
execute if score #rc_tool kbt.settings matches 13..15 run function kbt:routes/creator/points/player
execute if score #rc_tool kbt.settings matches 17 run function kbt:routes/creator/points/player
execute if score #rc_tool kbt.settings matches 2..4 run function kbt:routes/creator/ray/start
execute if score #rc_tool kbt.settings matches 10..11 run function kbt:routes/creator/ray/start
execute if score #rc_tool kbt.settings matches 6 run function kbt:routes/creator/ray/start
execute if score #rc_tool kbt.settings matches 8 run function kbt:routes/creator/ray/start
execute if score #rc_tool kbt.settings matches 21 run function kbt:routes/creator/ray/start
execute if score #rc_tool kbt.settings matches 14 run data modify storage kbt:route_runtime element.type set value 5
execute if score #rc_tool kbt.settings matches 14 run data modify storage kbt:route_runtime element.regenerate set value 1b
execute if score #rc_tool kbt.settings matches 14 run scoreboard players set #rc_tool kbt.settings 5
execute if score #rc_valid kbt.settings matches 1 unless score #rc_tool kbt.settings matches 8 unless score #rc_tool kbt.settings matches 12..13 unless score #rc_tool kbt.settings matches 15 unless score #rc_tool kbt.settings matches 17 unless score #rc_tool kbt.settings matches 21 run function kbt:routes/creator/points/commit
execute if score #rc_valid kbt.settings matches 1 if score #rc_tool kbt.settings matches 21 run function kbt:routes/creator/gold/add
execute if score #rc_valid kbt.settings matches 1 if score #rc_tool kbt.settings matches 13 run function kbt:routes/creator/head/begin
execute if score #rc_valid kbt.settings matches 1 if score #rc_tool kbt.settings matches 15 run function kbt:routes/creator/region/begin
execute if score #rc_valid kbt.settings matches 1 if score #rc_tool kbt.settings matches 17 run function kbt:routes/creator/hoglin_region/begin
execute if score #rc_valid kbt.settings matches 1 if score #rc_tool kbt.settings matches 8 run function kbt:routes/creator/text/begin
execute if score #rc_valid kbt.settings matches 1 if score #rc_tool kbt.settings matches 12 run function kbt:routes/creator/message/begin
execute unless score #rc_valid kbt.settings matches 1 run tellraw @s {"text":"No valid target within 6 blocks Place tools need an empty adjacent cell; aim at a solid block face","color":"red"}
