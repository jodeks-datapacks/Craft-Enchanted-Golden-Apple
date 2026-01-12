#> craftenchgoldenapple:image/process/generate
#
# This function generates the image data.

data modify storage craftenchgoldenapple:image current.image_data set from storage craftenchgoldenapple:image image_data
data modify storage craftenchgoldenapple:image current.description set from storage craftenchgoldenapple:image description
data modify storage craftenchgoldenapple:image current.pixel_character set from storage craftenchgoldenapple:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data craftenchgoldenapple.image 0
# Set width
execute store result score $width craftenchgoldenapple.image run data get storage craftenchgoldenapple:image width
# Set height
execute store result score $height craftenchgoldenapple.image run data get storage craftenchgoldenapple:image height
# Set length
scoreboard players operation $length craftenchgoldenapple.image = $width craftenchgoldenapple.image
scoreboard players operation $length craftenchgoldenapple.image *= $height craftenchgoldenapple.image
# Clear remaining entries in tellraw
data remove storage craftenchgoldenapple:image tellraw

# Add spacing on top
function craftenchgoldenapple:image/process/append/line_break
# Loop over image data
function craftenchgoldenapple:image/process/loop_over_image_data
# Add spacing on bottom
function craftenchgoldenapple:image/process/append/line_break