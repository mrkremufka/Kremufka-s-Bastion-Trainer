function kbt:routes/creator/layout_check/cancel
data modify storage kbt:layout_validation record set value {}
data modify storage kbt:layout_validation record.anchor set from storage kbt:routes draft.anchor
data modify storage kbt:layout_validation record.start set from storage kbt:routes draft.start
data modify storage kbt:layout_validation stages set value []
data modify storage kbt:layout_validation stages set from storage kbt:routes draft.stages
data modify storage kbt:layout_validation elements set value []
data modify storage kbt:layout_validation issues set value []
scoreboard players set #lv_id kbt.settings 0
execute store result score #lv_id kbt.settings run data get storage kbt:routes draft.id
scoreboard players set #lv_active kbt.settings 1
scoreboard players set #lv_warnings kbt.settings 0
scoreboard players set #lv_checked kbt.settings 0
scoreboard players set #lv_stage kbt.settings 0
scoreboard players set #lv_element kbt.settings 0
tag @s add kbt.lv_owner
execute in minecraft:the_nether run summon minecraft:armor_stand 1000 128 1000 {Tags:["kbt.layout_probe"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
tellraw @s {"text":"Checking current layout Warnings are advisory; later stages may depend on earlier actions The route will not be changed","color":"aqua"}
data modify storage kbt:layout_validation point set value []
data modify storage kbt:layout_validation point set from storage kbt:layout_validation record.start.pos
scoreboard players set #lv_kind kbt.settings 1
function kbt:routes/creator/layout_check/point
function kbt:routes/creator/layout_check/batch
execute if score #lv_active kbt.settings matches 1 run schedule function kbt:routes/creator/layout_check/tick 1t replace
