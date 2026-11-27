scoreboard players set @e[type=minecraft:pufferfish,tag=kbt.rb_catalog_hitbox] kbt.ui_cd 10
data merge entity @s {Health:1024.0f,HurtTime:0s,Motion:[0.0d,0.0d,0.0d]}
execute if entity @s[tag=kbt.rb_builtin] run scoreboard players set #rb_source kbt.settings 0
execute if entity @s[tag=kbt.rb_custom] run scoreboard players set #rb_source kbt.settings 1
execute if entity @s[tag=kbt.rb_builtin] run scoreboard players set #rb_dirty kbt.settings 1
execute if entity @s[tag=kbt.rb_custom] run scoreboard players set #rb_dirty kbt.settings 1
function kbt:route_browser/catalog/filters
playsound minecraft:block.wooden_button.click_on master @a[distance=..8] ~ ~ ~ 0.5 1
execute if entity @s[tag=kbt.rb_builtin] run tag @p[distance=..8] add kbt.rb_chat_wait
execute if entity @s[tag=kbt.rb_custom] run tag @p[distance=..8] add kbt.rb_chat_wait
