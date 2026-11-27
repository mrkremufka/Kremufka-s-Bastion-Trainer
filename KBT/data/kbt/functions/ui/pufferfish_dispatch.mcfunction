execute as @e[type=minecraft:pufferfish,tag=kbt.credits_hitbox,distance=..32,scores={kbt.ui_cd=0},nbt=!{HurtTime:0s}] at @s run function kbt:credits/click
execute as @e[type=minecraft:pufferfish,tag=kbt.route_tutorial_hitbox,distance=..32,scores={kbt.ui_cd=0},nbt=!{HurtTime:0s}] at @s run function kbt:routes/tutorial/click
execute as @e[type=minecraft:pufferfish,tag=kbt.mv_creator_hitbox,distance=..32,scores={kbt.ui_cd=0},nbt=!{HurtTime:0s}] at @s run function kbt:movement/creator/button/click
execute as @e[type=minecraft:pufferfish,tag=kbt.rb_test,tag=kbt.rb_hitbox,tag=!kbt.rb_bastion_hitbox,tag=!kbt.rb_catalog_hitbox,distance=..32,scores={kbt.ui_cd=0},nbt=!{HurtTime:0s}] at @s run function kbt:route_browser/test/click
execute as @e[type=minecraft:pufferfish,tag=kbt.rb_catalog_hitbox,tag=!kbt.rb_more_hitbox,distance=..32,scores={kbt.ui_cd=0},nbt=!{HurtTime:0s}] at @s run function kbt:route_browser/catalog/click
execute as @e[type=minecraft:pufferfish,tag=kbt.rb_bastion_hitbox,distance=..32,scores={kbt.ui_cd=0},nbt=!{HurtTime:0s}] at @s run function kbt:route_browser/bastion/click
scoreboard players set #ui_cd_active kbt.settings 12

execute as @e[type=minecraft:pufferfish,tag=kbt.pb_info_hitbox,distance=..32,scores={kbt.ui_cd=0},nbt=!{HurtTime:0s}] at @s run function kbt:pb_info/click
