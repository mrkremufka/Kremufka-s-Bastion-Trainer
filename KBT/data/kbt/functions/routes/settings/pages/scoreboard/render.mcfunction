data remove block ~ ~ ~ Items[{tag:{kbt_menu:1b}}]
replaceitem block ~ ~ ~ container.4 minecraft:paper{kbt_menu:1b,kbt_action:"rp_scoreboard_title",kbt_layout:3b,display:{Name:'{"text":"Info","color":"yellow","bold":true,"italic":false}'}} 1
function kbt:routes/settings/pages/navigation
function kbt:settings/info/render
execute unless score #rp_display_stage kbt.settings matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:paper{kbt_menu:1b,kbt_action:"rp_display_stage",display:{Name:'{"text":"Display Stage","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gray","italic":false}','{"text":"Off","color":"gold","italic":false}']}} 1
execute if score #rp_display_stage kbt.settings matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:paper{kbt_menu:1b,kbt_action:"rp_display_stage",display:{Name:'{"text":"Display Stage","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gold","italic":false}','{"text":"Off","color":"gray","italic":false}']}} 1
scoreboard players operation @s kbt.rp_dstg = #rp_display_stage kbt.settings
execute unless score #rp_display_phase kbt.settings matches 1 run replaceitem block ~ ~ ~ container.11 minecraft:clock{kbt_menu:1b,kbt_action:"rp_display_phase",display:{Name:'{"text":"Display Phase","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gray","italic":false}','{"text":"Off","color":"gold","italic":false}']}} 1
execute if score #rp_display_phase kbt.settings matches 1 run replaceitem block ~ ~ ~ container.11 minecraft:clock{kbt_menu:1b,kbt_action:"rp_display_phase",display:{Name:'{"text":"Display Phase","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gold","italic":false}','{"text":"Off","color":"gray","italic":false}']}} 1
scoreboard players operation @s kbt.rp_dphs = #rp_display_phase kbt.settings
