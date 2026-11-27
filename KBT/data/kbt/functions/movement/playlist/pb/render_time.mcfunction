scoreboard players operation #mvpb_display kbt.settings = #mv_pb_ticks kbt.settings
scoreboard players set #mvpb_1200 kbt.settings 1200
scoreboard players set #mvpb_20 kbt.settings 20
scoreboard players set #mvpb_50 kbt.settings 50
scoreboard players operation #mvpb_minutes kbt.settings = #mvpb_display kbt.settings
scoreboard players operation #mvpb_minutes kbt.settings /= #mvpb_1200 kbt.settings
scoreboard players operation #mvpb_seconds kbt.settings = #mvpb_display kbt.settings
scoreboard players operation #mvpb_seconds kbt.settings %= #mvpb_1200 kbt.settings
scoreboard players operation #mvpb_seconds kbt.settings /= #mvpb_20 kbt.settings
scoreboard players operation #mvpb_millis kbt.settings = #mvpb_display kbt.settings
scoreboard players operation #mvpb_millis kbt.settings %= #mvpb_20 kbt.settings
scoreboard players operation #mvpb_millis kbt.settings *= #mvpb_50 kbt.settings
data modify storage kbt:movement_playlist display.pad_min set value ""
data modify storage kbt:movement_playlist display.pad_sec set value ""
data modify storage kbt:movement_playlist display.pad_ms set value ""
execute if score #mvpb_minutes kbt.settings matches ..9 run data modify storage kbt:movement_playlist display.pad_min set value "0"
execute if score #mvpb_seconds kbt.settings matches ..9 run data modify storage kbt:movement_playlist display.pad_sec set value "0"
execute if score #mvpb_millis kbt.settings matches ..99 run data modify storage kbt:movement_playlist display.pad_ms set value "0"
execute if score #mvpb_millis kbt.settings matches ..9 run data modify storage kbt:movement_playlist display.pad_ms set value "00"

setblock 1002 255 -997 minecraft:air
setblock 1002 255 -997 minecraft:oak_sign{Text1:'[{"text":"PB: ","color":"gold"},{"nbt":"display.pad_min","storage":"kbt:movement_playlist","color":"gold"},{"score":{"name":"#mvpb_minutes","objective":"kbt.settings"},"color":"gold"},{"text":":","color":"gold"},{"nbt":"display.pad_sec","storage":"kbt:movement_playlist","color":"gold"},{"score":{"name":"#mvpb_seconds","objective":"kbt.settings"},"color":"gold"},{"text":"","color":"gold"},{"nbt":"display.pad_ms","storage":"kbt:movement_playlist","color":"gold"},{"score":{"name":"#mvpb_millis","objective":"kbt.settings"},"color":"gold"}]'}
execute as @e[type=minecraft:armor_stand,tag=kbt.mv_pb_text] run data modify entity @s CustomName set from block 1002 255 -997 Text1