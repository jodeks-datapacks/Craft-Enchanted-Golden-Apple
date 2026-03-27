scoreboard objectives add jodek.config dummy
execute unless score &craft_enchanted_golden_apple_load_message jodek.config = &craft_enchanted_golden_apple_load_message jodek.config run scoreboard players set &craft_enchanted_golden_apple_load_message jodek.config 1
execute unless score &craft_enchanted_golden_apple_advancements jodek.config = &craft_enchanted_golden_apple_advancements jodek.config run scoreboard players set &craft_enchanted_golden_apple_advancements jodek.config 1

scoreboard objectives add craft_enchanted_golden_apple.image dummy

# Print the image
function craft_enchanted_golden_apple:config/image