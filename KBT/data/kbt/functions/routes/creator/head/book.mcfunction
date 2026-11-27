execute if data storage kbt:route_text pending.element{type:13} run clear @s minecraft:writable_book{kbtRouteText:1b}
execute if data storage kbt:route_text pending.element{type:13} run give @s minecraft:writable_book{kbtRouteText:1b,kbtRouteHead:1b,display:{Name:'{"text":"Player Head - Name","color":"gold","italic":false}'}} 1
execute if data storage kbt:route_text pending.element{type:13} run tellraw @s {"text":"Write the player's name on page 1 Close with Done, hold the book and click Apply Name For a UUID/texture head, hold that head and choose Copy Held Head","color":"aqua"}
execute if data storage kbt:route_text pending.element{type:13} run function kbt:routes/creator/head/menu
