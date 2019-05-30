scoreboard players operation #blockid supermc = #dropid supermc
function supermc:gencitem
execute if score #droptype supermc matches 1 as @e[type=item,nbt={Item:{tag:{SmcDropAgent:{}}}}] at @s run data modify entity @e[tag=SmcItemGen,limit=1,sort=nearest] Item.tag.EntityTag.Item.tag.BlockData set from entity @s Item.tag.SmcDropAgent.BlockData
execute if score #droptype supermc matches 2 as @e[type=armor_stand,tag=SmcInteractableRender,limit=1,sort=nearest] at @s run data modify entity @e[tag=SmcItemGen,limit=1,sort=nearest] Item.tag.EntityTag.Item.tag.BlockData set from entity @s HandItems[1].tag.BlockData
