function kbt:routes/creator/text/clear
function kbt:routes/creator/naming/clear
data modify storage kbt:routes editor.backup_draft set from storage kbt:routes draft
data modify storage kbt:routes draft set from storage kbt:route_practice job_record
data remove storage kbt:routes draft.import_key
data remove storage kbt:routes draft.share
data remove storage kbt:routes draft.shared_import
data remove storage kbt:routes draft.generation
data modify storage kbt:routes draft.source set value 1
data modify storage kbt:routes draft.ready set value 0b
data modify storage kbt:routes draft.layout set value {mode:"unbound"}
data modify storage kbt:routes draft.stage set value 1
data modify storage kbt:routes draft.tool set value 1
data modify storage kbt:routes editor.history set value []
data modify storage kbt:routes editor.redo set value []
data remove storage kbt:routes editor.pending
execute unless score #rc_new_movement kbt.settings matches 1 run function kbt:routes/creator/allocate_id
execute if score #rc_new_movement kbt.settings matches 1 run function kbt:movement/creator/allocate_id
data modify storage kbt:route_practice route set from storage kbt:route_practice job_record
data modify storage kbt:route_mobs queue set value []
execute if data storage kbt:route_practice route.mobs run data modify storage kbt:route_mobs queue set from storage kbt:route_practice route.mobs
execute in minecraft:the_nether if data storage kbt:route_mobs queue[0] run function kbt:routes/practice/mobs/next
data modify storage kbt:route_practice element set from storage kbt:route_practice route.start
execute in minecraft:the_nether run function kbt:routes/practice/marker/spawn
execute in minecraft:the_nether run data modify entity @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1] Rotation set from storage kbt:route_practice route.start.rotation
execute in minecraft:the_nether run tp @s @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1]
execute in minecraft:the_nether run data modify entity @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1] ArmorItems set value [{},{},{},{}]
execute in minecraft:the_nether run kill @e[type=minecraft:armor_stand,tag=kbt.rp_start_point]
execute store result score #arena_type kbt.settings run data get storage kbt:routes draft.bastion
scoreboard players set #arena_ready kbt.settings 1
scoreboard players set @s kbt.rc_wiz 0
function kbt:routes/setup/prepare_editor
tellraw @s [{"text":"Created editable copy, Custom ID ","color":"aqua"},{"nbt":"draft.id","storage":"kbt:routes","color":"gold"},{"text":" Save Route in the editor to add it to Custom","color":"gray"}]
