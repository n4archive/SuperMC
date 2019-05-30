summon item ~ ~ ~ {Tags:["SmcItemGen"],Item:{id:item_frame,Count:1b,tag:{CustomModelData:0,EntityTag:{Tags:["SmcBlockPlaceAgent"],Item:{id:item_frame,Count:1b,tag:{CustomModelData:0}}}}}}
scoreboard players set #action supermc 1
execute as @e[tag=SmcItemGen,limit=1,sort=nearest] at @s run function #supermc:itemdefs
execute as @e[tag=SmcItemGen,limit=1,sort=nearest] at @s store result entity @s Item.tag.EntityTag.Item.tag.BlockId int 1 run scoreboard players get #blockid supermc
execute as @e[tag=SmcItemGen,limit=1,sort=nearest] at @s store result entity @s Item.tag.EntityTag.Item.tag.CustomModelData int 1 run data get entity @s Item.tag.BlockModelData
execute as @e[tag=SmcItemGen,limit=1,sort=nearest] at @s store result entity @s Item.tag.EntityTag.Item.tag.Interactable int 1 run data get entity @s Item.tag.Interactable
execute as @e[tag=SmcItemGen,limit=1,sort=nearest] at @s run data modify entity @s Item.tag.EntityTag.Item.tag.BlockData set from entity @s Item.tag.BlockData
execute as @e[tag=SmcItemGen,limit=1,sort=nearest] at @s run data modify entity @s Item.tag.EntityTag.Item.tag.InteractChestInv set from entity @s Item.tag.InteractChestInv
execute as @e[tag=SmcItemGen,limit=1,sort=nearest] at @s run data modify entity @s Item.tag.EntityTag.Item.tag.InteractChestName set from entity @s Item.tag.InteractChestName
scoreboard players set #blockid supermc 0
scoreboard players set #action supermc 0
