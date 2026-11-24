function kbt:movement/playlist/cancel
function kbt:routes/practice/stop
tag @s remove kbt.rp_context
tag @s remove kbt.mv_context
schedule clear kbt:practice/generate
schedule clear kbt:arena/generate_selected
tag @s remove kbt.start_player
scoreboard players set @s kbt.run 0
function kbt:practice/clear_drops
execute if entity @s[gamemode=survival] run scoreboard players set @s kbt.rc_mode 0
execute if entity @s[gamemode=creative] run scoreboard players set @s kbt.rc_mode 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s kbt.rc_mode 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s kbt.rc_mode 3
scoreboard players set @s kbt.creator 1
scoreboard players set @s kbt.rc_book 0
scoreboard players set @s kbt.rc_cd 0
gamemode creative @s
execute unless data storage kbt:routes draft run function kbt:routes/creator/new_draft
execute store result score #rc_tool kbt.settings run data get storage kbt:routes draft.tool
execute unless score #rc_tool kbt.settings matches 1..8 unless score #rc_tool kbt.settings matches 10..18 run scoreboard players set #rc_tool kbt.settings 1
execute if data storage kbt:routes draft{mode:"movement"} unless score #rc_tool kbt.settings matches 1..2 unless score #rc_tool kbt.settings matches 4 unless score #rc_tool kbt.settings matches 6..7 unless score #rc_tool kbt.settings matches 10..11 unless score #rc_tool kbt.settings matches 16 run scoreboard players set #rc_tool kbt.settings 1
execute store result storage kbt:routes draft.tool int 1 run scoreboard players get #rc_tool kbt.settings
function kbt:routes/creator/give_wand
function kbt:routes/creator/preview/rebuild
function kbt:practice/difficulty
execute unless data storage kbt:routes draft{mode:"movement"} run tellraw @s {"text":"Route Creator: use the authoring tools to add points. Block tools raycast up to 6 blocks. Checkpoint opens the next stage. Draft changes are stored automatically.","color":"aqua"}
execute if data storage kbt:routes draft{mode:"movement"} run tellraw @s {"text":"Use Get Tools to edit the trail, Save Trail to keep changes, or Play Trail to test from Start.","color":"aqua"}
function kbt:routes/creator/menu
