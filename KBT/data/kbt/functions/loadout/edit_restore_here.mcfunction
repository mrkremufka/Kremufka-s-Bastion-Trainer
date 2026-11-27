data remove storage kbt:loadouts runtime.items
execute if score @s kbt.edit matches 1 if data storage kbt:loadouts slots.slot1{saved:1b} run data modify storage kbt:loadouts runtime.items set from storage kbt:loadouts slots.slot1.items
execute if score @s kbt.edit matches 2 if data storage kbt:loadouts slots.slot2{saved:1b} run data modify storage kbt:loadouts runtime.items set from storage kbt:loadouts slots.slot2.items
execute if score @s kbt.edit matches 3 if data storage kbt:loadouts slots.slot3{saved:1b} run data modify storage kbt:loadouts runtime.items set from storage kbt:loadouts slots.slot3.items
execute if data storage kbt:loadouts runtime.items if block 1004 255 -1007 minecraft:air run function kbt:loadout/restore
execute if data storage kbt:loadouts runtime.items unless block 1004 255 -1007 minecraft:air run tellraw @s {"text":"Loadout helper position is blocked Inventory was kept unchanged","color":"red"}
data remove storage kbt:loadouts runtime.items
