scoreboard players set @s kbt.rc_cd 6
function kbt:routes/creator/tool_label
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] at @s run function kbt:routes/creator/points/add
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"}] run tellraw @s {"text":"Route points must be in the Nether","color":"red"}
