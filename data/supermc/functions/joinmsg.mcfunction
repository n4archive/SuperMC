execute as @a at @s unless entity @s[scores={supermc=1}] unless entity @s[scores={supermc=2}] run tag @s add SmcJoinMsg_fjoin
execute as @a[tag=SmcJoinMsg_fjoin] at @s run scoreboard players set @s supermc 1
execute as @a[scores={supermc=2}] at @s run tag @s add SmcJoinMsg_back
execute as @a[tag=SmcJoinMsg_back] at @s run scoreboard players set @s supermc 1
execute as @a[tag=SmcJoinMsg_fjoin] at @s run function #supermc:playerfirstjoin
execute as @a[tag=SmcJoinMsg_back] at @s run function #supermc:playerisback
execute as @a[tag=SmcJoinMsg_back] at @s run function #supermc:playerjoin
execute as @a[tag=SmcJoinMsg_fjoin] at @s run function #supermc:playerjoin
tag @a[tag=SmcJoinMsg_back] remove SmcJoinMsg_back
tag @a[tag=SmcJoinMsg_fjoin] remove SmcJoinMsg_fjoin
