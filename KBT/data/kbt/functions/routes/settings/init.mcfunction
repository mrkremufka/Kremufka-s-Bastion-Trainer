scoreboard objectives add kbt.rp_piglins dummy
scoreboard objectives add kbt.rp_hoglins dummy
scoreboard objectives add kbt.rp_dstg dummy
scoreboard objectives add kbt.rp_dphs dummy
scoreboard objectives add kbt.rp_steps dummy
scoreboard objectives add kbt.rp_ptimes dummy
scoreboard objectives add kbt.rp_layout dummy
scoreboard objectives add kbt.rp_page dummy
scoreboard objectives add kbt.rp_view dummy
scoreboard objectives add kbt.rp_sound dummy
scoreboard objectives add kbt.rp_msgsnd dummy
execute unless score #rp_message_sound kbt.settings matches 0..1 run scoreboard players set #rp_message_sound kbt.settings 1
scoreboard objectives add kbt.rp_phsound dummy
execute unless score #rp_phase_sound kbt.settings matches 0..1 run scoreboard players set #rp_phase_sound kbt.settings 1
execute unless score #rp_checkpoint_sound kbt.settings matches 0..1 run scoreboard players set #rp_checkpoint_sound kbt.settings 1
scoreboard players set #rp_practice_mode kbt.settings 0
execute unless score #rp_piglins kbt.settings matches 0..2 run scoreboard players set #rp_piglins kbt.settings 0
execute unless score #rp_hoglins kbt.settings matches 0..2 run scoreboard players set #rp_hoglins kbt.settings 0
execute unless score #rp_split_info kbt.settings matches 0..1 run scoreboard players set #rp_split_info kbt.settings 1
execute unless score #rp_display_stage kbt.settings matches 0..1 run scoreboard players operation #rp_display_stage kbt.settings = #rp_split_info kbt.settings
execute unless score #rp_display_phase kbt.settings matches 0..1 run scoreboard players operation #rp_display_phase kbt.settings = #rp_split_info kbt.settings
execute unless score #rp_steps_left kbt.settings matches 0..1 run scoreboard players set #rp_steps_left kbt.settings 1
execute unless score #rp_phase_times kbt.settings matches 0..1 run scoreboard players set #rp_phase_times kbt.settings 1

scoreboard objectives add kbt.rp_locator dummy
execute unless score #rp_locator kbt.settings matches 0..1 run scoreboard players set #rp_locator kbt.settings 1
