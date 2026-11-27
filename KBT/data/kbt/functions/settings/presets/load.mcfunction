function kbt:settings/presets/apply
function kbt:settings/apply
function kbt:practice/difficulty
execute in minecraft:the_nether as @e[type=minecraft:armor_stand,tag=kbt.settings_chest] at @s run function kbt:settings/render
tellraw @s [{"text":"Loaded Preset ","color":"green"},{"nbt":"selected.id","storage":"kbt:presets","color":"gold"},{"text":" Press Start to generate the bastion","color":"gray"}]
function kbt:settings/presets/menu
