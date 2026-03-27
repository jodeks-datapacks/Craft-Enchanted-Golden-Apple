# Append blank
function craft_enchanted_golden_apple:image/process/append/blank

data modify storage craft_enchanted_golden_apple:image data.tellraw append \
  from storage craft_enchanted_golden_apple:image data.current.description_text

# Append blank
function craft_enchanted_golden_apple:image/process/append/blank

# Append line_break
execute unless score $index.image_data craft_enchanted_golden_apple.image = $length craft_enchanted_golden_apple.image \
  run function craft_enchanted_golden_apple:image/process/append/line_break

# Remove first element from the description
data remove storage craft_enchanted_golden_apple:image data.current.description[0]
 