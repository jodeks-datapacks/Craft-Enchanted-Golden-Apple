#> craft_enchanted_golden_apple:image/process/generate
#
# This function generates the image data.

data modify storage craft_enchanted_golden_apple:image data.current.image_data set from storage craft_enchanted_golden_apple:image data.image_data
data modify storage craft_enchanted_golden_apple:image data.current.description set from storage craft_enchanted_golden_apple:image data.description
data modify storage craft_enchanted_golden_apple:image data.current.pixel_character set from storage craft_enchanted_golden_apple:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data craft_enchanted_golden_apple.image 0
# Set width
execute store result score $width craft_enchanted_golden_apple.image run data get storage craft_enchanted_golden_apple:image data.width
# Set height
execute store result score $height craft_enchanted_golden_apple.image run data get storage craft_enchanted_golden_apple:image data.height
# Set length
scoreboard players operation $length craft_enchanted_golden_apple.image = $width craft_enchanted_golden_apple.image
scoreboard players operation $length craft_enchanted_golden_apple.image *= $height craft_enchanted_golden_apple.image
# Clear remaining entries in tellraw
data remove storage craft_enchanted_golden_apple:image data.tellraw

# Add spacing on top
function craft_enchanted_golden_apple:image/process/append/line_break
# Loop over image data
function craft_enchanted_golden_apple:image/process/loop_over_image_data
# Add spacing on bottom
function craft_enchanted_golden_apple:image/process/append/line_break