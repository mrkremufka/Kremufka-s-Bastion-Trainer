data modify storage kbt:imports runtime.current_record set value {id:0,name:"",trail_ids:[],imported:1b,import_key:""}
execute store result storage kbt:imports runtime.current_record.id int 1 run scoreboard players get #ki_id kbt.settings
data modify storage kbt:imports runtime.current_record.name set from storage kbt:imports runtime.current_entry.record.name
data modify storage kbt:imports runtime.current_record.import_key set from storage kbt:imports runtime.current_entry.key
data modify storage kbt:imports runtime.reference_queue set from storage kbt:imports runtime.current_entry.record.trail_keys
data modify storage kbt:imports runtime.reference_seen set value []
scoreboard players set #ki_resolving kbt.settings 1
