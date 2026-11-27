execute in minecraft:the_nether run function kbt:routes/practice/mobs/capture
data modify storage kbt:routes draft.mobs set from storage kbt:route_mobs captured
data modify storage kbt:route_practice candidate set from storage kbt:routes draft
execute store result score #rp_id kbt.settings run data get storage kbt:routes draft.id
scoreboard players set #rp_request kbt.settings 1
data modify storage kbt:route_practice open_editor_after_bind set from storage kbt:routes draft.id
function kbt:routes/practice/job/begin
tellraw @s {"text":"Saving the clean bastion and mobs before editing Please wait for the editor to open","color":"aqua"}
