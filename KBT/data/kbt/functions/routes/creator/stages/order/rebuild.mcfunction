data modify storage kbt:route_runtime stage_order.item set from storage kbt:route_runtime stage_order.queue[0]
execute store result score #rso_index kbt.settings run data get storage kbt:route_runtime stage_order.item.index
execute if score #rso_index kbt.settings = #rso_lower kbt.settings run data modify storage kbt:route_runtime stage_order.item set from storage kbt:route_runtime stage_order.b
execute if score #rso_index kbt.settings = #rso_upper kbt.settings run data modify storage kbt:route_runtime stage_order.item set from storage kbt:route_runtime stage_order.a
execute store result storage kbt:route_runtime stage_order.item.index int 1 run scoreboard players get #rso_index kbt.settings
execute if data storage kbt:route_runtime stage_order.item.elements[0] run data modify storage kbt:route_runtime stage_order.item.elements[].stage set from storage kbt:route_runtime stage_order.item.index
data modify storage kbt:route_runtime stage_order.result append from storage kbt:route_runtime stage_order.item
data remove storage kbt:route_runtime stage_order.queue[0]
execute if data storage kbt:route_runtime stage_order.queue[0] run function kbt:routes/creator/stages/order/rebuild
