execute if score @s kbt.rc_setup matches 10 run scoreboard players set #bastion kbt.settings 0
execute if score @s kbt.rc_setup matches 11 run scoreboard players set #bastion kbt.settings 2
execute if score @s kbt.rc_setup matches 12 run scoreboard players set #bastion kbt.settings 3
execute if score @s kbt.rc_setup matches 13 run scoreboard players set #bastion kbt.settings 1
execute if score @s kbt.rc_setup matches 20 if score #bastion kbt.settings matches 0 run scoreboard players add #bridge_left kbt.settings 1
execute if score #bridge_left kbt.settings matches 3.. run scoreboard players set #bridge_left kbt.settings 0
execute if score @s kbt.rc_setup matches 21 if score #bastion kbt.settings matches 0 run scoreboard players add #bridge_right kbt.settings 1
execute if score #bridge_right kbt.settings matches 3.. run scoreboard players set #bridge_right kbt.settings 0
execute if score @s kbt.rc_setup matches 22 if score #bastion kbt.settings matches 2 run scoreboard players add #h_left kbt.settings 1
execute if score #h_left kbt.settings matches 4.. run scoreboard players set #h_left kbt.settings 0
execute if score @s kbt.rc_setup matches 23 if score #bastion kbt.settings matches 3 run scoreboard players add #s_left_gap kbt.settings 1
execute if score #s_left_gap kbt.settings matches 3.. run scoreboard players set #s_left_gap kbt.settings 0
execute if score @s kbt.rc_setup matches 24 if score #bastion kbt.settings matches 3 run scoreboard players add #s_right_gap kbt.settings 1
execute if score #s_right_gap kbt.settings matches 3.. run scoreboard players set #s_right_gap kbt.settings 0
execute if score @s kbt.rc_setup matches 25 if score #bastion kbt.settings matches 3 run scoreboard players add #s_left_ramp kbt.settings 1
execute if score #s_left_ramp kbt.settings matches 4.. run scoreboard players set #s_left_ramp kbt.settings 0
execute if score @s kbt.rc_setup matches 26 if score #bastion kbt.settings matches 3 run scoreboard players add #s_mid_ramp kbt.settings 1
execute if score #s_mid_ramp kbt.settings matches 4.. run scoreboard players set #s_mid_ramp kbt.settings 0
execute if score @s kbt.rc_setup matches 27 if score #bastion kbt.settings matches 3 run scoreboard players add #s_right_ramp kbt.settings 1
execute if score #s_right_ramp kbt.settings matches 4.. run scoreboard players set #s_right_ramp kbt.settings 0
execute if score @s kbt.rc_setup matches 28 if score #bastion kbt.settings matches 1 run scoreboard players add #t_center kbt.settings 1
execute if score #t_center kbt.settings matches 5.. run scoreboard players set #t_center kbt.settings 0
execute if score @s kbt.rc_setup matches 29 if score #bastion kbt.settings matches 1 run scoreboard players add #t_spawner kbt.settings 1
execute if score #t_spawner kbt.settings matches 2.. run scoreboard players set #t_spawner kbt.settings 0
execute if score @s kbt.rc_setup matches 30 run scoreboard players add #floor kbt.settings 1
execute if score #floor kbt.settings matches 4.. run scoreboard players set #floor kbt.settings 0
execute if score @s kbt.rc_setup matches 31 if score #bastion kbt.settings matches 0 run scoreboard players add #bridge_lava kbt.settings 1
execute if score #bridge_lava kbt.settings matches 2.. run scoreboard players set #bridge_lava kbt.settings 0
execute if score @s kbt.rc_setup matches 90 run function kbt:routes/setup/prepare
execute if score @s kbt.rc_setup matches 91 run scoreboard players set @s kbt.rc_wiz 0
execute if score @s kbt.rc_setup matches 91 run tellraw @s {"text":"Route setup closed Arena and draft were not replaced","color":"gray"}
execute if score @s kbt.rc_wiz matches 1 run function kbt:routes/setup/menu
