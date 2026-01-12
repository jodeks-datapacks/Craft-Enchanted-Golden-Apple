# Append blank
function craftenchgoldenapple:image/process/append/blank

data modify storage craftenchgoldenapple:image tellraw append \
  from storage craftenchgoldenapple:image current.description_text

# Append blank
function craftenchgoldenapple:image/process/append/blank

# Append line_break
execute unless score $index.image_data craftenchgoldenapple.image = $length craftenchgoldenapple.image \
  run function craftenchgoldenapple:image/process/append/line_break

# Remove first element from the description
data remove storage craftenchgoldenapple:image current.description[0]
 