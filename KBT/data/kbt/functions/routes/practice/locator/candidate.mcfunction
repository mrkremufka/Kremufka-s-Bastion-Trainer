scoreboard players set #loc_dist kbt.settings 0
execute store result score #loc_delta kbt.settings run data get entity @s Pos[0]
scoreboard players operation #loc_delta kbt.settings -= #loc_px kbt.settings
scoreboard players operation #loc_delta kbt.settings *= #loc_delta kbt.settings
scoreboard players operation #loc_dist kbt.settings += #loc_delta kbt.settings
execute store result score #loc_delta kbt.settings run data get entity @s Pos[1]
scoreboard players operation #loc_delta kbt.settings -= #loc_py kbt.settings
scoreboard players operation #loc_delta kbt.settings *= #loc_delta kbt.settings
scoreboard players operation #loc_dist kbt.settings += #loc_delta kbt.settings
execute store result score #loc_delta kbt.settings run data get entity @s Pos[2]
scoreboard players operation #loc_delta kbt.settings -= #loc_pz kbt.settings
scoreboard players operation #loc_delta kbt.settings *= #loc_delta kbt.settings
scoreboard players operation #loc_dist kbt.settings += #loc_delta kbt.settings
execute if score #loc_dist kbt.settings > #loc_max kbt.settings run function kbt:routes/practice/locator/choose
