summon armor_stand ~ ~ ~ {Tags:["SmcTpAgent"],Invisible:1,NoGravity:1b,Marker:1b}
execute store result entity @e[tag=SmcTpAgent,limit=1] Pos[0] int 1 run scoreboard players get #pos_x supermc
execute store result entity @e[tag=SmcTpAgent,limit=1] Pos[1] int 1 run scoreboard players get #pos_y supermc
execute store result entity @e[tag=SmcTpAgent,limit=1] Pos[2] int 1 run scoreboard players get #pos_z supermc
tp @e[tag=SmcTpAgent,limit=1]
kill @e[tag=SmcTpAgent,limit=1]
