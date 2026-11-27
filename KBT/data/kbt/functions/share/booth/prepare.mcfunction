scoreboard players set #sh_loaded kbt.settings 0
execute in minecraft:the_nether if block 998 225 -1105 minecraft:air run scoreboard players add #sh_loaded kbt.settings 1
execute in minecraft:the_nether unless block 998 225 -1105 minecraft:air run scoreboard players add #sh_loaded kbt.settings 1
execute in minecraft:the_nether if block 1006 225 -1097 minecraft:air run scoreboard players add #sh_loaded kbt.settings 1
execute in minecraft:the_nether unless block 1006 225 -1097 minecraft:air run scoreboard players add #sh_loaded kbt.settings 1
execute if score #sh_booth kbt.settings matches 1.. if score #sh_loaded kbt.settings matches 2 run function kbt:share/booth/check_area
execute if score #sh_booth kbt.settings matches 1.. unless score #sh_loaded kbt.settings matches 2 run scoreboard players add #sh_boot_wait kbt.settings 1
execute if score #sh_booth kbt.settings matches 1.. unless score #sh_loaded kbt.settings matches 2 if score #sh_boot_wait kbt.settings matches ..100 run schedule function kbt:share/booth/prepare 2t replace
execute if score #sh_booth kbt.settings matches 1.. if score #sh_boot_wait kbt.settings matches 101.. run tellraw @a[tag=kbt.share_user] {"text":"Sharing area did not load Try again in a moment","color":"yellow"}
execute if score #sh_booth kbt.settings matches 1.. if score #sh_boot_wait kbt.settings matches 101.. as @a[tag=kbt.share_user] run function kbt:share/booth/close
