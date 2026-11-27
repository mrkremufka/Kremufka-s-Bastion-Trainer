function kbt:arena/mutation/begin
function kbt:arena/reset_state
scoreboard players set #bb_inplace kbt.settings 0
scoreboard players set #bb_buried_same kbt.settings 0
scoreboard players set #buried_fast kbt.settings 0
execute if score #arena_built_floor kbt.settings matches 2 if score #arena_built_type kbt.settings matches 0..3 if score #arena_buried_dirty kbt.settings matches 0 if score #arena_outer_dirty kbt.settings matches 0 if score #arena_high_dirty kbt.settings matches 0 if score #natural_mobs kbt.settings matches 0 run scoreboard players set #buried_fast kbt.settings 1
execute if score #buried_fast kbt.settings matches 1 if score #gen_target kbt.settings matches 0..3 if score #arena_built_type kbt.settings = #gen_target kbt.settings run scoreboard players set #bb_buried_same kbt.settings 1
scoreboard players set #bb_buried_same kbt.settings 0
scoreboard players set #buried_fast kbt.settings 0
execute if score #bb_buried_same kbt.settings matches 1 if score #gen_target kbt.settings matches 0 run function kbt:arena/clear_dynamic_0
execute if score #bb_buried_same kbt.settings matches 1 if score #gen_target kbt.settings matches 0 run function kbt:arena/buried/refill_same_0
execute if score #bb_buried_same kbt.settings matches 1 if score #gen_target kbt.settings matches 1 run function kbt:arena/clear_dynamic_1
execute if score #bb_buried_same kbt.settings matches 1 if score #gen_target kbt.settings matches 1 run scoreboard players set #bb_inplace kbt.settings 1
execute if score #bb_buried_same kbt.settings matches 1 if score #gen_target kbt.settings matches 2 run function kbt:arena/clear_dynamic_2
execute if score #bb_buried_same kbt.settings matches 1 if score #gen_target kbt.settings matches 2 run function kbt:arena/buried/refill_same_2
execute if score #bb_buried_same kbt.settings matches 1 if score #gen_target kbt.settings matches 3 run function kbt:arena/clear_dynamic_3
execute if score #bb_buried_same kbt.settings matches 1 if score #gen_target kbt.settings matches 3 run function kbt:arena/buried/refill_same_3
execute if score #buried_fast kbt.settings matches 1 if score #bb_buried_same kbt.settings matches 0 if score #arena_built_type kbt.settings matches 0 run function kbt:arena/buried/refill_type_0
execute if score #buried_fast kbt.settings matches 1 if score #bb_buried_same kbt.settings matches 0 if score #arena_built_type kbt.settings matches 1 run function kbt:arena/buried/refill_type_1
execute if score #buried_fast kbt.settings matches 1 if score #bb_buried_same kbt.settings matches 0 if score #arena_built_type kbt.settings matches 2 run function kbt:arena/buried/refill_type_2
execute if score #buried_fast kbt.settings matches 1 if score #bb_buried_same kbt.settings matches 0 if score #arena_built_type kbt.settings matches 3 run function kbt:arena/buried/refill_type_3
execute if score #buried_fast kbt.settings matches 0 unless score #arena_built_floor kbt.settings matches 2 run function kbt:arena/buried/fill_open
execute if score #buried_fast kbt.settings matches 0 if score #arena_built_floor kbt.settings matches 2 run function kbt:arena/buried/fill
scoreboard players set #arena_outer_dirty kbt.settings 0
scoreboard players set #arena_high_dirty kbt.settings 0
scoreboard players set #arena_floor_dirty kbt.settings 0
scoreboard players set #arena_buried_dirty kbt.settings 0
scoreboard players set #gen_target kbt.settings -1
kill @e[x=936,y=128,z=936,dx=127,dy=127,dz=127,type=!player]
execute if score #piglin_glow kbt.settings matches 0 if score #hoglin_glow kbt.settings matches 0 run scoreboard players set #glow_dirty kbt.settings 0
function kbt:arena/mutation/end
