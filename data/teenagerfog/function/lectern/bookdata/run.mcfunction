# MACRO ARGUMENTS: { current_page: int }

schedule clear teenagerfog:lectern/bookdata/start_run_recursion

$execute store result score total_chars return_value positioned as @e[tag=book_chest] run data get block ~ ~ ~ Items[{id:"minecraft:writable_book"}].components.minecraft:writable_book_content.pages[$(current_page)].raw
scoreboard players operation end_char_index loop_counter = total_chars return_value
execute store result storage teenagerfog:text_runner.loop.run end_char_index int 1 run scoreboard players get end_char_index loop_counter

scoreboard players operation char_index loop_counter = START_CHAR_INDEX loop_counter
execute store result storage teenagerfog:text_runner.loop.run char_index int 1 run scoreboard players get char_index loop_counter

$data modify storage teenagerfog:text_runner.loop.run current_page set value $(current_page)

execute store result score axis return_value run data get entity @e[tag=book_chest,limit=1] Pos[0]
execute store result storage teenagerfog:text_runner.loop.run book_chest_coords_x int 1 run scoreboard players get axis return_value

execute store result score axis return_value run data get entity @e[tag=book_chest,limit=1] Pos[1]
execute store result storage teenagerfog:text_runner.loop.run book_chest_coords_y int 1 run scoreboard players get axis return_value

execute store result score axis return_value run data get entity @e[tag=book_chest,limit=1] Pos[2]
execute store result storage teenagerfog:text_runner.loop.run book_chest_coords_z int 1 run scoreboard players get axis return_value

schedule function teenagerfog:lectern/bookdata/start_run_recursion 2t append
