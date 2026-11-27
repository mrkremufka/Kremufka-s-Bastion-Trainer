execute unless data storage kbt:route_runtime stage_order.a.elements[{type:5}] run function kbt:routes/creator/stages/order/transfer_boundary
data remove storage kbt:route_runtime stage_order.b.elements[{type:5}].regenerate
execute if data storage kbt:route_runtime stage_order.a.elements[{type:5}] run data modify storage kbt:route_runtime stage_order.a.elements[{type:5}].regenerate set value 1b
