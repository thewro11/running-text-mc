scoreboard objectives add return_value dummy
scoreboard players set is_same_page return_value 0

scoreboard objectives add loop_counter dummy
scoreboard players set INCREMENT loop_counter 1

scoreboard players set book_page_index loop_counter 0
scoreboard players set START_BOOK_PAGE_INDEX loop_counter 0
scoreboard players set end_book_page_index loop_counter -1

scoreboard players set char_index loop_counter 1
scoreboard players set START_CHAR_INDEX loop_counter 1
scoreboard players set end_char_index loop_counter -1

data modify storage teenagerfog:text_runner current_page set value -1
