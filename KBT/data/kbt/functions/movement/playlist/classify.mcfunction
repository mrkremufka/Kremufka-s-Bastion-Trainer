scoreboard players set #mv_match kbt.settings 0
scoreboard players set #mv_record_type kbt.settings -1
execute store result score #mv_record_type kbt.settings run data get storage kbt:movement_playlist record.bastion
execute if data storage kbt:movement_playlist record{mode:"movement",ready:1b,source:1} if data storage kbt:movement_playlist record.layout{mode:"snapshot",schema:1} run scoreboard players set #mv_match kbt.settings 1
execute if data storage kbt:movement_playlist record{mode:"movement",ready:1b,source:0} if data storage kbt:movement_playlist record.layout{mode:"builtin",schema:1} run scoreboard players set #mv_match kbt.settings 1
execute if data storage kbt:movement_playlist record{mode:"movement",ready:1b,source:1} if data storage kbt:movement_playlist record.layout{mode:"builtin",schema:1,imported:1b} if data storage kbt:movement_playlist record.import_key run scoreboard players set #mv_match kbt.settings 1
