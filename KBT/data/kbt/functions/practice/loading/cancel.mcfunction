schedule clear kbt:practice/generate
schedule clear kbt:practice/loading/tick
title @a[tag=kbt.gp_loading] actionbar {"text":""}
execute unless score #rp_job kbt.settings matches 1.. unless score #rc_generating kbt.settings matches 1 unless score #cs_job kbt.settings matches 1..2 as @a[tag=kbt.gp_loading,gamemode=spectator] run function kbt:practice/loading/restore_mode
tag @a[tag=kbt.gp_loading] remove kbt.start_player
tag @a remove kbt.gp_loading
scoreboard players set #gp_loading kbt.settings 0
scoreboard players set #gp_piglins_off kbt.settings 0
data remove storage kbt:general_practice loading
