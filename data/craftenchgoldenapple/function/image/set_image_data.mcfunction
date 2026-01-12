#> craftenchgoldenapple:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage craftenchgoldenapple:image image_data  
# @writes storage craftenchgoldenapple:image width  
# @writes storage craftenchgoldenapple:image height  
# @writes storage craftenchgoldenapple:image background_color  
# @writes storage craftenchgoldenapple:image description  
# @writes storage craftenchgoldenapple:image pixel_character.blank  
# @writes storage craftenchgoldenapple:image pixel_character.chat  
# @writes storage craftenchgoldenapple:image pixel_character.lore

data remove storage craftenchgoldenapple:image image_data
data remove storage craftenchgoldenapple:image width
data remove storage craftenchgoldenapple:image height
data remove storage craftenchgoldenapple:image background_color
data remove storage craftenchgoldenapple:image description

$data modify storage craftenchgoldenapple:image image_data set value $(image_data)
$data modify storage craftenchgoldenapple:image width set value $(width)
$data modify storage craftenchgoldenapple:image height set value $(height)
$data modify storage craftenchgoldenapple:image background_color set value "$(background_color)"
$data modify storage craftenchgoldenapple:image description set value $(description)

data modify storage craftenchgoldenapple:image pixel_character.blank set value "　"
data modify storage craftenchgoldenapple:image pixel_character.pixel set value "▌▌"
data modify storage craftenchgoldenapple:image pixel_character.line_break set value '\n'

function craftenchgoldenapple:image/process/generate
