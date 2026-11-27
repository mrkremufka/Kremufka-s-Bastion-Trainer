execute if score #ss_wait kbt.settings matches 1 in minecraft:the_nether run function kbt:savestate/cancel
execute if score #gp_loading kbt.settings matches 1.. run function kbt:practice/loading/cancel
scoreboard players set #gp_replay kbt.settings 0
function kbt:movement/playlist/cancel
execute if score #rp_active kbt.settings matches 1 run function kbt:routes/practice/stop
execute unless score #gp_bastion kbt.settings matches 0..4 run scoreboard players set #gp_bastion kbt.settings 0
execute unless score #gold kbt.settings matches 0..2 run scoreboard players set #gold kbt.settings 0
execute unless score #floor kbt.settings matches 0..3 run scoreboard players set #floor kbt.settings 0
execute unless score #hoglins kbt.settings matches 0..1 run scoreboard players set #hoglins kbt.settings 0
execute unless score #bridge_spawn kbt.settings matches 0..10 run scoreboard players set #bridge_spawn kbt.settings 0
execute unless score #treasure_spawn kbt.settings matches 0..7 run scoreboard players set #treasure_spawn kbt.settings 0
execute unless score #housing_spawn kbt.settings matches 0..7 run scoreboard players set #housing_spawn kbt.settings 0
execute unless score #stables_spawn kbt.settings matches 0..8 run scoreboard players set #stables_spawn kbt.settings 0
execute unless score #debug kbt.settings matches 0..1 run scoreboard players set #debug kbt.settings 0
tag @a remove kbt.start_player
execute if entity @s[type=minecraft:player] run tag @s add kbt.start_player
execute unless entity @s[type=minecraft:player] run tag @p add kbt.start_player
execute in minecraft:the_nether run forceload add 936 936 1063 1063
scoreboard players set @a[tag=kbt.start_player] kbt.run 0
execute unless score #rc_generating kbt.settings matches 1 unless score #rp_job kbt.settings matches 1.. unless entity @a[tag=kbt.start_player,scores={kbt.edit=1..3}] unless entity @a[tag=kbt.start_player,scores={kbt.creator=1}] run function kbt:practice/loading/queue
execute if score #rc_generating kbt.settings matches 1 run tellraw @a[tag=kbt.start_player] {"text":"Wait for Create Route to finish","color":"yellow"}
execute if score #rp_job kbt.settings matches 1.. run tellraw @a[tag=kbt.start_player] {"text":"Wait for the route layout copy to finish","color":"yellow"}
tellraw @a[tag=kbt.start_player,scores={kbt.creator=1}] {"text":"Exit Route Creator before starting practice Your draft will be kept","color":"red"}
tellraw @a[tag=kbt.start_player,scores={kbt.edit=1..3}] {"text":"Save your loadout before starting practice","color":"red"}
