function kbt:routes/creator/drafts/delete_check
execute if score #rc_draft_delete_valid kbt.settings matches 1 run function kbt:routes/creator/drafts/delete_apply
execute unless score #rc_draft_delete_valid kbt.settings matches 1 run tellraw @s {"text":"Deletion cancelled: the draft changed or the creator is busy Reopen Drafts and request Delete Draft again","color":"yellow"}
