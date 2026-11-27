function kbt:practice/loading/check_owner
execute if score #gp_loading kbt.settings matches 1 run scoreboard players add #gp_load_ticks kbt.settings 1
execute if score #gp_loading kbt.settings matches 1 in minecraft:the_nether run function kbt:routes/setup/check_chunks
execute if score #gp_loading kbt.settings matches 1 run function kbt:practice/loading/progress
execute if score #gp_loading kbt.settings matches 1 if score #rc_loaded kbt.settings matches 1 in minecraft:the_nether run function kbt:practice/loading/generate
execute if score #gp_loading kbt.settings matches 1 if score #gp_load_ticks kbt.settings matches 201.. run tellraw @a[tag=kbt.gp_loading] {"text":"Arena chunks did not load Try General Practice Start again","color":"red"}
execute if score #gp_loading kbt.settings matches 1 if score #gp_load_ticks kbt.settings matches 201.. run function kbt:practice/loading/cancel
execute if score #gp_loading kbt.settings matches 1 run schedule function kbt:practice/generate 1t replace
