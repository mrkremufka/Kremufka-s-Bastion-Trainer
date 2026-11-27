execute unless score #bi_batch kbt.settings matches 1 run function kbt:routes/builtin/check_chunks
execute if score #bi_loaded kbt.settings matches 1 run function #kbt:routes/builtin_load_tile
execute if score #bi_loaded kbt.settings matches 1 if data storage kbt:route_practice job_record.layout{imported:1b} run function kbt:imports/load_tile
