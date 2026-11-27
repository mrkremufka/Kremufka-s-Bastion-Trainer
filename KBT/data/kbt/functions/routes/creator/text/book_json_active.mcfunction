clear @s minecraft:writable_book{kbtRouteText:1b}
give @s minecraft:writable_book{kbtRouteText:1b,pages:['{"text":"Your message","color":"#55FF55","bold":true}'],display:{Name:'{"text":"Advanced Text JSON","color":"light_purple","italic":false}',Lore:['{"text":"Edit the JSON on page 1","color":"gray","italic":false}','{"text":"Supports #RRGGBB and custom formatting","color":"gray","italic":false}','{"text":"Done, do not Sign; then Apply Message","color":"yellow","italic":false}']}} 1
data modify storage kbt:route_text input_mode set value 1
tellraw @s {"text":"Advanced: edit the JSON on page 1 Any #RRGGBB color and text-component styles are supported Done, hold the book, then Apply Message Palette/style buttons return to plain-text mode","color":"light_purple"}
