data modify storage kbt:route_runtime editor_labels.difficulty set value "{\"text\":\"Unknown\",\"color\":\"gray\"}"
execute if data storage kbt:routes draft{difficulty:1} run data modify storage kbt:route_runtime editor_labels.difficulty set value "{\"text\":\"Beginner\",\"color\":\"green\"}"
execute if data storage kbt:routes draft{difficulty:2} run data modify storage kbt:route_runtime editor_labels.difficulty set value "{\"text\":\"Intermediate\",\"color\":\"yellow\"}"
execute if data storage kbt:routes draft{difficulty:3} run data modify storage kbt:route_runtime editor_labels.difficulty set value "{\"text\":\"Advanced\",\"color\":\"red\"}"
