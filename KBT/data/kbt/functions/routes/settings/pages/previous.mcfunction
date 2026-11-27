function kbt:settings/click
scoreboard players remove @s kbt.rp_page 1
execute if score @s kbt.rp_page matches ..-1 run scoreboard players set @s kbt.rp_page 2
function kbt:routes/settings/render
