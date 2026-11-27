scoreboard players set #rc_head_copy kbt.settings 0
execute if data storage kbt:route_text pending.element{type:13} if entity @s[nbt={SelectedItem:{id:"minecraft:player_head"}}] store success score #rc_head_copy kbt.settings run data get entity @s SelectedItem.tag.SkullOwner
execute if score #rc_head_copy kbt.settings matches 1 run data modify storage kbt:route_text pending.element.head.tag.SkullOwner set from entity @s SelectedItem.tag.SkullOwner
execute if score #rc_head_copy kbt.settings matches 1 run data modify storage kbt:route_text pending.element.head_ready set value 1b
execute if score #rc_head_copy kbt.settings matches 1 run function kbt:routes/creator/head/refresh
execute unless score #rc_head_copy kbt.settings matches 1 run tellraw @s {"text":"Hold a player head containing SkullOwner data first","color":"red"}
