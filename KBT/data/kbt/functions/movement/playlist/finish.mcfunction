data modify storage kbt:movement_playlist last_result set value {ticks:0,bastion:0}
execute store result storage kbt:movement_playlist last_result.ticks int 1 run scoreboard players get #mv_total kbt.settings
data modify storage kbt:movement_playlist last_result.bastion set from storage kbt:movement_playlist session.bastion
execute if data storage kbt:movement_playlist session{kind:"saved"} run data modify storage kbt:movement_playlist last_result.kind set value "saved"
execute if data storage kbt:movement_playlist session{kind:"saved"} run data modify storage kbt:movement_playlist last_result.playlist_id set from storage kbt:movement_playlist session.playlist_id
execute if data storage kbt:movement_playlist session{kind:"saved"} run data modify storage kbt:movement_playlist last_result.name set from storage kbt:movement_playlist session.name
function kbt:movement/playlist/cancel
scoreboard players set #mv_new_pb kbt.settings 0
execute unless data storage kbt:movement_playlist session{kind:"saved"} if score #mv_pb_eligible kbt.settings matches 1 if score #mv_total kbt.settings matches 1.. run function kbt:movement/playlist/pb/save
tellraw @s {"text":"Movement playlist completed! Back in Movement Practice lobby","color":"gold","bold":true}
scoreboard players operation #rt_display kbt.settings = #mv_total kbt.settings
function kbt:routes/timer/format
function kbt:routes/timer/result_message
execute if score #mv_new_pb kbt.settings matches 1 run tellraw @s {"text":"NEW PB!","color":"gold","bold":true}
execute if score #mv_new_pb kbt.settings matches 1 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
