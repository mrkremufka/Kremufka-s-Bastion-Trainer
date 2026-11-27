tag @s remove kbt.share_binder
tellraw @s {"text":"Building the imported route's bastion","color":"aqua"}
execute unless data storage kbt:share blocks_loaded run function kbt:share/regenerate
data modify storage kbt:share importing set value 1b
data modify storage kbt:route_practice candidate set from storage kbt:share record
scoreboard players set #rp_request kbt.settings 1
scoreboard players set #rp_restart kbt.settings 0
function kbt:routes/practice/check_layout
execute unless score #rp_job kbt.settings matches 1 run function kbt:share/import/cancel
