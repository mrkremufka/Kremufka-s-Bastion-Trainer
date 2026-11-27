scoreboard players set #rb_dirty kbt.settings 0
scoreboard players set #rb_keep_id kbt.settings 0
execute if data storage kbt:route_browser selected store result score #rb_keep_id kbt.settings run data get storage kbt:route_browser selected.id
scoreboard players set #rb_building kbt.settings 1
scoreboard players operation #rb_seen_rev kbt.settings = #rb_revision kbt.settings
scoreboard players operation #rb_seen_type kbt.settings = #rb_choice kbt.settings
scoreboard players operation #rb_seen_diff kbt.settings = #rb_diff kbt.settings
scoreboard players operation #rb_seen_source kbt.settings = #rb_source kbt.settings
scoreboard players operation #rb_seen_fav kbt.settings = #rb_fav_filter kbt.settings
scoreboard players operation #rb_seen_fav_rev kbt.settings = #rb_fav_rev kbt.settings
data modify storage kbt:route_browser queue set from storage kbt:routes records
data modify storage kbt:route_browser matches set value []
data modify storage kbt:route_browser rows set value []
data modify storage kbt:route_browser all_matches set value []
data remove storage kbt:route_browser selected
scoreboard players set #rb_count kbt.settings 0
scoreboard players set #rb_index kbt.settings 0
function kbt:route_browser/catalog/render
execute as @e[type=minecraft:armor_stand,tag=kbt.rb_selected_text] run data modify entity @s CustomName set value '{"text":"LOADING ROUTES","color":"gray"}'
function kbt:route_browser/catalog/filters
