execute unless block ~ 0 ~ command_block run function supermc:gen_here
scoreboard players add #tmp_ageno supermc 1
execute if score #tmp_ageno supermc <= #chunk_max supermc positioned ~ ~ ~64 run function supermc:area_gen_util
