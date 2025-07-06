# MACRO ARGUMENTS: { char_index: int, current_page: int, book_chest_coords_x: double, book_chest_coords_y: double, book_chest_coords_z: double }

# RECURSIVE RETURN CASE
execute if score char_index loop_counter > end_char_index loop_counter run return 0

$data modify block ~ ~ ~ Book.components.minecraft:writable_book_content.pages[$(current_page)].raw set string block $(book_chest_coords_x) $(book_chest_coords_y) $(book_chest_coords_z) Items[{id:"minecraft:writable_book"}].components.minecraft:writable_book_content.pages[$(current_page)].raw 0 $(char_index)

# LOOP INCREMENTAL
scoreboard players operation char_index loop_counter += INCREMENT loop_counter
execute store result storage teenagerfog:text_runner.loop.run char_index int 1 run scoreboard players get char_index loop_counter

# RECURSIVE CALL
schedule function teenagerfog:lectern/bookdata/start_run_recursion 2t append
