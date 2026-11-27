execute unless data block ~ ~ ~ Items[{Slot:4b,tag:{kbt_menu:1b,kbt_action:"scoreboard_title",kbt_layout:1b}}] run function kbt:settings/render
function kbt:settings/info/poll
execute unless data block ~ ~ ~ Items[{Slot:9b,tag:{kbt_menu:1b,kbt_action:"previous"}}] run function kbt:settings/pages/previous
execute unless data block ~ ~ ~ Items[{Slot:17b,tag:{kbt_menu:1b,kbt_action:"next"}}] run function kbt:settings/pages/next
