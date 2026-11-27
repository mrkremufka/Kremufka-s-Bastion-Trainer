scoreboard players set #sh_ready kbt.settings 1
execute unless entity @s[tag=kbt.in_lobby,nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set #sh_ready kbt.settings 0
execute if entity @s[tag=kbt.share_user] run scoreboard players set #sh_ready kbt.settings 0
execute if score @s kbt.creator matches 1 run scoreboard players set #sh_ready kbt.settings 0
execute if score @s kbt.run matches 1.. run scoreboard players set #sh_ready kbt.settings 0
execute if score #sh_booth kbt.settings matches 1.. run scoreboard players set #sh_ready kbt.settings 0
execute if score #sh_owned kbt.settings matches 1 run scoreboard players set #sh_ready kbt.settings 0
execute if score #sh_work kbt.settings matches 1.. run scoreboard players set #sh_ready kbt.settings 0
execute if score #rp_job kbt.settings matches 1.. run scoreboard players set #sh_ready kbt.settings 0
execute if score #rp_active kbt.settings matches 1.. run scoreboard players set #sh_ready kbt.settings 0
execute if score #rc_generating kbt.settings matches 1.. run scoreboard players set #sh_ready kbt.settings 0
execute if score #cs_job kbt.settings matches 1.. run scoreboard players set #sh_ready kbt.settings 0
execute if score #ki_busy kbt.settings matches 1.. run scoreboard players set #sh_ready kbt.settings 0
execute if score @s kbt.edit matches 1..3 run scoreboard players set #sh_ready kbt.settings 0
execute if entity @s[tag=kbt.cs_creator] run scoreboard players set #sh_ready kbt.settings 0
execute if entity @s[nbt={Health:0.0f}] run scoreboard players set #sh_ready kbt.settings 0
execute if score #sh_ready kbt.settings matches 0 run tellraw @s {"text":"Return to the lobby and finish the current operation before sharing a route","color":"yellow"}
