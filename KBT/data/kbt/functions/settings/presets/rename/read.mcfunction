data remove storage kbt:presets naming.candidate
scoreboard players set #ps_name_length kbt.settings 0
scoreboard players set #ps_name_limit kbt.settings 64
execute if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",tag:{kbtPresetName:1b}}}] run data modify storage kbt:presets naming.candidate set from entity @s SelectedItem.tag.pages[0]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",tag:{kbtPresetName:1b}}}] run data modify storage kbt:presets naming.candidate set from entity @s SelectedItem.tag.title
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",tag:{kbtPresetName:1b}}}] run scoreboard players set #ps_name_limit kbt.settings 16
execute if data storage kbt:presets naming.candidate store result score #ps_name_length kbt.settings run data get storage kbt:presets naming.candidate
execute store result score #ps_target kbt.settings run data get storage kbt:presets naming.id
function kbt:settings/presets/lookup_target
execute if data storage kbt:presets selected if score #ps_name_length kbt.settings matches 1.. if score #ps_name_length kbt.settings <= #ps_name_limit kbt.settings run function kbt:settings/presets/rename/commit
execute if data storage kbt:presets naming.id unless data storage kbt:presets selected run tellraw @s {"text":"This preset no longer exists Cancel Rename and open the list again","color":"yellow"}
execute if data storage kbt:presets naming.id unless score #ps_name_length kbt.settings matches 1.. run tellraw @s {"text":"Write a name on page 1, click Done, hold the Preset Name book and click Apply Name","color":"yellow"}
execute if data storage kbt:presets naming.id if score #ps_name_length kbt.settings > #ps_name_limit kbt.settings run tellraw @s {"text":"Use up to 64 characters on page 1, or 16 characters for a signed book title","color":"yellow"}
