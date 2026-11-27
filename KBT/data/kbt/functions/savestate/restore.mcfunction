title @s actionbar {"text":"Restoring savestate","color":"aqua"}
function kbt:savestate/rules_begin
scoreboard players set #ss_action kbt.settings 1
execute as @e[type=!minecraft:player,x=936,y=128,z=936,dx=127,dy=127,dz=127] run function kbt:savestate/discard_entity
execute if data storage kbt:savestate current{full:0b} run function kbt:arena/reset_outer
execute if data storage kbt:savestate current{full:0b} run function kbt:arena/reset_high
execute if data storage kbt:savestate current{bank:0,full:0b} run function kbt:savestate/tiles/fast_a
execute if data storage kbt:savestate current{bank:1,full:0b} run function kbt:savestate/tiles/fast_b
execute if data storage kbt:savestate current{bank:0} unless data storage kbt:savestate current{full:0b} run function kbt:savestate/tiles/a
execute if data storage kbt:savestate current{bank:1} unless data storage kbt:savestate current{full:0b} run function kbt:savestate/tiles/b
function kbt:savestate/entities
scoreboard players operation #ss_max_e kbt.settings > #ss_n kbt.settings
function kbt:savestate/clear_restore_drops
function kbt:savestate/rules_end
function kbt:arena/invalidate
execute if data storage kbt:savestate current{full:0b} run scoreboard players set #arena_outer_dirty kbt.settings 0
execute if data storage kbt:savestate current{full:0b} run scoreboard players set #arena_high_dirty kbt.settings 0
execute if data storage kbt:savestate current{full:0b} store result score #arena_built_floor kbt.settings run data get storage kbt:savestate current.floor
function kbt:savestate/restore_runtime
function kbt:savestate/restore_scores
scoreboard players set #arena_drop_ticks kbt.settings 0
data modify storage kbt:loadouts runtime.items set from storage kbt:savestate current.inventory
function kbt:loadout/restore
data remove storage kbt:loadouts runtime.items
scoreboard players set #rp_active kbt.settings 0
scoreboard players set #rt_state kbt.settings 0
scoreboard players set #rt_eligible kbt.settings 0
scoreboard players set #ph_valid kbt.settings 0
scoreboard players set @s kbt.gp_timer 0
scoreboard players set @s kbt.run 0
tag @s remove kbt.rp_runner
data modify storage kbt:route_timer session.eligible set value 0b
data modify storage kbt:route_timer display.status set value "SAVESTATE"
data modify storage kbt:route_timer display.status_separator set value " | "
summon minecraft:armor_stand 1000 250 1000 {Tags:["kbt.ss_anchor"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
data modify entity @e[type=minecraft:armor_stand,tag=kbt.ss_anchor,limit=1] Pos set from storage kbt:savestate current.pos
data modify entity @e[type=minecraft:armor_stand,tag=kbt.ss_anchor,limit=1] Rotation set from storage kbt:savestate current.rotation
tp @s @e[type=minecraft:armor_stand,tag=kbt.ss_anchor,limit=1]
tag @s add kbt.ss_waiting
scoreboard players set #ss_wait kbt.settings 1
gamemode spectator @s
scoreboard players set #ss_health_resume kbt.settings 0
execute if data storage kbt:savestate current.health run function kbt:savestate/player/health/restore
execute store result score #ss_x kbt.settings run data get entity @s Pos[0] 1000
execute store result score #ss_y kbt.settings run data get entity @s Pos[1] 1000
execute store result score #ss_z kbt.settings run data get entity @s Pos[2] 1000
scoreboard players set #ss_hud kbt.settings 0
function kbt:savestate/hud
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1.0
