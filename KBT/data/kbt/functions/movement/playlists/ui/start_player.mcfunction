function kbt:movement/playlists/ui/context
execute if score #mpl_ui_context kbt.settings matches 1 run function kbt:movement/playlists/ui/open
execute unless score #mpl_ui_context kbt.settings matches 1 run tellraw @s {"text":"Open Playlists from the Movement lobby after finishing the active run, copy or editing","color":"yellow"}
