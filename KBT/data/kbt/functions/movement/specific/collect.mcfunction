data modify storage kbt:movement_specific record set from storage kbt:movement_specific queue[0]
function kbt:movement/specific/match_record
execute if score #sj_match kbt.settings matches 1 run function kbt:movement/specific/collect_entry
data remove storage kbt:movement_specific queue[0]
scoreboard players remove #sj_build_budget kbt.settings 1
execute if score #sj_build_budget kbt.settings matches 1.. if data storage kbt:movement_specific queue[0] run function kbt:movement/specific/collect
