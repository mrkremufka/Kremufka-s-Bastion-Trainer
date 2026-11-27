scoreboard players set @s kbt.rc_cd 6
execute store result score #rc_message_points kbt.settings run data get storage kbt:route_text pending.element.area
execute if score #rc_message_points kbt.settings matches 64.. run tellraw @s {"text":"This message already has 64 area points Remove a point before adding another","color":"yellow"}
execute if score #rc_message_points kbt.settings matches ..63 run function kbt:routes/creator/message/capture_point
