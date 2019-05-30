setblock ~ ~ ~ spawner
data merge block ~ ~ ~ {RequiredPlayerRange:0s,SpawnData:{id:armor_stand,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:item_frame,Count:1b}]}}
function supermc:gencitem
execute as @e[tag=SmcItemGen,sort=nearest,limit=1] at @s run data modify block ~ ~ ~ SpawnData.ArmorItems[3].tag merge from entity @s Item.tag.EntityTag.Item.tag
execute as @e[tag=SmcItemGen,sort=nearest,limit=1] at @s run kill @s
