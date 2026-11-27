function kbt:routes/practice/phase/stats/load
execute if data storage kbt:phase_stats record.recent[0] run function kbt:routes/practice/phase/stats/render
execute unless data storage kbt:phase_stats record.recent[0] run tellraw @s {"text":"No completed attempts for this phase and these settings yet","color":"gray"}
