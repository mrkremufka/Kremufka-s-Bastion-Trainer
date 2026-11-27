execute store result score #rp_id kbt.settings run data get storage kbt:route_practice candidate.id
scoreboard players set #rp_allowed kbt.settings 1
scoreboard players set #rp_import kbt.settings 0
execute if data storage kbt:route_practice candidate{source:1} if data storage kbt:route_practice candidate.import_key if data storage kbt:route_practice candidate.layout{mode:"builtin",schema:1,imported:1b} run scoreboard players set #rp_import kbt.settings 1
execute if data storage kbt:route_practice candidate{source:0} unless data storage kbt:route_practice candidate.layout{mode:"builtin",schema:1} run scoreboard players set #rp_allowed kbt.settings 0
execute if data storage kbt:route_practice candidate{source:1} if data storage kbt:route_practice candidate.layout{mode:"builtin"} unless score #rp_import kbt.settings matches 1 run scoreboard players set #rp_allowed kbt.settings 0
execute if score #rp_import kbt.settings matches 1 if score #rp_request kbt.settings matches 1 run scoreboard players set #rp_allowed kbt.settings 0
execute if score #rp_request kbt.settings matches 1 if data storage kbt:route_practice candidate{source:0} run scoreboard players set #rp_allowed kbt.settings 0
execute if data storage kbt:route_practice candidate{source:1} unless score #rp_id kbt.settings matches 1..90000 run scoreboard players set #rp_allowed kbt.settings 0
execute if data storage kbt:route_practice candidate{source:1} unless data storage kbt:route_practice candidate{mode:"movement"} if score #rp_id kbt.settings matches 80001.. run scoreboard players set #rp_allowed kbt.settings 0
execute store result score #rp_type kbt.settings run data get storage kbt:route_practice candidate.bastion
execute if score #rp_request kbt.settings matches 2 if data storage kbt:route_practice candidate{source:1} unless score #rp_import kbt.settings matches 1 unless data storage kbt:route_practice candidate.layout{mode:"snapshot",schema:1} run function kbt:routes/practice/prepare_first_play
execute if score #rp_request kbt.settings matches 1 unless score #arena_ready kbt.settings matches 1 run scoreboard players set #rp_allowed kbt.settings 0
execute if score #rp_request kbt.settings matches 1 unless score #rp_type kbt.settings = #arena_type kbt.settings run scoreboard players set #rp_allowed kbt.settings 0
execute if score #rp_request kbt.settings matches 2 unless data storage kbt:route_practice candidate.layout{mode:"builtin",schema:1} unless data storage kbt:route_practice candidate.layout{mode:"snapshot",schema:1} run scoreboard players set #rp_allowed kbt.settings 0
execute if score #rp_request kbt.settings matches 2 unless data storage kbt:route_practice candidate.layout{mode:"builtin",schema:1} unless data storage kbt:route_practice candidate.layout{bank:0} unless data storage kbt:route_practice candidate.layout{bank:1} run scoreboard players set #rp_allowed kbt.settings 0
execute if score #rp_allowed kbt.settings matches 0 run tellraw @s {"text":"Layout unavailable Bind a saved route to its currently generated bastion first (/trigger kbt.rp_bind set ID) Binding requires the matching bastion type; Route IDs: 1..80000; Movement IDs: 80001..90000","color":"red"}
execute if score #rp_allowed kbt.settings matches 1 run function kbt:routes/practice/job/begin
execute if score #rp_allowed kbt.settings matches 0 run data remove storage kbt:route_practice play_after_bind
