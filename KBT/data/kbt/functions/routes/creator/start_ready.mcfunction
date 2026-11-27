execute unless entity @s[type=minecraft:player] run tellraw @a {"text":"Run /function kbt:routes/creator/start as a player","color":"red"}
execute if score #rc_generating kbt.settings matches 1 run tellraw @s {"text":"Wait for Create Route to finish","color":"yellow"}
execute unless score #rc_generating kbt.settings matches 1 if entity @s[type=minecraft:player,nbt=!{Health:0.0f}] run function kbt:routes/creator/check_start
