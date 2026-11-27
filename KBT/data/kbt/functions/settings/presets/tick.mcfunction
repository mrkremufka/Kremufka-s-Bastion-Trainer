function kbt:settings/presets/button/tick
execute as @a[scores={kbt.preset=1..}] at @s run function kbt:settings/presets/input
scoreboard players set @a kbt.preset 0
scoreboard players enable @a kbt.preset
