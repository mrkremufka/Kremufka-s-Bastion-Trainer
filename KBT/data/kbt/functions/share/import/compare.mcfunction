scoreboard players set #sh_same kbt.settings 0
scoreboard players operation #rc_target kbt.settings = #sh_id kbt.settings
scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
data remove storage kbt:share old_layout
execute if data storage kbt:route_runtime found.layout run data modify storage kbt:share old_layout set from storage kbt:route_runtime found.layout
data modify storage kbt:share compare set from storage kbt:route_runtime found
data remove storage kbt:share compare.id
data remove storage kbt:share compare.layout
data remove storage kbt:share compare.generation
data remove storage kbt:share compare.visuals
data modify storage kbt:share incoming set from storage kbt:share record
data remove storage kbt:share incoming.id
data remove storage kbt:share incoming.layout
data remove storage kbt:share incoming.generation
data remove storage kbt:share incoming.visuals
scoreboard players set #sh_diff kbt.settings 1
execute if data storage kbt:route_runtime found{source:1} unless data storage kbt:route_runtime found.import_key if data storage kbt:route_runtime found.layout{mode:"snapshot",schema:1} store success score #sh_diff kbt.settings run data modify storage kbt:share compare set from storage kbt:share incoming
execute if score #sh_diff kbt.settings matches 0 run scoreboard players set #sh_same kbt.settings 1
execute if data storage kbt:share blocks_loaded run scoreboard players set #sh_same kbt.settings 0
execute if score #sh_same kbt.settings matches 1 run tellraw @s {"text":"This route is already up to date","color":"green"}
