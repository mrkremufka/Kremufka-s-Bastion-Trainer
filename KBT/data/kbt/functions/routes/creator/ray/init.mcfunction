scoreboard players set #rc_10000 kbt.settings 10000
scoreboard players set #rc_100m kbt.settings 100000000
execute store result score #bx kbt.settings run data get entity @s Pos[0]
scoreboard players operation #bx kbt.settings *= #rc_10000 kbt.settings
scoreboard players operation #absx kbt.settings = #dx kbt.settings
scoreboard players set #neg kbt.settings -1
execute if score #absx kbt.settings matches ..-1 run scoreboard players operation #absx kbt.settings *= #neg kbt.settings
scoreboard players operation #tx kbt.settings = #bx kbt.settings
execute if score #dx kbt.settings matches 1.. run scoreboard players add #tx kbt.settings 10000
execute if score #dx kbt.settings matches 1.. run scoreboard players operation #tx kbt.settings -= #rx kbt.settings
execute if score #dx kbt.settings matches ..-1 run scoreboard players operation #tx kbt.settings = #rx kbt.settings
execute if score #dx kbt.settings matches ..-1 run scoreboard players operation #tx kbt.settings -= #bx kbt.settings
scoreboard players operation #tx kbt.settings *= #rc_10000 kbt.settings
execute unless score #absx kbt.settings matches 0 run scoreboard players operation #tx kbt.settings /= #absx kbt.settings
scoreboard players operation #dtx kbt.settings = #rc_100m kbt.settings
execute unless score #absx kbt.settings matches 0 run scoreboard players operation #dtx kbt.settings /= #absx kbt.settings
execute if score #absx kbt.settings matches 0 run scoreboard players set #tx kbt.settings 1000000000
execute store result score #by kbt.settings run data get entity @s Pos[1]
scoreboard players operation #by kbt.settings *= #rc_10000 kbt.settings
scoreboard players operation #absy kbt.settings = #dy kbt.settings
scoreboard players set #neg kbt.settings -1
execute if score #absy kbt.settings matches ..-1 run scoreboard players operation #absy kbt.settings *= #neg kbt.settings
scoreboard players operation #ty kbt.settings = #by kbt.settings
execute if score #dy kbt.settings matches 1.. run scoreboard players add #ty kbt.settings 10000
execute if score #dy kbt.settings matches 1.. run scoreboard players operation #ty kbt.settings -= #ry kbt.settings
execute if score #dy kbt.settings matches ..-1 run scoreboard players operation #ty kbt.settings = #ry kbt.settings
execute if score #dy kbt.settings matches ..-1 run scoreboard players operation #ty kbt.settings -= #by kbt.settings
scoreboard players operation #ty kbt.settings *= #rc_10000 kbt.settings
execute unless score #absy kbt.settings matches 0 run scoreboard players operation #ty kbt.settings /= #absy kbt.settings
scoreboard players operation #dty kbt.settings = #rc_100m kbt.settings
execute unless score #absy kbt.settings matches 0 run scoreboard players operation #dty kbt.settings /= #absy kbt.settings
execute if score #absy kbt.settings matches 0 run scoreboard players set #ty kbt.settings 1000000000
execute store result score #bz kbt.settings run data get entity @s Pos[2]
scoreboard players operation #bz kbt.settings *= #rc_10000 kbt.settings
scoreboard players operation #absz kbt.settings = #dz kbt.settings
scoreboard players set #neg kbt.settings -1
execute if score #absz kbt.settings matches ..-1 run scoreboard players operation #absz kbt.settings *= #neg kbt.settings
scoreboard players operation #tz kbt.settings = #bz kbt.settings
execute if score #dz kbt.settings matches 1.. run scoreboard players add #tz kbt.settings 10000
execute if score #dz kbt.settings matches 1.. run scoreboard players operation #tz kbt.settings -= #rz kbt.settings
execute if score #dz kbt.settings matches ..-1 run scoreboard players operation #tz kbt.settings = #rz kbt.settings
execute if score #dz kbt.settings matches ..-1 run scoreboard players operation #tz kbt.settings -= #bz kbt.settings
scoreboard players operation #tz kbt.settings *= #rc_10000 kbt.settings
execute unless score #absz kbt.settings matches 0 run scoreboard players operation #tz kbt.settings /= #absz kbt.settings
scoreboard players operation #dtz kbt.settings = #rc_100m kbt.settings
execute unless score #absz kbt.settings matches 0 run scoreboard players operation #dtz kbt.settings /= #absz kbt.settings
execute if score #absz kbt.settings matches 0 run scoreboard players set #tz kbt.settings 1000000000
function kbt:routes/creator/ray/step
