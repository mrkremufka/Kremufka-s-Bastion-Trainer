scoreboard players set #rb_chat_valid kbt.settings 1
execute if score #rb_dirty kbt.settings matches 1 run scoreboard players set #rb_chat_valid kbt.settings 0
execute if score #rb_building kbt.settings matches 1 run scoreboard players set #rb_chat_valid kbt.settings 0
scoreboard players set #rb_chat_check kbt.settings -1
execute store result score #rb_chat_check kbt.settings run data get storage kbt:route_browser chat_snapshot.type
execute unless score #rb_chat_check kbt.settings = #rb_choice kbt.settings run scoreboard players set #rb_chat_valid kbt.settings 0
execute store result score #rb_chat_check kbt.settings run data get storage kbt:route_browser chat_snapshot.difficulty
execute unless score #rb_chat_check kbt.settings = #rb_diff kbt.settings run scoreboard players set #rb_chat_valid kbt.settings 0
execute store result score #rb_chat_check kbt.settings run data get storage kbt:route_browser chat_snapshot.source
execute unless score #rb_chat_check kbt.settings = #rb_source kbt.settings run scoreboard players set #rb_chat_valid kbt.settings 0
execute store result score #rb_chat_check kbt.settings run data get storage kbt:route_browser chat_snapshot.revision
execute store result score #rb_revision kbt.settings run data get storage kbt:routes meta.revision
execute unless score #rb_chat_check kbt.settings = #rb_revision kbt.settings run scoreboard players set #rb_chat_valid kbt.settings 0
scoreboard players set #rb_chat_check kbt.settings -1
execute store result score #rb_chat_check kbt.settings run data get storage kbt:route_browser chat_snapshot.favorites
execute unless score #rb_chat_check kbt.settings = #rb_fav_filter kbt.settings run scoreboard players set #rb_chat_valid kbt.settings 0
execute store result score #rb_chat_check kbt.settings run data get storage kbt:route_browser chat_snapshot.fav_revision
execute unless score #rb_chat_check kbt.settings = #rb_fav_rev kbt.settings run scoreboard players set #rb_chat_valid kbt.settings 0
execute if score #rb_chat_valid kbt.settings matches 0 run tellraw @s {"text":"Filters or saved routes changed Click Built-in or Custom again to refresh the list","color":"yellow"}
