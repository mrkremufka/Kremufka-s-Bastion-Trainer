data modify storage kbt:presets random_queue set from storage kbt:presets records
data modify storage kbt:presets random_choices set value []
execute if data storage kbt:presets random_queue[0] run function kbt:settings/presets/random/collect
execute store result score #ps_pool_count kbt.settings run data get storage kbt:presets random_choices
execute if score #ps_pool_count kbt.settings matches 1.. in minecraft:the_nether positioned 1000 250 1000 run function kbt:settings/presets/random/roll
execute if score #ps_pool_count kbt.settings matches 1.. run function kbt:settings/presets/random/apply
execute unless score #ps_pool_count kbt.settings matches 1.. run tellraw @a[tag=kbt.start_player] {"text":"Random presets: no valid presets selected Using current settings","color":"yellow"}
data remove storage kbt:presets random_queue
data remove storage kbt:presets random_entry
data remove storage kbt:presets random_choices
