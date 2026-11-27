data remove block ~ ~ ~ Items[{tag:{kbt_menu:1b}}]
replaceitem block ~ ~ ~ container.4 minecraft:redstone{kbt_menu:1b,kbt_action:"debug_title",display:{Name:'{"text":"Debug","color":"yellow","bold":true,"italic":false}'}} 1
replaceitem block ~ ~ ~ container.9 minecraft:arrow{kbt_menu:1b,kbt_action:"previous",display:{Name:'{"text":"Previous Page","color":"white","italic":false}'}} 1
replaceitem block ~ ~ ~ container.17 minecraft:arrow{kbt_menu:1b,kbt_action:"next",display:{Name:'{"text":"Next Page","color":"white","italic":false}'}} 1

execute if score #debug kbt.settings matches 0 run replaceitem block ~ ~ ~ container.12 minecraft:name_tag{kbt_menu:1b,kbt_action:"id_piglins",display:{Name:'{"text":"ID Piglins","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gray","italic":false}','{"text":"Off","color":"gold","italic":false}']}} 1
execute if score #debug kbt.settings matches 1 run replaceitem block ~ ~ ~ container.12 minecraft:name_tag{kbt_menu:1b,kbt_action:"id_piglins",display:{Name:'{"text":"ID Piglins","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gold","italic":false}','{"text":"Off","color":"gray","italic":false}']}} 1
scoreboard players operation @s kbt.debug = #debug kbt.settings
execute if score #piglin_glow kbt.settings matches 0 run replaceitem block ~ ~ ~ container.13 minecraft:glowstone_dust{kbt_menu:1b,kbt_action:"piglin_glow",display:{Name:'{"text":"Toggle Glow","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gray","italic":false}','{"text":"Off","color":"gold","italic":false}']}} 1
execute if score #piglin_glow kbt.settings matches 1 run replaceitem block ~ ~ ~ container.13 minecraft:glowstone_dust{kbt_menu:1b,kbt_action:"piglin_glow",display:{Name:'{"text":"Toggle Glow","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gold","italic":false}','{"text":"Off","color":"gray","italic":false}']}} 1
scoreboard players operation @s kbt.glow = #piglin_glow kbt.settings
execute if score #hoglin_glow kbt.settings matches 0 run replaceitem block ~ ~ ~ container.14 minecraft:glowstone_dust{kbt_menu:1b,kbt_action:"hoglin_glow",display:{Name:'{"text":"Toggle Glow","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gray","italic":false}','{"text":"Off","color":"gold","italic":false}']}} 1
execute if score #hoglin_glow kbt.settings matches 1 run replaceitem block ~ ~ ~ container.14 minecraft:glowstone_dust{kbt_menu:1b,kbt_action:"hoglin_glow",display:{Name:'{"text":"Toggle Glow","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"On","color":"gold","italic":false}','{"text":"Off","color":"gray","italic":false}']}} 1
scoreboard players operation @s kbt.hglow = #hoglin_glow kbt.settings
replaceitem block ~ ~ ~ container.22 minecraft:piglin_spawn_egg{kbt_menu:1b,kbt_action:"piglin_icon",display:{Name:'{"text":"Piglin","color":"gold","bold":true,"italic":false}'}} 1
replaceitem block ~ ~ ~ container.23 minecraft:hoglin_spawn_egg{kbt_menu:1b,kbt_action:"hoglin_icon",display:{Name:'{"text":"Hoglin","color":"gold","bold":true,"italic":false}'}} 1
scoreboard players set @s kbt.it_layout 5
