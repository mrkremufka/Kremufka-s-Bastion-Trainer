scoreboard players set #rb_pick kbt.settings 0
execute if score @s kbt.rb_pick matches 1 if data storage kbt:route_browser chat_choices[0] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[0].id
execute if score @s kbt.rb_pick matches 2 if data storage kbt:route_browser chat_choices[1] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[1].id
execute if score @s kbt.rb_pick matches 3 if data storage kbt:route_browser chat_choices[2] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[2].id
execute if score @s kbt.rb_pick matches 4 if data storage kbt:route_browser chat_choices[3] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[3].id
execute if score @s kbt.rb_pick matches 5 if data storage kbt:route_browser chat_choices[4] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[4].id
execute if score @s kbt.rb_pick matches 6 if data storage kbt:route_browser chat_choices[5] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[5].id
execute if score @s kbt.rb_pick matches 7 if data storage kbt:route_browser chat_choices[6] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[6].id
execute if score @s kbt.rb_pick matches 8 if data storage kbt:route_browser chat_choices[7] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[7].id
execute if score @s kbt.rb_pick matches 9 if data storage kbt:route_browser chat_choices[8] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[8].id
execute if score @s kbt.rb_pick matches 10 if data storage kbt:route_browser chat_choices[9] store result score #rb_pick kbt.settings run data get storage kbt:route_browser chat_choices[9].id
execute if score #rb_pick kbt.settings matches 1.. run function kbt:route_browser/catalog/rows/pick
execute if score #rb_pick kbt.settings matches 1.. if score #rb_pick_found kbt.settings matches 1 at @s run playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 0.2 1
execute if score #rb_pick kbt.settings matches 1.. run function kbt:route_browser/catalog/chat/page
