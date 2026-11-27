execute unless score #rp_no_time kbt.settings matches 1 run tellraw @s {"text":"Gamemode changed: practice continues, but this attempt will not save any times or results Restart for a timed attempt","color":"yellow"}
scoreboard players set #rp_no_time kbt.settings 1
scoreboard players set #rt_eligible kbt.settings 0
scoreboard players set #ph_valid kbt.settings 0
data modify storage kbt:route_timer session.eligible set value 0b
data modify storage kbt:route_timer display.status_separator set value " | "
data modify storage kbt:route_timer display.status set value "NO TIME SAVED"
