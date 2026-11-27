execute store result score #ps_count kbt.settings run data get storage kbt:presets records
scoreboard players set #ps_five kbt.settings 5
scoreboard players set #ps_last kbt.settings 0
execute if score #ps_count kbt.settings matches 1.. run scoreboard players operation #ps_last kbt.settings = #ps_count kbt.settings
execute if score #ps_count kbt.settings matches 1.. run scoreboard players remove #ps_last kbt.settings 1
scoreboard players operation #ps_last kbt.settings /= #ps_five kbt.settings
execute unless score @s kbt.ps_page matches 0..2147483646 run scoreboard players set @s kbt.ps_page 0
execute if score @s kbt.ps_page > #ps_last kbt.settings run scoreboard players operation @s kbt.ps_page = #ps_last kbt.settings
scoreboard players operation #ps_page_display kbt.settings = @s kbt.ps_page
scoreboard players add #ps_page_display kbt.settings 1
scoreboard players operation #ps_pages kbt.settings = #ps_last kbt.settings
scoreboard players add #ps_pages kbt.settings 1
data modify storage kbt:presets view set value {rows:[]}
data modify storage kbt:presets view.queue set from storage kbt:presets records
scoreboard players operation #ps_skip kbt.settings = @s kbt.ps_page
scoreboard players operation #ps_skip kbt.settings *= #ps_five kbt.settings
execute if score #ps_skip kbt.settings matches 1.. run function kbt:settings/presets/skip
scoreboard players enable @s kbt.preset
tellraw @s {"text":"--- Bastion Presets ---","color":"aqua","bold":true}
function kbt:settings/presets/random/menu
tellraw @s {"text":"[Save Preset]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger kbt.preset set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Save the current bastion settings as a new preset"}}}
scoreboard players set #ps_row kbt.settings 0
execute if data storage kbt:presets view.queue[0] run function kbt:settings/presets/row
execute if score #ps_count kbt.settings matches 0 run tellraw @s {"text":"No saved presets yet","color":"gray"}
execute if data storage kbt:presets naming.id run function kbt:settings/presets/rename/menu
tellraw @s [{"text":"[←] ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger kbt.preset set 2"}},{"text":"Page ","color":"yellow"},{"score":{"name":"#ps_page_display","objective":"kbt.settings"}},{"text":" / "},{"score":{"name":"#ps_pages","objective":"kbt.settings"}},{"text":" [→]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger kbt.preset set 3"}}]
