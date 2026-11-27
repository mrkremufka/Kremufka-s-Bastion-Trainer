execute as @a[tag=kbt.gp_loading] unless entity @s[nbt={Dimension:"minecraft:the_nether"}] in minecraft:the_nether run tp @s 21 129 29 0 0
scoreboard players set #gp_loading kbt.settings 2
function kbt:practice/loading/progress
difficulty easy
tag @a[tag=kbt.start_player] remove kbt.rp_context
tag @a[tag=kbt.start_player] remove kbt.mv_context
tag @a[tag=kbt.start_player] remove kbt.rp_respawn
execute unless data storage kbt:general_practice scenario{ready:1b} run scoreboard players set #gp_replay kbt.settings 0
execute unless score #gp_replay kbt.settings matches 1 if score #ps_random kbt.settings matches 1 run function kbt:settings/presets/random/select
scoreboard players operation #bastion kbt.settings = #gp_bastion kbt.settings
function kbt:settings/apply
function kbt:practice/scenario/capture_settings
data modify storage kbt:general_practice menu set from storage kbt:general_practice settings
execute unless score #gp_replay kbt.settings matches 1 run function kbt:practice/scenario/prepare_new
execute if score #gp_replay kbt.settings matches 1 run function kbt:practice/scenario/prepare_restart
scoreboard players set #gp_generation kbt.settings 1
scoreboard players set #gp_piglins_off kbt.settings 0
execute if score #piglins kbt.settings matches 1 run scoreboard players set #gp_piglins_off kbt.settings 1
function kbt:arena/generate_selected
scoreboard players set #gp_piglins_off kbt.settings 0
scoreboard players set #gp_generation kbt.settings 0

function kbt:practice/scenario/capture_settings
data modify storage kbt:general_practice loading set value {}
data modify storage kbt:general_practice loading.settings set from storage kbt:general_practice settings
execute store result storage kbt:general_practice loading.bastion int 1 run scoreboard players get #run_type kbt.settings
execute store result storage kbt:general_practice loading.floor int 1 run scoreboard players get #run_floor kbt.settings
execute store result storage kbt:general_practice loading.replay int 1 run scoreboard players get #gp_replay kbt.settings
data modify storage kbt:general_practice settings set from storage kbt:general_practice menu
function kbt:practice/scenario/apply_settings
data remove storage kbt:general_practice menu
data remove storage kbt:general_practice settings
execute if score #lava_wait kbt.settings matches 1.. run scoreboard players set #gp_loading kbt.settings 3
execute if score #gp_loading kbt.settings matches 3 run function kbt:practice/loading/progress
execute if score #gp_loading kbt.settings matches 3 run schedule function kbt:practice/loading/tick 1t replace
execute unless score #gp_loading kbt.settings matches 3 run function kbt:practice/loading/finish
