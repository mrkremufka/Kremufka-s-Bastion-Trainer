data modify storage kbt:presets pick_queue set from storage kbt:presets view.rows
scoreboard players operation #ps_pick kbt.settings = @s kbt.preset
scoreboard players set #ps_action kbt.settings 0
execute if score @s kbt.preset matches 10..14 run scoreboard players remove #ps_pick kbt.settings 10
execute if score @s kbt.preset matches 20..24 run scoreboard players remove #ps_pick kbt.settings 20
execute if score @s kbt.preset matches 20..24 run scoreboard players set #ps_action kbt.settings 1
execute if score @s kbt.preset matches 30..34 run scoreboard players remove #ps_pick kbt.settings 30
execute if score @s kbt.preset matches 30..34 run scoreboard players set #ps_action kbt.settings 2
execute if score @s kbt.preset matches 40..44 run scoreboard players remove #ps_pick kbt.settings 40
execute if score @s kbt.preset matches 40..44 run scoreboard players set #ps_action kbt.settings 3
execute if score #ps_pick kbt.settings matches 1.. run function kbt:settings/presets/pick_skip
data remove storage kbt:presets selected
execute if data storage kbt:presets pick_queue[0].id store result score #ps_target kbt.settings run data get storage kbt:presets pick_queue[0].id
execute if data storage kbt:presets pick_queue[0].id run data modify storage kbt:presets lookup_queue set from storage kbt:presets records
execute if data storage kbt:presets pick_queue[0].id if data storage kbt:presets lookup_queue[0] run function kbt:settings/presets/lookup
execute if score #ps_action kbt.settings matches 0 run function kbt:settings/presets/validate
execute if score #ps_action kbt.settings matches 0 if score #ps_valid kbt.settings matches 1 run function kbt:settings/presets/load
execute if score #ps_action kbt.settings matches 0 unless score #ps_valid kbt.settings matches 1 run tellraw @s {"text":"Preset unavailable Open the list again","color":"yellow"}
execute if score #ps_action kbt.settings matches 1 if data storage kbt:presets selected run function kbt:settings/presets/rename/start
execute if score #ps_action kbt.settings matches 2 if data storage kbt:presets selected run function kbt:settings/presets/delete/prompt
execute if score #ps_action kbt.settings matches 3 if data storage kbt:presets selected run function kbt:settings/presets/random/pool_toggle
execute if score #ps_action kbt.settings matches 1..3 unless data storage kbt:presets selected run tellraw @s {"text":"Preset unavailable Open the list again","color":"yellow"}
