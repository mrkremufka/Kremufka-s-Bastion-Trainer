scoreboard players set #rc_name_kind kbt.settings 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] run scoreboard players set #rc_name_kind kbt.settings 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",tag:{kbtRouteName:1b}}}] run scoreboard players set #rc_name_kind kbt.settings 2
execute if score #rc_name_kind kbt.settings matches 1 run function kbt:routes/creator/naming/read
execute if score #rc_name_kind kbt.settings matches 2 run function kbt:routes/creator/naming/read_page
execute if score #rc_name_kind kbt.settings matches 0 run tellraw @s {"text":"Hold the Route Name book in your main hand, then click Apply Name","color":"yellow"}