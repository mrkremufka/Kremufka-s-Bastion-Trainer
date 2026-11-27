execute if data storage kbt:phase_stats key run function kbt:routes/practice/phase/stats/view
execute unless data storage kbt:phase_stats key run tellraw @s {"text":"Complete a route phase to see its statistics","color":"gray"}
scoreboard players enable @s kbt.rp_action
