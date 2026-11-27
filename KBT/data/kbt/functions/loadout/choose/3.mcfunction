execute if data storage kbt:loadouts slots.slot3{saved:1b} run function kbt:loadout/select/3
execute unless data storage kbt:loadouts slots.slot3{saved:1b} run tellraw @s {"text":"This slot is empty Use Edit, then Save first","color":"red"}
