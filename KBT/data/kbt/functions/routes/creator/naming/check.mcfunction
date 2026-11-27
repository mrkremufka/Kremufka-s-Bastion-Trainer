scoreboard players set #rc_name_id kbt.settings 0
scoreboard players set #rc_name_draft kbt.settings -1
scoreboard players set #rc_name_length kbt.settings 0
execute store result score #rc_name_id kbt.settings run data get storage kbt:route_naming route_id
execute store result score #rc_name_draft kbt.settings run data get storage kbt:routes draft.id
execute store result score #rc_name_length kbt.settings run data get storage kbt:route_naming candidate
execute unless score #rc_name_id kbt.settings = #rc_name_draft kbt.settings run tellraw @s {"text":"Naming session belongs to a different draft Click Name Route again","color":"red"}
execute unless score #rc_name_length kbt.settings matches 1.. run tellraw @s {"text":"Write the route name on page 1, click Done, hold the book and click Apply Name","color":"yellow"}
execute if score #rc_name_length kbt.settings > #rc_name_limit kbt.settings run tellraw @s {"text":"Use up to 64 characters on page 1, or 16 characters for a signed title","color":"red"}
execute if score #rc_name_id kbt.settings = #rc_name_draft kbt.settings if score #rc_name_length kbt.settings matches 1.. if score #rc_name_length kbt.settings <= #rc_name_limit kbt.settings run function kbt:routes/creator/naming/validate
execute unless score #rc_name_id kbt.settings = #rc_name_draft kbt.settings run scoreboard players set @s kbt.rc_name 0
