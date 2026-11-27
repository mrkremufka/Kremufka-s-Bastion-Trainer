function kbt:arena/mutation/begin
function kbt:arena/reset_state
scoreboard players set #ar_dense kbt.settings 0
execute if block 936 200 936 minecraft:netherrack if block 936 200 1063 minecraft:netherrack if block 1063 200 936 minecraft:netherrack if block 1063 200 1063 minecraft:netherrack run scoreboard players set #ar_dense kbt.settings 1
execute if score #ar_dense kbt.settings matches 1 run function kbt:arena/reset/blocks_full
execute unless score #ar_dense kbt.settings matches 1 run function kbt:arena/reset/blocks_filtered
kill @e[x=936,y=128,z=936,dx=127,dy=127,dz=127,type=!player]
function kbt:arena/mutation/end

function kbt:arena/invalidate
