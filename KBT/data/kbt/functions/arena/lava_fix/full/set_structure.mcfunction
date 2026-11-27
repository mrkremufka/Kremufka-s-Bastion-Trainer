
setblock ^ ^ ^ structure_block{mode:"LOAD"}

data modify block ^ ^ ^ name set from storage kbt:lava_fix lava_fix.position_names.current[-1]
data remove storage kbt:lava_fix lava_fix.position_names.current[-1]

data modify block ^ ^ ^ rotation set from storage kbt:lava_fix rotation_name