scoreboard players set #rp_distance kbt.settings 0
execute store result score #rp_gate_pos kbt.settings run data get entity @s Pos[0] 1000
execute store result score #rp_player_pos kbt.settings run data get entity @a[tag=kbt.rp_runner,limit=1] Pos[0] 1000
scoreboard players operation #rp_gate_pos kbt.settings -= #rp_player_pos kbt.settings
scoreboard players operation #rp_gate_pos kbt.settings *= #rp_gate_pos kbt.settings
scoreboard players operation #rp_distance kbt.settings += #rp_gate_pos kbt.settings
execute store result score #rp_gate_pos kbt.settings run data get entity @s Pos[1] 1000
execute store result score #rp_player_pos kbt.settings run data get entity @a[tag=kbt.rp_runner,limit=1] Pos[1] 1000
scoreboard players operation #rp_gate_pos kbt.settings -= #rp_player_pos kbt.settings
scoreboard players operation #rp_gate_pos kbt.settings *= #rp_gate_pos kbt.settings
scoreboard players operation #rp_distance kbt.settings += #rp_gate_pos kbt.settings
execute store result score #rp_gate_pos kbt.settings run data get entity @s Pos[2] 1000
execute store result score #rp_player_pos kbt.settings run data get entity @a[tag=kbt.rp_runner,limit=1] Pos[2] 1000
scoreboard players operation #rp_gate_pos kbt.settings -= #rp_player_pos kbt.settings
scoreboard players operation #rp_gate_pos kbt.settings *= #rp_gate_pos kbt.settings
scoreboard players operation #rp_distance kbt.settings += #rp_gate_pos kbt.settings
scoreboard players operation #rp_radius2 kbt.settings = @s kbt.rp_radius
scoreboard players operation #rp_radius2 kbt.settings *= #rp_radius2 kbt.settings
