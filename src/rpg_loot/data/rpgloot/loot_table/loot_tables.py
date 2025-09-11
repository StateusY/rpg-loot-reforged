import json
from pathlib import Path

# Base output folder relative to script location
BASE_DIR = Path(__file__).parent
OUTPUT_DIR = BASE_DIR / "items"

# === MATERIALS ===
materials = [
    {
        "name": "Wooden", "type": "item_only",
        "damage_value": 2, "tool_value": 2, "armor_value": 0, "durability": 64,
        "weapon_events": '[{"name":"wooden_sword","source": "weapon", "listen": "hit", "command": "function rpgloot:items/basic/wood/sword/hit"}]',
        "bow_events": '[{"name": "wooden_bow", "source": "weapon", "listen": "bow_impact", "command": "function rpgloot:items/basic/wood/bow/impact"}]'
    },
    {
        "name": "Leather", "type": "armor_only",
        "damage_value": 1, "tool_value": 1, "armor_value": 48, "durability": 64,
        "armor_events": '[{"source": "armor", "listen": "hit", "command": "function rpgloot:items/basic/leather/armor/hit"}]'
    },
    {
        "name": "Iron", "type": "both",
        "damage_value": 3, "tool_value": 3, "armor_value": 0, "durability": 128,
        "weapon_events": '[{"source": "sword", "listen": "hit", "command": "function rpgloot:items/basic/iron/sword/hit"}]'
    }
]

# === RARITIES ===
tier_increase = {
    "common": 1.0,
    "uncommon": 1.25,
    "rare": 1.25,
    "epic": 1.5,
    "legendary": 2.0
}

def compute_cumulative_multipliers():
    cumulative = {}
    prev = 1.0
    for tier in ["common", "uncommon", "rare", "epic", "legendary"]:
        cumulative[tier] = prev * tier_increase[tier]
        prev = cumulative[tier]
    return cumulative

cumulative_multipliers = compute_cumulative_multipliers()

rarities = {
    "common": {"multiplier": cumulative_multipliers["common"], "color": "gray"},
    "uncommon": {"multiplier": cumulative_multipliers["uncommon"], "color": "green"},
    "rare": {"multiplier": cumulative_multipliers["rare"], "color": "blue"},
    "epic": {"multiplier": cumulative_multipliers["epic"], "color": "dark_purple"},
    "legendary": {"multiplier": cumulative_multipliers["legendary"], "color": "gold"},
}

# === ITEM CATEGORIES ===
WEAPONS = ["sword", "bow"]
TOOLS = ["axe", "pickaxe", "shovel", "hoe"]
ARMORS = ["helmet", "chestplate", "leggings", "boots"]

# === VANILLA PLACEHOLDER ITEM MAPPING ===
def get_vanilla_placeholder(material_name, item_type):
    if item_type in WEAPONS:
        return "minecraft:bow" if item_type == "bow" else "minecraft:iron_sword"
    elif item_type in TOOLS:
        return f"minecraft:iron_{item_type}"
    elif item_type in ARMORS:
        return f"minecraft:iron_{item_type}"
    else:
        return "minecraft:stone"

# === GENERATOR FUNCTION ===
def generate_loot_table(material, rarity, rarity_data, item_type):
    generators = {
        "sword": generate_sword, "bow": generate_bow,
        "axe": generate_tool, "pickaxe": generate_tool, "shovel": generate_tool, "hoe": generate_tool,
        "helmet": generate_armor, "chestplate": generate_armor, "leggings": generate_armor, "boots": generate_armor
    }
    return generators[item_type](material, rarity, rarity_data, item_type)

# === PER-ITEM METHODS ===
def generate_sword(material, rarity, rarity_data, item_type):
    damage = material.get("damage_value", 0) * rarity_data["multiplier"]
    durability = int(material.get("durability", 1) * rarity_data["multiplier"])
    color = rarity_data["color"]
    tag_string = f'{{rpgc:true,events:{material.get("weapon_events","[]")},attributes:[{{id:physical_dmg,name:{material["name"].lower()}_sword,source:weapon,type:add,value:{damage}}}]}}'
    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:weapon", durability)

