setblock -1004 254 1003 minecraft:barrier
setblock -1004 255 1003 minecraft:oak_sign
execute if data storage kbt:route_browser rows[0] run function kbt:route_browser/catalog/rows/render_0
execute if data storage kbt:route_browser rows[1] run function kbt:route_browser/catalog/rows/render_1
execute if data storage kbt:route_browser rows[2] run function kbt:route_browser/catalog/rows/render_2
setblock -1004 255 1003 minecraft:air
setblock -1004 254 1003 minecraft:air
