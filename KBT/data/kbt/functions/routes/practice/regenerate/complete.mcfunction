data remove storage kbt:route_practice regeneration
tag @s remove kbt.rp_regen
function kbt:routes/practice/mobs/restore
execute if data storage kbt:route_practice route.setup{ramparts_schema:1} run function kbt:routes/practice/ramparts/apply
execute unless data storage kbt:route_practice route{mode:"movement"} in minecraft:the_nether run function kbt:routes/practice/loot/prepare
data modify storage kbt:route_practice element set from storage kbt:route_practice route.start
function kbt:routes/practice/marker/spawn
data modify entity @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1] Rotation set from storage kbt:route_practice route.start.rotation
tp @s @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1]
data modify entity @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1] ArmorItems set value [{},{},{},{}]
kill @e[type=minecraft:armor_stand,tag=kbt.rp_start_point]
gamemode survival @s
execute in minecraft:the_nether at @s run function kbt:practice/extinguish
effect give @s minecraft:instant_health 1 10 true
function kbt:loadout/apply
function kbt:arena/drop_cleanup/begin
function kbt:practice/clear_drops
tag @s add kbt.rp_runner
scoreboard players set #rp_active kbt.settings 1
scoreboard players set #arena_ready kbt.settings 1
execute unless score #rp_phase kbt.settings matches 1.. run scoreboard players set #rp_phase kbt.settings 1
execute unless data storage kbt:route_practice phase_retry run scoreboard players add #rp_phase kbt.settings 1
execute if data storage kbt:route_practice phase_retry run function kbt:routes/practice/phase/restore
function kbt:routes/practice/phase/capture
function kbt:routes/practice/stage/advance_phase
execute if score #rp_active kbt.settings matches 1 unless data storage kbt:route_practice phase_retry run function kbt:routes/practice/regenerate/rearm
execute if score #rp_active kbt.settings matches 1 if data storage kbt:route_practice phase_retry run function kbt:routes/practice/phase/arm
data remove storage kbt:route_practice phase_retry
