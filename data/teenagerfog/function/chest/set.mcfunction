execute if entity @e[tag=book_chest] run return run function teenagerfog:exception/chest_existing

execute unless block ~ ~ ~ chest run return run function teenagerfog:exception/chest_not_found

summon marker ~ ~ ~ {Tags:[book_chest]}

tellraw @s {"text": "Chest storing book & quill is set up successfully.", "color": "green"}
