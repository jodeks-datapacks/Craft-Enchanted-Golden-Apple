# Copy current pixel
data modify storage craftenchgoldenapple:image current.pixel_color set \
  from storage craftenchgoldenapple:image current.image_data[0]
data modify storage craftenchgoldenapple:image current.description_text set \
  from storage craftenchgoldenapple:image current.description[0]

scoreboard players add $index.image_data craftenchgoldenapple.image 1

# Calculate column
scoreboard players operation $index.column craftenchgoldenapple.image = $index.image_data craftenchgoldenapple.image
scoreboard players operation $index.column craftenchgoldenapple.image %= $width craftenchgoldenapple.image

# Calculate row
scoreboard players operation $index.row craftenchgoldenapple.image = $index.image_data craftenchgoldenapple.image
scoreboard players operation $index.row craftenchgoldenapple.image /= $width craftenchgoldenapple.image

# Append start spacing
execute if score $index.column craftenchgoldenapple.image matches 1 run \
  function craftenchgoldenapple:image/process/append/blank

# Append colored pixel
execute unless data storage craftenchgoldenapple:image current{pixel_color: ''} run \
  function craftenchgoldenapple:image/process/append/pixel
# Append background pixel
execute if data storage craftenchgoldenapple:image current{pixel_color: ''} run \
  function craftenchgoldenapple:image/process/append/background

# Append description
execute if score $index.column craftenchgoldenapple.image matches 0 run \
    function craftenchgoldenapple:image/process/image_end/description

# Remove first element from the image_data array
data remove storage craftenchgoldenapple:image current.image_data[0]
# Loop over rows
execute if score $index.row craftenchgoldenapple.image < $height craftenchgoldenapple.image run \
  function craftenchgoldenapple:image/process/loop_over_image_data
 