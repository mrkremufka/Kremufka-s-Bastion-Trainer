scoreboard players set #rc_particle kbt.settings 0
execute store result score #rc_stage kbt.settings run data get storage kbt:routes draft.stage
execute as @e[type=minecraft:armor_stand,tag=kbt.rc_preview,scores={kbt.rc_type=12}] run data merge entity @s {CustomNameVisible:0b}
execute as @e[type=minecraft:armor_stand,tag=kbt.rc_preview,scores={kbt.rc_type=8}] run data merge entity @s {CustomNameVisible:0b}
execute as @e[type=minecraft:armor_stand,tag=kbt.rc_preview,scores={kbt.rc_type=8}] if score @s kbt.rc_stage = #rc_stage kbt.settings run data merge entity @s {CustomNameVisible:1b}
execute if score #rc_show_all kbt.settings matches 1 as @e[type=minecraft:armor_stand,tag=kbt.rc_preview,scores={kbt.rc_type=8}] run data merge entity @s {CustomNameVisible:1b}
execute if score #rc_show_all kbt.settings matches 1 as @e[type=minecraft:armor_stand,tag=kbt.rc_preview] at @s run function kbt:routes/creator/preview/particle
execute unless score #rc_show_all kbt.settings matches 1 as @e[type=minecraft:armor_stand,tag=kbt.rc_preview] if score @s kbt.rc_stage = #rc_stage kbt.settings at @s run function kbt:routes/creator/preview/particle
scoreboard players set #rc_chain_view kbt.settings 0
execute if data storage kbt:routes draft.checkpoint_chain store result score #rc_chain_view kbt.settings run data get storage kbt:routes draft.checkpoint_chain
scoreboard players operation #rc_chain_focus kbt.settings = #rc_chain_view kbt.settings
scoreboard players add #rc_chain_focus kbt.settings 1
execute unless score #rc_show_all kbt.settings matches 1 if score #rc_chain_view kbt.settings matches 1.. if score #rc_chain_focus kbt.settings = #rc_stage kbt.settings as @e[type=minecraft:armor_stand,tag=kbt.rc_preview,scores={kbt.rc_type=5}] if score @s kbt.rc_stage = #rc_chain_view kbt.settings at @s run function kbt:routes/creator/preview/particle
execute unless data storage kbt:routes draft{mode:"movement"} unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{kbtRouteWand:1b,kbtRouteTool:22}}}] run title @s actionbar [{"text":"Route Creator","color":"aqua"},{"text":" | ","color":"gray"},{"text":"stage ","color":"#FF00FF"},{"nbt":"draft.stage","storage":"kbt:routes","color":"light_purple"},{"text":" | ","color":"gray"},{"nbt":"draft.tool_name","storage":"kbt:routes","color":"gold"}]
execute unless data storage kbt:route_text pending if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{kbtRouteWand:1b,kbtRouteTool:22}}}] run function kbt:routes/creator/stages/navigation/display
execute if data storage kbt:routes draft{mode:"movement"} unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{kbtRouteWand:1b,kbtRouteTool:22}}}] run title @s actionbar [{"text":"Movement Creator","color":"aqua"},{"text":" | ","color":"gray"},{"text":"stage ","color":"#FF00FF"},{"nbt":"draft.stage","storage":"kbt:routes","color":"light_purple"},{"text":" | ","color":"gray"},{"nbt":"draft.tool_name","storage":"kbt:routes","color":"gold"}]
