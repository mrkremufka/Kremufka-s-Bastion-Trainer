execute as @a[scores={kbt.creator=1},nbt={Health:0.0f}] run function kbt:routes/creator/exit_active
execute as @a[scores={kbt.creator=1},nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] at @s run function kbt:routes/creator/preview/tick
execute as @a[scores={kbt.creator=1},nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] at @s run function kbt:routes/creator/text/tick
scoreboard players remove @a[scores={kbt.creator=1,kbt.rc_cd=1..}] kbt.rc_cd 1
execute as @a[scores={kbt.creator=1,kbt.rc_menu=1..7}] run function kbt:routes/creator/select_tool
execute as @a[scores={kbt.creator=1,kbt.rc_menu=40..41}] run function kbt:routes/creator/select_tool
execute as @a[scores={kbt.creator=1,kbt.rc_menu=43..48}] run function kbt:routes/creator/select_tool
execute as @a[scores={kbt.creator=1,kbt.rc_menu=90}] run function kbt:routes/creator/head/book
execute as @a[scores={kbt.creator=1,kbt.rc_menu=91}] run function kbt:routes/creator/head/apply
execute as @a[scores={kbt.creator=1,kbt.rc_menu=92}] run function kbt:routes/creator/head/copy
execute as @a[scores={kbt.creator=1,kbt.rc_menu=93}] run function kbt:routes/creator/head/save
execute as @a[scores={kbt.creator=1,kbt.rc_menu=95}] run function kbt:routes/creator/head/texture_book
execute as @a[scores={kbt.creator=1,kbt.rc_menu=96}] run function kbt:routes/creator/head/apply
execute as @a[scores={kbt.creator=1,kbt.rc_menu=110..117}] run function kbt:routes/creator/head/rotate
execute as @a[scores={kbt.creator=1,kbt.rc_menu=97}] run function kbt:routes/creator/region/add_point
execute as @a[scores={kbt.creator=1,kbt.rc_menu=97}] run function kbt:routes/creator/hoglin_region/add_point
execute as @a[scores={kbt.creator=1,kbt.rc_menu=98}] run function kbt:routes/creator/region/remove_point
execute as @a[scores={kbt.creator=1,kbt.rc_menu=98}] run function kbt:routes/creator/hoglin_region/remove_point
execute as @a[scores={kbt.creator=1,kbt.rc_menu=99}] if data storage kbt:route_text pending.element{type:15} run function kbt:routes/creator/text/save_check
execute as @a[scores={kbt.creator=1,kbt.rc_menu=99}] if data storage kbt:route_text pending.element{type:17} run function kbt:routes/creator/text/save_check
execute as @a[scores={kbt.creator=1,kbt.rc_menu=100..101}] run function kbt:routes/creator/region/action
execute as @a[scores={kbt.creator=1,kbt.rc_menu=100..101}] run function kbt:routes/creator/hoglin_region/action
execute as @a[scores={kbt.creator=1,kbt.rc_menu=42}] run function kbt:routes/creator/message/select
execute as @a[scores={kbt.creator=1,kbt.rc_menu=62}] run function kbt:routes/creator/message/add_point
execute as @a[scores={kbt.creator=1,kbt.rc_menu=63}] run function kbt:routes/creator/message/remove_point
execute as @a[scores={kbt.creator=1,kbt.rc_menu=8}] run function kbt:routes/creator/menu
execute as @a[scores={kbt.creator=1,kbt.rc_menu=120}] unless data storage kbt:routes draft{mode:"movement"} run function kbt:routes/creator/menu/settings
execute as @a[scores={kbt.creator=1,kbt.rc_menu=121}] unless data storage kbt:routes draft{mode:"movement"} run function kbt:routes/creator/menu/stages
execute as @a[scores={kbt.creator=1,kbt.rc_menu=122}] unless data storage kbt:routes draft{mode:"movement"} run function kbt:routes/creator/menu/advanced
execute as @a[scores={kbt.creator=1,kbt.rc_menu=10}] run function kbt:routes/creator/give_wand
execute as @a[scores={kbt.creator=1,kbt.rc_menu=9}] if data storage kbt:routes draft{mode:"movement"} run function kbt:routes/creator/controls/exit_to_lobby
execute as @a[scores={kbt.creator=1,kbt.rc_menu=9}] unless data storage kbt:routes draft{mode:"movement"} run function kbt:routes/creator/exit
execute as @a[scores={kbt.creator=1,kbt.rc_menu=11}] run function kbt:routes/creator/history/undo
execute as @a[scores={kbt.creator=1,kbt.rc_menu=12}] run function kbt:routes/creator/stages/remove_last
execute as @a[scores={kbt.creator=1,kbt.rc_menu=13}] run function kbt:routes/creator/stages/previous
execute as @a[scores={kbt.creator=1,kbt.rc_menu=14}] run function kbt:routes/creator/stages/next
execute as @a[scores={kbt.creator=1,kbt.rc_menu=15}] run function kbt:routes/creator/save
execute as @a[scores={kbt.creator=1,kbt.rc_menu=16}] run function kbt:routes/creator/difficulty
execute as @a[scores={kbt.creator=1,kbt.rc_menu=17}] run function kbt:routes/creator/catalog/list
execute as @a[scores={kbt.creator=1,kbt.rc_menu=18}] run function kbt:routes/creator/manage/new
execute as @a[scores={kbt.creator=1,kbt.rc_menu=19}] run function kbt:routes/creator/catalog/list_next
execute as @a[scores={kbt.creator=1,kbt.rc_menu=36}] run function kbt:routes/creator/catalog/list_previous
execute as @a[scores={kbt.creator=1,kbt.rc_menu=20}] run function kbt:routes/creator/preview/all
execute as @a[scores={kbt.creator=1,kbt.rc_menu=21}] run function kbt:routes/creator/preview/current
execute as @a[scores={kbt.creator=1,kbt.rc_menu=22}] run function kbt:routes/creator/points/remove_start
execute as @a[scores={kbt.creator=1,kbt.rc_menu=23}] run function kbt:routes/creator/points/remove_finish
execute as @a[scores={kbt.creator=1,kbt.rc_menu=24}] run function kbt:routes/creator/manage/cancel_editing
execute as @a[scores={kbt.creator=1,kbt.rc_menu=25}] run function kbt:routes/creator/stages/merge_next
execute as @a[scores={kbt.creator=1,kbt.rc_menu=26}] run function kbt:routes/practice/bind
execute as @a[scores={kbt.creator=1,kbt.rc_menu=27}] run function kbt:routes/practice/start
execute as @a[scores={kbt.creator=1,kbt.rc_menu=28}] run function kbt:routes/practice/restart
execute as @a[scores={kbt.creator=1,kbt.rc_menu=29}] run function kbt:routes/creator/history/redo
execute as @a[scores={kbt.creator=1,kbt.rc_open=1..}] run function kbt:routes/creator/manage/open
execute as @a[scores={kbt.creator=1,kbt.rc_delete=1..}] run function kbt:routes/creator/manage/delete
execute as @a[scores={kbt.creator=1,kbt.rc_menu=30}] run function kbt:routes/creator/manage/confirm
execute as @a[scores={kbt.creator=1,kbt.rc_menu=31}] run function kbt:routes/creator/manage/cancel_pending
execute as @a[scores={kbt.creator=1,kbt.rc_menu=32}] run function kbt:routes/creator/naming/book
execute as @a[scores={kbt.creator=1,kbt.rc_menu=33}] run function kbt:routes/creator/naming/apply
execute as @a[scores={kbt.creator=1,kbt.rc_menu=34}] run function kbt:routes/creator/naming/cancel
execute as @a[scores={kbt.creator=1,kbt.rc_menu=35}] run function kbt:routes/creator/text/select
execute as @a[scores={kbt.creator=1,kbt.rc_menu=38}] if data storage kbt:routes draft{mode:"movement"} run function kbt:movement/creator/play
execute as @a[scores={kbt.creator=1,kbt.rc_menu=50}] run function kbt:routes/creator/text/book
execute as @a[scores={kbt.creator=1,kbt.rc_menu=51}] run function kbt:routes/creator/text/apply
execute as @a[scores={kbt.creator=1,kbt.rc_menu=52..57}] run function kbt:routes/creator/text/style
execute as @a[scores={kbt.creator=1,kbt.rc_menu=58}] run function kbt:routes/creator/text/save
execute as @a[scores={kbt.creator=1,kbt.rc_menu=59}] run function kbt:routes/creator/text/cancel
execute as @a[scores={kbt.creator=1,kbt.rc_menu=60}] run function kbt:routes/creator/text/book_json
execute as @a[scores={kbt.creator=1,kbt.rc_menu=61}] run function kbt:routes/creator/text/menu
execute as @a[scores={kbt.creator=1,kbt.rc_menu=70..85}] run function kbt:routes/creator/text/style
execute as @a[scores={kbt.creator=1,kbt.rc_name=1},nbt={SelectedItem:{id:"minecraft:written_book"}}] run function kbt:routes/creator/naming/apply
execute as @a[scores={kbt.creator=1,kbt.rc_book=1..,kbt.rc_cd=0},nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{kbtRouteWand:1b}}}] run function kbt:routes/creator/use_held
execute as @a[scores={kbt.creator=1},nbt={Dimension:"minecraft:the_nether",SelectedItem:{tag:{kbtBreakTool:1b}}}] at @s run function kbt:routes/creator/break/tick
execute unless entity @a[scores={kbt.creator=1},nbt={Dimension:"minecraft:the_nether",SelectedItem:{tag:{kbtBreakTool:1b}}}] if entity @e[type=minecraft:armor_stand,tag=kbt.rc_break] run function kbt:routes/creator/break/reset
