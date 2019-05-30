execute store result score #gpos_x supermc run data get entity @s Pos[0]
execute store result score #gpos_z supermc run data get entity @s Pos[2]
scoreboard players operation #chunks_x16 supermc = #chunks supermc
scoreboard players operation #chunks_x16 supermc *= #const_16 supermc
scoreboard players operation #tmp_pos_x supermc = #gpos_x supermc
scoreboard players operation #tmp_pos_z supermc = #gpos_z supermc
scoreboard players operation #tmp_pos_x supermc %= #chunks_x16 supermc
scoreboard players operation #tmp_pos_z supermc %= #chunks_x16 supermc
scoreboard players operation #gpos_x supermc -= #tmp_pos_x supermc
scoreboard players operation #gpos_z supermc -= #tmp_pos_z supermc
scoreboard players set #tmp_pos_x supermc 0
scoreboard players set #tmp_pos_z supermc 0
scoreboard players set #chunks_x16 supermc 0
scoreboard players set #gpos_y supermc 0
summon armor_stand ~ 0 ~ {Tags:["SmcGenService"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b}
execute as @e[tag=SmcGenService] run summon armor_stand ~ 0 ~ {Tags:["SmcTpAgent"],Invisible:1}
execute as @e[tag=SmcGenService] run execute store result entity @e[tag=SmcTpAgent,limit=1] Pos[0] double 1 run scoreboard players get #gpos_x supermc
execute as @e[tag=SmcGenService] run execute store result entity @e[tag=SmcTpAgent,limit=1] Pos[1] double 1 run scoreboard players get #gpos_y supermc
execute as @e[tag=SmcGenService] run execute store result entity @e[tag=SmcTpAgent,limit=1] Pos[2] double 1 run scoreboard players get #gpos_z supermc
execute as @e[tag=SmcGenService] run tp @e[tag=SmcTpAgent,limit=1]
execute as @e[tag=SmcGenService] run kill @e[tag=SmcTpAgent,limit=1]

execute as @e[tag=SmcGenService] at @s run scoreboard players set #tmp_agen supermc 0
execute as @e[tag=SmcGenService] at @s positioned ~-64 ~ ~-64 run function supermc:area_gen
kill @e[tag=SmcGenService]
