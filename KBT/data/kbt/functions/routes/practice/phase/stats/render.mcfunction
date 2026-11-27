execute store result score #ph_last kbt.settings run data get storage kbt:phase_stats record.last
execute store result score #ph_best kbt.settings run data get storage kbt:phase_stats record.best
execute store result score #ph_count kbt.settings run data get storage kbt:phase_stats record.recent
data modify storage kbt:phase_stats samples set from storage kbt:phase_stats record.recent
scoreboard players set #ph_sum kbt.settings 0
execute if data storage kbt:phase_stats samples[0] run function kbt:routes/practice/phase/stats/sum
scoreboard players operation #ph_average kbt.settings = #ph_sum kbt.settings
scoreboard players operation #ph_average kbt.settings /= #ph_count kbt.settings
scoreboard players operation #ph_fraction kbt.settings = #ph_sum kbt.settings
scoreboard players operation #ph_fraction kbt.settings %= #ph_count kbt.settings
scoreboard players set #ph_5 kbt.settings 5
scoreboard players operation #ph_fraction kbt.settings *= #ph_5 kbt.settings
scoreboard players operation #ph_fraction kbt.settings /= #ph_count kbt.settings
scoreboard players operation #ph_average_cs kbt.settings = #ph_average kbt.settings
scoreboard players operation #ph_average_cs kbt.settings *= #ph_5 kbt.settings
scoreboard players operation #ph_average_cs kbt.settings += #ph_fraction kbt.settings
scoreboard players operation #ph_display kbt.settings = #ph_last kbt.settings
function kbt:routes/practice/phase/stats/format
data modify storage kbt:phase_stats display.last set from storage kbt:phase_stats formatted
function kbt:routes/practice/phase/stats/difference
data modify storage kbt:phase_stats display.last_delta set from storage kbt:phase_stats delta_formatted
execute if score #ph_delta kbt.settings matches 0 run data modify storage kbt:phase_stats display.last_comparison set value "{\"text\":\" (=avg)\",\"color\":\"gray\",\"bold\":false}"
execute if score #ph_delta kbt.settings matches 1.. run data modify storage kbt:phase_stats display.last_comparison set value "{\"text\":\" (+\",\"color\":\"red\",\"bold\":false,\"extra\":[{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.last_delta.seconds\",\"color\":\"red\",\"bold\":false},{\"text\":\"\",\"color\":\"red\",\"bold\":false},{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.last_delta.pad\",\"color\":\"red\",\"bold\":false},{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.last_delta.centis\",\"color\":\"red\",\"bold\":false},{\"text\":\"s vs avg)\",\"color\":\"red\",\"bold\":false}]}"
execute if score #ph_delta kbt.settings matches ..-1 run data modify storage kbt:phase_stats display.last_comparison set value "{\"text\":\" (-\",\"color\":\"green\",\"bold\":false,\"extra\":[{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.last_delta.seconds\",\"color\":\"green\",\"bold\":false},{\"text\":\"\",\"color\":\"green\",\"bold\":false},{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.last_delta.pad\",\"color\":\"green\",\"bold\":false},{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.last_delta.centis\",\"color\":\"green\",\"bold\":false},{\"text\":\"s vs avg)\",\"color\":\"green\",\"bold\":false}]}"
scoreboard players operation #ph_display kbt.settings = #ph_best kbt.settings
function kbt:routes/practice/phase/stats/format
data modify storage kbt:phase_stats display.best set from storage kbt:phase_stats formatted
function kbt:routes/practice/phase/stats/difference
data modify storage kbt:phase_stats display.best_delta set from storage kbt:phase_stats delta_formatted
execute if score #ph_delta kbt.settings matches 0 run data modify storage kbt:phase_stats display.best_comparison set value "{\"text\":\" (=avg)\",\"color\":\"gray\",\"bold\":false}"
execute if score #ph_delta kbt.settings matches 1.. run data modify storage kbt:phase_stats display.best_comparison set value "{\"text\":\" (+\",\"color\":\"red\",\"bold\":false,\"extra\":[{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.best_delta.seconds\",\"color\":\"red\",\"bold\":false},{\"text\":\"\",\"color\":\"red\",\"bold\":false},{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.best_delta.pad\",\"color\":\"red\",\"bold\":false},{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.best_delta.centis\",\"color\":\"red\",\"bold\":false},{\"text\":\"s vs avg)\",\"color\":\"red\",\"bold\":false}]}"
execute if score #ph_delta kbt.settings matches ..-1 run data modify storage kbt:phase_stats display.best_comparison set value "{\"text\":\" (-\",\"color\":\"green\",\"bold\":false,\"extra\":[{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.best_delta.seconds\",\"color\":\"green\",\"bold\":false},{\"text\":\"\",\"color\":\"green\",\"bold\":false},{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.best_delta.pad\",\"color\":\"green\",\"bold\":false},{\"storage\":\"kbt:phase_stats\",\"nbt\":\"display.best_delta.centis\",\"color\":\"green\",\"bold\":false},{\"text\":\"s vs avg)\",\"color\":\"green\",\"bold\":false}]}"
scoreboard players operation #ph_display kbt.settings = #ph_average kbt.settings
function kbt:routes/practice/phase/stats/format
scoreboard players operation #ph_centis kbt.settings += #ph_fraction kbt.settings
execute store result storage kbt:phase_stats formatted.centis int 1 run scoreboard players get #ph_centis kbt.settings
data modify storage kbt:phase_stats display.average set from storage kbt:phase_stats formatted
tellraw @s [{"text":"Phase ","color":"gold","bold":true},{"storage":"kbt:phase_stats","nbt":"record.key.phase","color":"gold","bold":true},{"bold":false,"text":"  |  ","color":"dark_gray"},{"bold":false,"text":"Last: ","color":"gold"},{"bold":false,"storage":"kbt:phase_stats","nbt":"display.last.seconds","color":"gold"},{"bold":false,"text":"","color":"gold"},{"bold":false,"storage":"kbt:phase_stats","nbt":"display.last.pad","color":"gold"},{"bold":false,"storage":"kbt:phase_stats","nbt":"display.last.centis","color":"gold"},{"bold":false,"text":"s","color":"gold"},{"storage":"kbt:phase_stats","nbt":"display.last_comparison","interpret":true},{"bold":false,"text":"  |  ","color":"dark_gray"},{"bold":false,"text":"PB: ","color":"yellow"},{"bold":false,"storage":"kbt:phase_stats","nbt":"display.best.seconds","color":"yellow"},{"bold":false,"text":"","color":"yellow"},{"bold":false,"storage":"kbt:phase_stats","nbt":"display.best.pad","color":"yellow"},{"bold":false,"storage":"kbt:phase_stats","nbt":"display.best.centis","color":"yellow"},{"bold":false,"text":"s","color":"yellow"},{"storage":"kbt:phase_stats","nbt":"display.best_comparison","interpret":true},{"bold":false,"text":"  |  ","color":"dark_gray"},{"bold":false,"text":"Avg ","color":"white"},{"bold":false,"text":"(","color":"gray"},{"bold":false,"score":{"name":"#ph_count","objective":"kbt.settings"},"color":"gray"},{"bold":false,"text":"/10)","color":"gray"},{"bold":false,"text":": ","color":"white"},{"bold":false,"storage":"kbt:phase_stats","nbt":"display.average.seconds","color":"aqua"},{"bold":false,"text":"","color":"aqua"},{"bold":false,"storage":"kbt:phase_stats","nbt":"display.average.pad","color":"aqua"},{"bold":false,"storage":"kbt:phase_stats","nbt":"display.average.centis","color":"aqua"},{"bold":false,"text":"s","color":"aqua"}]
