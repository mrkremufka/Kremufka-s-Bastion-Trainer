data modify storage kbt:loadouts slots.slot1 set value {saved:1b,items:[]}
data modify storage kbt:loadouts slots.slot1.items set from entity @s Inventory
data remove storage kbt:loadouts slots.slot1.items[{tag:{kbt_menu:1b}}]
tellraw @s {"text":"Loadout 1 saved","color":"gold"}
function kbt:loadout/save_finish
