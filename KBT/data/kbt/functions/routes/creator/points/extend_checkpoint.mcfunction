execute store result score #rc_chain kbt.settings run data get storage kbt:routes draft.checkpoint_chain
scoreboard players operation #rc_chain_next kbt.settings = #rc_chain kbt.settings
scoreboard players add #rc_chain_next kbt.settings 1
scoreboard players set #rc_chain_selected kbt.settings 0
execute if score #rc_chain kbt.settings = #rc_stage kbt.settings run scoreboard players set #rc_chain_selected kbt.settings 1
execute if score #rc_chain_next kbt.settings = #rc_stage kbt.settings run scoreboard players set #rc_chain_selected kbt.settings 1
execute if score #rc_chain_selected kbt.settings matches 1 if data storage kbt:route_runtime element{regenerate:1b} if data storage kbt:routes draft{checkpoint_regenerate:1b} run function kbt:routes/creator/points/extend_checkpoint_active
execute if score #rc_chain_selected kbt.settings matches 1 unless data storage kbt:route_runtime element{regenerate:1b} unless data storage kbt:routes draft{checkpoint_regenerate:1b} run function kbt:routes/creator/points/extend_checkpoint_active
