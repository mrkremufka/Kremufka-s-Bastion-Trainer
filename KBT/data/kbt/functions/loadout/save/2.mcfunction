data modify storage kbt:loadouts slots.slot2 set value {saved:1b,items:[]}
data modify storage kbt:loadouts slots.slot2.items set from entity @s Inventory
data remove storage kbt:loadouts slots.slot2.items[{tag:{kbt_menu:1b}}]
tellraw @s {"text":"Loadout 2 saved","color":"gold"}
function kbt:loadout/save_finish
