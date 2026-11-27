execute in minecraft:the_nether run function kbt:routes/setup/check_chunks
execute if score #sh_work kbt.settings matches 1 if score #rc_loaded kbt.settings matches 1 as @a[tag=kbt.share_binder,limit=1] at @s run function kbt:share/import/bind
execute unless score #rc_loaded kbt.settings matches 1 run scoreboard players add #sh_wait kbt.settings 1
execute if score #sh_work kbt.settings matches 1 unless score #rc_loaded kbt.settings matches 1 if score #sh_wait kbt.settings matches ..100 run schedule function kbt:share/import/generate 2t replace
execute if score #sh_wait kbt.settings matches 101.. run tellraw @a[tag=kbt.share_binder] {"text":"Arena chunks did not load The previous route was kept; try importing again","color":"red"}
execute if score #sh_wait kbt.settings matches 101.. run function kbt:share/import/cancel
