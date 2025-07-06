# MACRO ARGUMENTS: { book_page_index: int }

# RECURSIVE RETURN CASE
execute if score book_page_index loop_counter >= end_book_page_index loop_counter run return 0

$data modify block ~ ~ ~ Book.components.minecraft:writable_book_content.pages[$(book_page_index)].raw set value ""

# LOOP INCREMENTAL
scoreboard players operation book_page_index loop_counter += INCREMENT loop_counter
execute store result storage teenagerfog:text_runner.loop.clear book_page_index int 1 run scoreboard players get book_page_index loop_counter

# RECURSIVE CALL
return run function teenagerfog:lectern/bookdata/clear_recursion with storage teenagerfog:text_runner.loop.clear
