data remove storage kbt:custom_spawns creator.name
scoreboard players set #cs_name_length kbt.settings 0
scoreboard players set #cs_name_limit kbt.settings 64
execute if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",tag:{kbtSpawnName:1b}}}] run data modify storage kbt:custom_spawns creator.name set from entity @s SelectedItem.tag.pages[0]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",tag:{kbtSpawnName:1b}}}] run data modify storage kbt:custom_spawns creator.name set from entity @s SelectedItem.tag.title
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",tag:{kbtSpawnName:1b}}}] run scoreboard players set #cs_name_limit kbt.settings 16
execute if data storage kbt:custom_spawns creator.name store result score #cs_name_length kbt.settings run data get storage kbt:custom_spawns creator.name
execute unless score #cs_name_length kbt.settings matches 1.. run tellraw @s {"text":"Write a name on page 1, click Done and hold the Custom Spawnpoint Name book","color":"yellow"}
execute if score #cs_name_length kbt.settings > #cs_name_limit kbt.settings run tellraw @s {"text":"Use up to 64 characters on page 1, or 16 characters for a signed book title","color":"yellow"}
execute if score #cs_name_length kbt.settings matches 1.. if score #cs_name_length kbt.settings <= #cs_name_limit kbt.settings run function kbt:practice/spawn/custom/create/commit
