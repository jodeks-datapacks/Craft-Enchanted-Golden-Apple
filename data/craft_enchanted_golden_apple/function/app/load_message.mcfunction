#> craft_enchanted_golden_apple:app/load_message
# Called on load

execute if score &craft_enchanted_golden_apple_load_message jodek.config matches 1 run tellraw @a [\
  {\
    "text": "[",\
    "color": "#aaaaaa"\
  },\
  {\
    "text": "Craft Enchanted Golden Apple",\
    color: "#ffffff",\
    "hover_event": {\
      "action": "show_text",\
      "value": [\
        {\
          "nbt":"tellraw[]",\
          "storage": "craft_enchanted_golden_apple:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/craft-enchanted-golden-apple/"\
    }\
  },\
  {\
    text: "]",\
    color: "#aaaaaa",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "craft_enchanted_golden_apple:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/craft-enchanted-golden-apple/"\
    }\
  },\
  {\
    translate: "jodek.loaded", fallback: " loaded! ",\
    color: "#ffffff",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "craft_enchanted_golden_apple:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/craft-enchanted-golden-apple/"\
    }\
  },\
  {\
    translate: "jodek.hover_for_more_info", fallback: "hover for more info",\
    color: "#929796",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "craft_enchanted_golden_apple:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/craft-enchanted-golden-apple/"\
    }\
  }\
]