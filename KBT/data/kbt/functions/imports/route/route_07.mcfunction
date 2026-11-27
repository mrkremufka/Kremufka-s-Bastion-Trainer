execute if score #ki_phase kbt.settings matches 1 run scoreboard players set #ki_slot_ok kbt.settings 0
execute if score #ki_phase kbt.settings matches 1 run function kbt:imports/content/0394b77e-2220-424a-a16a-43bba645f797/register
execute if score #ki_phase kbt.settings matches 1 unless score #ki_slot_ok kbt.settings matches 1 run function kbt:imports/reject_payload
execute if score #ki_phase kbt.settings matches 2 if score #rp_copy kbt.settings matches 0 if data storage kbt:route_practice job_record{import_key:"0394b77e-2220-424a-a16a-43bba645f797"} run function kbt:imports/content/0394b77e-2220-424a-a16a-43bba645f797/dispatch
