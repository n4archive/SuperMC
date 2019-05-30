function supermc:ams_drop_server
function supermc:ams_place_server
summon armor_stand ~ ~ ~ {Tags:["SmcYetAnotherUtil"],Invisible:1}
execute as @e[tag=SmcYetAnotherUtil] at @s run function supermc:ams_interact_server
kill @e[tag=SmcYetAnotherUtil]
execute as @a at @s run function supermc:sgen_chunk
function supermc:joinmsg
function #supermc:tick
kill @e[nbt={id:"minecraft:barrier",Item:{tag:{Forbidden:1}}},type=item]
clear @a barrier{Forbidden:1}
