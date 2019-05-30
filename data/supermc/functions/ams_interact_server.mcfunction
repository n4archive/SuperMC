execute as @a at @s run function supermc:ams_interact_server_iut
execute as @e[tag=SmcInteractableRender] at @s unless entity @a[distance=..14] run function supermc:smn_nmlblock
execute as @e[tag=SmcInteractableRender] at @s if block ~ ~ ~ air run function supermc:ams_drop_server_imode
execute as @e[tag=SmcInteractableRender] at @s run data merge entity @s {OnFire:100s}
