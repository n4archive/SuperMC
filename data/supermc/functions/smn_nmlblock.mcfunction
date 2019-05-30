setblock ~ ~ ~ spawner
data merge block ~ ~ ~ {RequiredPlayerRange:0s,SpawnData:{id:armor_stand,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:item_frame,Count:1b}]}}
data modify block ~ ~ ~ SpawnData.ArmorItems[3].tag set from entity @e[sort=nearest,limit=1,tag=SmcInteractableRender,distance=..1] HandItems[1].tag
kill @e[sort=nearest,limit=1,tag=SmcInteractableRender,distance=..1]
