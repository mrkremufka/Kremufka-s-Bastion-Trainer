execute if data storage kbt:loadouts slots.slot2{saved:1b} run function kbt:loadout/select/2
execute unless data storage kbt:loadouts slots.slot2{saved:1b} run tellraw @s {"text":"This slot is empty Use Edit, then Save first","color":"red"}
