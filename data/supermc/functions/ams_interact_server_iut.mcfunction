summon item_frame ~ 0 ~ {Tags:["SmcRenderSetupUtil"]}
execute at @e[tag=SmcRenderSetupUtil] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Tags:["SmcRenderSetupUtil"]}
kill @e[tag=SmcRenderSetupUtil,type=item_frame]
execute store result score #wgen_util_y supermc run data get entity @s Pos[1] 1
execute as @e[type=armor_stand,tag=SmcRenderSetupUtil,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get #wgen_util_y supermc
execute at @e[tag=SmcRenderSetupUtil] positioned ~-8 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~-7 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~-6 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~-5 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~-4 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~-3 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~-2 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~-1 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~0 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~1 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~2 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~3 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~4 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~5 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~6 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~7 ~ ~ run function supermc:ams_interact_server_util
execute at @e[tag=SmcRenderSetupUtil] positioned ~8 ~ ~ run function supermc:ams_interact_server_util
kill @e[tag=SmcRenderSetupUtil]
