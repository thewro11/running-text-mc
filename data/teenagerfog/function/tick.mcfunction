execute positioned as @e[tag=runner_lectern] unless data block ~ ~ ~ Book run data modify storage teenagerfog:text_runner current_page set value -1

execute positioned as @e[tag=runner_lectern] unless block ~ ~ ~ lectern run function teenagerfog:lectern/kill
execute positioned as @e[tag=book_chest] unless block ~ ~ ~ chest run function teenagerfog:chest/kill

execute unless entity @e[tag=book_chest] run return 0
execute unless entity @e[tag=runner_lectern] run return 0

execute positioned as @e[tag=runner_lectern] store success score is_same_page return_value run data modify storage teenagerfog:text_runner current_page set from block ~ ~ ~ Page

execute if score is_same_page return_value matches 0 run return 0

execute positioned as @e[tag=runner_lectern] run data modify storage teenagerfog:text_runner current_page set from block ~ ~ ~ Page
execute positioned as @e[tag=runner_lectern] run function teenagerfog:lectern/bookdata/clear
execute positioned as @e[tag=runner_lectern] run function teenagerfog:lectern/bookdata/run with storage teenagerfog:text_runner

scoreboard players set is_same_page return_value 0
