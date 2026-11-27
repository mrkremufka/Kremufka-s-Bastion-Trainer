execute if data storage kbt:route_text pending.element{type:13} run clear @s minecraft:writable_book{kbtRouteText:1b}
execute if data storage kbt:route_text pending.element{type:13} run give @s minecraft:writable_book{kbtRouteText:1b,kbtRouteHead:1b,display:{Name:'{"text":"Player Head - Texture","color":"gold","italic":false}'}} 1
execute if data storage kbt:route_text pending.element{type:13} run tellraw @s {"text":"Paste the Base64 texture value on page 1 (not the skin URL or a give command), close with Done, hold the book and click Apply Texture","color":"aqua"}
execute if data storage kbt:route_text pending.element{type:13} run function kbt:routes/creator/head/menu
