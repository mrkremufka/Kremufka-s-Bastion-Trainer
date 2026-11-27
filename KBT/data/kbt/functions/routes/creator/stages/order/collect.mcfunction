execute store result score #rso_index kbt.settings run data get storage kbt:route_runtime stage_order.queue[0].index
execute if score #rso_index kbt.settings = #rso_lower kbt.settings run data modify storage kbt:route_runtime stage_order.a set from storage kbt:route_runtime stage_order.queue[0]
execute if score #rso_index kbt.settings = #rso_upper kbt.settings run data modify storage kbt:route_runtime stage_order.b set from storage kbt:route_runtime stage_order.queue[0]
data remove storage kbt:route_runtime stage_order.queue[0]
execute if data storage kbt:route_runtime stage_order.queue[0] run function kbt:routes/creator/stages/order/collect
