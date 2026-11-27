scoreboard players set #rt_eligible kbt.settings 0
data modify storage kbt:route_timer session.eligible set value 0b
data modify storage kbt:route_timer display.status_separator set value " | "
data modify storage kbt:route_timer display.status set value "PHASE PRACTICE"
execute unless score #rp_no_time kbt.settings matches 1 if score #ph_enabled kbt.settings matches 1 run scoreboard players set #ph_valid kbt.settings 1
execute unless score #rp_no_time kbt.settings matches 1 if score #ph_enabled kbt.settings matches 1 run tellraw @s {"text":"Phase PB enabled Complete this phase to set a record","color":"green"}
