title @s actionbar {"text":"Saving savestate","color":"aqua"}
data modify storage kbt:savestate draft set value {entities:[],scores:{},mode:0}
execute if entity @s[tag=kbt.rp_context] run data modify storage kbt:savestate draft.mode set value 1
data modify storage kbt:savestate draft.owner set from entity @s UUID
data modify storage kbt:savestate draft.pos set from entity @s Pos
data modify storage kbt:savestate draft.rotation set from entity @s Rotation
data modify storage kbt:savestate draft.inventory set from entity @s Inventory
data modify storage kbt:savestate draft.health set from entity @s Health
data modify storage kbt:savestate draft.burning set value 0b
execute if predicate kbt:on_fire run data modify storage kbt:savestate draft.burning set value 1b
data modify storage kbt:savestate draft.context set from storage kbt:general_practice scenario
execute if entity @s[tag=kbt.rp_context] run data modify storage kbt:savestate draft.context set from storage kbt:route_practice route
data modify storage kbt:savestate draft.route set from storage kbt:route_practice
data modify storage kbt:savestate draft.timer set from storage kbt:route_timer
function kbt:savestate/capture_scores
function kbt:savestate/labels
scoreboard players set #ss_index kbt.settings 0
scoreboard players set #ss_action kbt.settings 0
execute as @e[type=!minecraft:player,x=936,y=128,z=936,dx=127,dy=127,dz=127] run function kbt:savestate/capture_entity
scoreboard players operation #ss_max_e kbt.settings > #ss_index kbt.settings
function kbt:savestate/rules_begin
scoreboard players operation #ss_next kbt.settings = #ss_bank kbt.settings
scoreboard players add #ss_next kbt.settings 1
execute if score #ss_next kbt.settings matches 2 run scoreboard players set #ss_next kbt.settings 0
scoreboard players set #ss_fast kbt.settings 0
execute if score #arena_built_floor kbt.settings matches 0..1 if score #arena_outer_dirty kbt.settings matches 0 if score #arena_high_dirty kbt.settings matches 0 run scoreboard players set #ss_fast kbt.settings 1
execute if score #ss_fast kbt.settings matches 1 run data modify storage kbt:savestate draft.full set value 0b
execute if score #ss_fast kbt.settings matches 1 store result storage kbt:savestate draft.floor int 1 run scoreboard players get #arena_built_floor kbt.settings
execute unless score #ss_fast kbt.settings matches 1 run data modify storage kbt:savestate draft.full set value 1b
execute if score #ss_fast kbt.settings matches 1 if score #ss_next kbt.settings matches 0 run function kbt:savestate/tiles/fast_a
execute if score #ss_fast kbt.settings matches 1 if score #ss_next kbt.settings matches 1 run function kbt:savestate/tiles/fast_b
execute unless score #ss_fast kbt.settings matches 1 if score #ss_next kbt.settings matches 0 run function kbt:savestate/tiles/a
execute unless score #ss_fast kbt.settings matches 1 if score #ss_next kbt.settings matches 1 run function kbt:savestate/tiles/b
function kbt:savestate/clear_restore_drops
function kbt:savestate/entities
function kbt:savestate/rules_end
execute store result storage kbt:savestate draft.bank int 1 run scoreboard players get #ss_next kbt.settings
data modify storage kbt:savestate current set from storage kbt:savestate draft
scoreboard players operation #ss_bank kbt.settings = #ss_next kbt.settings
data remove storage kbt:savestate draft
data remove storage kbt:savestate entity
data remove storage kbt:savestate labels
tellraw @s [{"text":"Savestate created ","color":"green"},{"text":"Shift + drop any axe to restore","color":"gray"}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1.5
