execute store result storage kbt:routes draft.stage int 1 run scoreboard players get #rcpn_target kbt.settings
data remove storage kbt:routes draft.checkpoint_chain
data remove storage kbt:routes draft.checkpoint_regenerate
scoreboard players operation #rcpn_phase kbt.settings = #rcpn_target_phase kbt.settings
scoreboard players set #rc_show_all kbt.settings 0
title @s actionbar [{"text":"Phase ","color":"gray"},{"score":{"name":"#rcpn_phase","objective":"kbt.settings"},"color":"light_purple"},{"text":" / ","color":"gray"},{"score":{"name":"#rcpn_total","objective":"kbt.settings"},"color":"light_purple"},{"text":" | stage ","color":"gray"},{"nbt":"draft.stage","storage":"kbt:routes","color":"aqua"}]
