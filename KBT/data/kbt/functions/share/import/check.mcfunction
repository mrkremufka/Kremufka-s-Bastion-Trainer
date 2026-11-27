scoreboard players set #sh_ok kbt.settings 0
data remove storage kbt:route_practice candidate
execute if data storage kbt:share payload{v:1} if data storage kbt:share payload.record.recipe.seed run data modify storage kbt:route_practice candidate set from storage kbt:share payload.record
execute if data storage kbt:share payload{v:1,blocks:1b} if data storage kbt:share blocks_loaded run data modify storage kbt:route_practice candidate set from storage kbt:share payload.record
execute if data storage kbt:route_practice candidate run function kbt:share/import/validate
execute if score #sh_ok kbt.settings matches 0 run tellraw @s {"text":"That file is not a supported KBT route or has invalid generation settings","color":"red"}
execute if score #sh_ok kbt.settings matches 0 run function kbt:share/import/cancel
execute if score #sh_ok kbt.settings matches 1 run function kbt:share/import/apply
