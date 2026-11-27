scoreboard objectives add kbt.creator dummy
scoreboard players set #rc_nav_quiet kbt.settings 0
scoreboard objectives add kbt.rc_menu trigger
scoreboard objectives add kbt.rc_stageui trigger
scoreboard objectives add kbt.rc_pick trigger
scoreboard objectives add kbt.rc_head trigger
scoreboard players set @a kbt.rc_head 0
scoreboard players enable @a kbt.rc_head
scoreboard objectives add kbt.rc_tab trigger
execute unless score #rc_list_tab kbt.settings matches 0..1 run scoreboard players set #rc_list_tab kbt.settings 0
scoreboard players set @a kbt.rc_tab 0
scoreboard players enable @a kbt.rc_tab
scoreboard objectives add kbt.rc_edit trigger
scoreboard objectives add kbt.rc_move trigger
scoreboard players set @a kbt.rc_move 0
scoreboard players enable @a kbt.rc_move
data remove storage kbt:route_move session
data remove storage kbt:route_edit selection
scoreboard objectives add kbt.rc_name dummy
scoreboard objectives add kbt.rc_splash minecraft.used:minecraft.splash_potion
scoreboard objectives add kbt.rc_exit dummy
scoreboard objectives add kbt.rc_use minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add kbt.rc_carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add kbt.rc_cd dummy
scoreboard objectives add kbt.rc_mode dummy
scoreboard objectives add kbt.rc_type dummy
scoreboard objectives add kbt.rc_stage dummy
scoreboard objectives add kbt.rc_open trigger
scoreboard objectives add kbt.rc_delete trigger
execute unless data storage kbt:routes meta run data modify storage kbt:routes meta set value {schema:1,next_id:1}
execute unless data storage kbt:routes meta.next_id run data modify storage kbt:routes meta.next_id set value 1
execute unless data storage kbt:routes meta.next_movement_id run data modify storage kbt:routes meta.next_movement_id set value 80001
scoreboard players set #rc_new_movement kbt.settings 0
execute unless data storage kbt:routes records run data modify storage kbt:routes records set value []
scoreboard players enable @a kbt.rc_menu
scoreboard players enable @a kbt.rc_open
scoreboard players enable @a kbt.rc_delete
data remove storage kbt:routes editor.pending
scoreboard players set #rc_confirm kbt.settings 0
execute if score #lv_active kbt.settings matches 1 run function kbt:routes/creator/layout_check/cancel
scoreboard players set #rc_projectile_ticks kbt.settings 2
execute if data storage kbt:routes draft{tool:14} run data modify storage kbt:routes draft.tool_name set value "New Phase"
execute as @a[scores={kbt.creator=1}] if data entity @s Inventory[{tag:{kbtRouteWand:1b,kbtRouteTool:14,display:{Name:'{"text":"Regenerate Bastion","color":"light_purple","italic":false}'}}}] run function kbt:routes/creator/give_route_wand
execute as @a[scores={kbt.creator=1}] at @s run function kbt:routes/creator/preview/rebuild
