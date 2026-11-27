execute if block ^3 ^2 ^1 air run setblock ^3 ^2 ^1 piston_head[facing=down, short=false, type=sticky]
execute if block ^4 ^2 ^1 air run setblock ^4 ^2 ^1 piston_head[facing=down, short=false, type=sticky]
execute positioned ^ ^1 ^1 if block ^ ^ ^ air run function kbt:arena/lava_fix/full/positions/right_lavafall/place_piston_head
execute positioned ^1 ^1 ^1 if block ^ ^ ^ air run function kbt:arena/lava_fix/full/positions/right_lavafall/place_piston_head