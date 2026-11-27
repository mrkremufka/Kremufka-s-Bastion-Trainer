function kbt:routes/creator/stages/read
scoreboard players set #rc_removed kbt.settings 0
scoreboard players set #rc_editop kbt.settings 2
function kbt:routes/creator/stages/apply
execute if score #rc_removed kbt.settings matches 1 run data modify storage kbt:routes draft.ready set value 0b
execute if score #rc_removed kbt.settings matches 1 run function kbt:routes/creator/visuals/rebuild
execute if score #rc_removed kbt.settings matches 1 run tellraw @s {"text":"Last task/Follow Point in this stage removed Undo can restore it","color":"aqua"}
execute unless score #rc_removed kbt.settings matches 1 run tellraw @s {"text":"No task to remove in this stage Checkpoint creation is reversible with Undo; Start/Finish have separate remove buttons","color":"gray"}
