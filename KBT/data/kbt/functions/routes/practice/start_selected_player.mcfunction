function kbt:route_browser/catalog/check_play
execute unless score #rb_can_play kbt.settings matches 1 run tellraw @s {"text":"Select a saved Custom or Built-in route with a prepared layout in Route Selector If the list is refreshing, wait and try again Prepare a new route using Play Saved Route in its creator first","color":"yellow"}
execute if score #rb_can_play kbt.settings matches 1 run function kbt:routes/practice/start_selected_valid
