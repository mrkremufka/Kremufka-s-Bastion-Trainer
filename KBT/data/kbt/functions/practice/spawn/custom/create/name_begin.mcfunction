function kbt:practice/spawn/custom/create/clear_book
data modify storage kbt:custom_spawns creator.entry set value {}
data modify storage kbt:custom_spawns creator.entry.pos set from entity @s Pos
data modify storage kbt:custom_spawns creator.entry.rotation set from entity @s Rotation
data modify storage kbt:custom_spawns creator.phase set value 2
give @s minecraft:writable_book{kbtSpawnName:1b,display:{Name:'{"text":"Custom Spawnpoint Name","color":"yellow","italic":false}',Lore:['{"text":"Write the name on page 1 (up to 64 characters)","color":"gray","italic":false}','{"text":"Click Done, hold the book and click Save Spawnpoint","color":"yellow","italic":false}']}} 1
tellraw @s {"text":"Position selected Write a name on page 1, click Done, hold this book and click Save Spawnpoint","color":"yellow"}
tellraw @s [{"text":"[Save Spawnpoint] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger kbt.cs_edit set 2"}},{"text":"[Choose Position Again] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger kbt.cs_edit set 4"}},{"text":"[Cancel]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger kbt.cs_edit set 3"}}]
