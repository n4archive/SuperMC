summon minecraft:armor_stand ~ ~ ~ {Tags:["SmcInteractableRender","SmcInteractableRenderSetup"],Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{},{id:item_frame,Count:1b,tag:{}}]}
data modify entity @e[tag=SmcInteractableRenderSetup,limit=1,distance=..1,sort=nearest] HandItems[1].tag set from block ~ ~ ~ SpawnData.ArmorItems[3].tag
execute as @e[tag=SmcInteractableRenderSetup,limit=1,sort=nearest] at @s run setblock ~ ~ ~ chest[type=left]
execute as @e[tag=SmcInteractableRenderSetup,limit=1,sort=nearest] at @s run data modify block ~ ~ ~ Items set from entity @s HandItems[1].tag.InteractChestInv
execute as @e[tag=SmcInteractableRenderSetup,limit=1,sort=nearest] at @s run data modify block ~ ~ ~ CustomName set from entity @s HandItems[1].tag.InteractChestName
tag @e[tag=SmcInteractableRenderSetup] remove SmcInteractableRenderSetup
