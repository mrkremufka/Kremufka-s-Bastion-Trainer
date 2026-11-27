scoreboard players add #rc_gen_wait kbt.settings 1
execute if score #rc_gen_wait kbt.settings matches ..99 run schedule function kbt:routes/setup/generate 2t replace
execute if score #rc_gen_wait kbt.settings matches 100.. run tellraw @a[tag=kbt.rc_creating] {"text":"Arena chunks did not load Create Route cancelled; draft was kept Try again","color":"red"}
execute if score #rc_gen_wait kbt.settings matches 100.. run function kbt:routes/setup/cancel_generation
