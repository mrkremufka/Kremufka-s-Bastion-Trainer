setblock 1000 231 -1102 minecraft:structure_block{mode:"SAVE",posX:0,posY:-2,posZ:0,sizeX:1,sizeY:1,sizeZ:1,ignoreEntities:0b,showboundingbox:1b}
function kbt:share/export/marker
tellraw @s [{"text":"Right-click the structure block, name the file and press SAVE at the bottom right ","color":"aqua"},{"text":"[Done]","color":"green","clickEvent":{"action":"run_command","value":"/trigger kbt.share set 1"}},{"text":" [Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/trigger kbt.share set 2"}}]
