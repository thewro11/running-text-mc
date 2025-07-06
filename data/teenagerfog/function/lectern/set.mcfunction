execute if entity @e[tag=runner_lectern] run return run function teenagerfog:exception/lectern_existing

execute unless block ~ ~ ~ lectern run return run function teenagerfog:exception/lectern_not_found

summon marker ~ ~ ~ {Tags:[runner_lectern]}

tellraw @s {"text": "Running lectern is set up successfully.", "color": "green"}