def generate_bow(material, rarity, rarity_data, item_type):
    durability = int(material.get("durability", 1) * rarity_data["multiplier"])
    color = rarity_data["color"]
    tag_string = f'{{rpgc:true,events:{material.get("bow_events","[]")}}}'
    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:bow", durability)

def generate_tool(material, rarity, rarity_data, item_type):
    # 75% damage reduction for all tools
    base_damage = material.get("damage_value", 0) * 0.25
    damage = base_damage * rarity_data["multiplier"]
    durability = int(material.get("durability", 1) * rarity_data["multiplier"])
    tool_speed = material.get("tool_value", 1) * rarity_data["multiplier"]
    color = rarity_data["color"]
    
    tag_string = f'{{rpgc:true,events:{material.get("weapon_events","[]")},attributes:[{{id:physical_dmg,name:{material["name"].lower()}_{item_type},source:weapon,type:add,value:{damage}}}]}}'

    # Pickaxe gets minecraft:tool component
    extra_components = {}
    if item_type == "pickaxe":
        extra_components["minecraft:tool"] = {
            "rules": [
                {"blocks": f"#rpgloot:tools/{material['name'].lower()}", "speed": tool_speed, "correct_for_drops": False},
                {"blocks": "#minecraft:mineable/pickaxe", "speed": tool_speed, "correct_for_drops": True}
            ],
            "default_mining_speed": 1,
            "damage_per_block": 1
        }

    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:weapon", durability, extra_components=extra_components)

def generate_armor(material, rarity, rarity_data, item_type):
    armor_val = material.get("armor_value", 0) * rarity_data["multiplier"]
    durability = int(material.get("durability", 1) * rarity_data["multiplier"])
    color = rarity_data["color"]
    tag_string = f'{{rpgc:true,events:{material.get("armor_events","[]")}}}'
    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:armor", durability)

# Helper to create loot table entry
def create_loot_entry(material, rarity, color, item_type, tag_string, enchantment_type, durability, extra_components=None):
    item_name = get_vanilla_placeholder(material["name"], item_type)
    name_component = [
        {"selector": "@s", "color": color, "italic": False},
        {"text": f"'s {rarity.capitalize()} {material['name']} {item_type.capitalize()}",
         "color": color, "italic": False}
    ]

    # Components including max damage
    components = {"minecraft:max_damage": durability}
    if extra_components:
        components.update(extra_components)

    return {
        "pools": [{
            "rolls": 1,
            "entries": [{
                "type": "minecraft:item",
                "name": item_name,
                "functions": [
                    {"function": "minecraft:set_name", "entity": "this", "name": name_component},
                    {"function": "minecraft:set_custom_data", "tag": tag_string},
                    {"function": "minecraft:set_enchantments", "enchantments": {enchantment_type: 1}},
                    {"function": "minecraft:set_components", "components": components}
                ]
            }]
        }]
    }

# === FILE WRITER ===
def save_loot_table(material, rarity, item_type, loot):
    if item_type in WEAPONS:
        folder = OUTPUT_DIR / "weapon" / rarity
    elif item_type in TOOLS:
        folder = OUTPUT_DIR / "tool" / rarity
    elif item_type in ARMORS:
        folder = OUTPUT_DIR / "armor" / rarity
    else:
        folder = OUTPUT_DIR / "misc" / rarity

    folder.mkdir(parents=True, exist_ok=True)
    filename = folder / f"{material['name'].lower()}_{item_type}.json"
    with open(filename, "w") as f:
        json.dump(loot, f, indent=2)

# === MAIN ===
def main():
    for material in materials:
        mat_type = material.get("type", "both")
        if mat_type == "item_only":
            item_types = WEAPONS + TOOLS
        elif mat_type == "armor_only":
            item_types = ARMORS
        else:
            item_types = WEAPONS + TOOLS + ARMORS

        for rarity, rarity_data in rarities.items():
            for item_type in item_types:
                loot = generate_loot_table(material, rarity, rarity_data, item_type)
                save_loot_table(material, rarity, item_type, loot)

    print("Loot tables generated in the script folder!")

if __name__ == "__main__":
    main()
