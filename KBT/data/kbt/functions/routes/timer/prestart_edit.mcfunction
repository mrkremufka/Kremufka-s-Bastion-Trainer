scoreboard players set #rt_eligible kbt.settings 0
scoreboard players set #ph_valid kbt.settings 0
data modify storage kbt:route_timer session.eligible set value 0b
data modify storage kbt:route_timer display.status_separator set value " | "
data modify storage kbt:route_timer display.status set value "UNRANKED"
tellraw @a[tag=kbt.rp_runner] {"text":"A task changed before the first movement You can finish practice, but this attempt will not save a PB Restart and move before doing tasks","color":"yellow"}
