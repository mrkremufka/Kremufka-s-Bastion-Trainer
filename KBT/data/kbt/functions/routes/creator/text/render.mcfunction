scoreboard players set #rc_text_rendered kbt.settings 0
execute in minecraft:the_nether if block 1000 254 1000 minecraft:air if block 1000 255 1000 minecraft:air run function kbt:routes/creator/text/render_sign
execute unless score #rc_text_rendered kbt.settings matches 1 run tellraw @s {"text":"Text could not be rendered: invalid/empty JSON or the temporary text helper above the arena is unavailable The previous text was kept","color":"red"}
