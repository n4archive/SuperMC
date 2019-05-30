scoreboard players set #tmp_ageno supermc 1
function supermc:area_gen_util
scoreboard players add #tmp_agen supermc 1
execute if score #tmp_agen supermc <= #chunk_max supermc positioned ~64 ~ ~ run function supermc:area_gen
