tellraw @s {"text":"Tutorial","color":"gold","bold":true}
tellraw @s [{"text":"Blue outline: ","color":"blue"},{"text":"Place a block here (Forced)","color":"white"}]
tellraw @s [{"text":"Red outline: ","color":"red"},{"text":"Break this block (Forced)","color":"white"}]
tellraw @s [{"text":"Yellow outline: ","color":"yellow"},{"text":"Place a gold block here (Forced)","color":"white"}]
tellraw @s [{"text":"Yellow X on the ground: ","color":"yellow"},{"text":"Throw a gold ingot here (Forced)","color":"white"}]
tellraw @s [{"text":"Light blue: ","color":"aqua"},{"text":"Place a block here (Optional)","color":"white"}]
tellraw @s [{"text":"Light red: ","color":"#FF9E9E"},{"text":"Break this block (Optional)","color":"white"}]
tellraw @s [{"text":"Green sparkles: ","color":"green"},{"text":"Checkpoint","color":"white"}]
tellraw @s [{"text":"Cyan particles: ","color":"aqua"},{"text":"Follow Point (Navigation only)","color":"white"}]
tellraw @s [{"text":"White particles: ","color":"white"},{"text":"Finish","color":"white"}]
tellraw @s {"text":"Throw Gold: target cells sharing a face form one area Hit any X in an area to complete it; each separate area needs its own throw","color":"gray"}
tellraw @s {"text":"Complete all Forced tasks in the current stage before entering its Checkpoint or Finish Completed task markers disappear","color":"gray"}
tellraw @s {"text":"Chat Message: Enter Area displays it near its placed points Stage Entry displays it automatically when its stage starts","color":"light_purple"}
playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 0.5 1
