execute store result score total_pages return_value positioned as @e[tag=book_chest] run data get block ~ ~ ~ Items[{id:"minecraft:writable_book"}].components.minecraft:writable_book_content.pages
scoreboard players operation end_book_page_index loop_counter = total_pages return_value
execute store result storage teenagerfog:text_runner.loop.clear end_book_page_index int 1 run scoreboard players get end_book_page_index loop_counter

scoreboard players operation book_page_index loop_counter = START_BOOK_PAGE_INDEX loop_counter
execute store result storage teenagerfog:text_runner.loop.clear book_page_index int 1 run scoreboard players get book_page_index loop_counter

function teenagerfog:lectern/bookdata/clear_recursion with storage teenagerfog:text_runner.loop.clear
