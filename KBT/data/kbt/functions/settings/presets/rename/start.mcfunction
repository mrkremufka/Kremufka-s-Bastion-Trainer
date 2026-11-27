function kbt:settings/presets/rename/clear
data modify storage kbt:presets naming set value {}
data modify storage kbt:presets naming.id set from storage kbt:presets selected.id
give @s minecraft:writable_book{kbtPresetName:1b,display:{Name:'{"text":"Bastion Preset Name","color":"yellow","italic":false}',Lore:['{"text":"Write the name on page 1 (up to 64 characters)","color":"gray","italic":false}','{"text":"Click Done, hold this book and click Apply Name","color":"yellow","italic":false}']}} 1
tellraw @s [{"text":"Rename Preset ","color":"yellow"},{"nbt":"naming.id","storage":"kbt:presets","color":"gold"},{"text":": write its name on page 1, click Done and hold the book","color":"gray"}]
function kbt:settings/presets/rename/menu
