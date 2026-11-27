execute in minecraft:the_nether run function kbt:routes/setup/check_chunks
execute if score #sh_booth kbt.settings matches 3 if score #rc_loaded kbt.settings matches 1 in minecraft:the_nether as @a[tag=kbt.share_user,limit=1] run function kbt:share/import/blocks/load
execute if score #sh_booth kbt.settings matches 3 unless score #rc_loaded kbt.settings matches 1 run scoreboard players add #sh_full_wait kbt.settings 1
execute if score #sh_booth kbt.settings matches 3 unless score #rc_loaded kbt.settings matches 1 if score #sh_full_wait kbt.settings matches ..100 run schedule function kbt:share/import/blocks/prepare 2t replace
execute if score #sh_full_wait kbt.settings matches 101.. run tellraw @a[tag=kbt.share_user] {"text":"Arena chunks did not load Try importing again","color":"red"}
execute if score #sh_full_wait kbt.settings matches 101.. as @a[tag=kbt.share_user] run function kbt:share/booth/close
