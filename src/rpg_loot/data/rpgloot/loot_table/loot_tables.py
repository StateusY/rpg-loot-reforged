import json
from pathlib import Path

# Base output folder relative to script location
BASE_DIR = Path(__file__).parent
OUTPUT_DIR = BASE_DIR / "items"

materials = [
    {
        "name": "Wood",
        "type": "item_only",
        "damage_value": 4,
        "bow_value": 2,
        "tool_speed": 1,
        "armor_value": 0,
        "durability": 64,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[{"name":"wooden_sword","source": "weapon", "listen": "hit", "command": "function rpgloot:items/basic/wood/sword/hit"}]',
        "bow_events": '[{"name": "wooden_bow", "source": "weapon", "listen": "bow_impact", "command": "function rpgloot:items/basic/wood/bow/impact"}]',
        "armor_events": '[]'
    },
    {
        "name": "Stone",
        "type": "both",
        "damage_value": 6,
        "bow_value": 3,
        "tool_speed": 1.2,
        "armor_value": 1,
        "durability": 128,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Copper",
        "type": "both",
        "damage_value": 8,
        "bow_value": 4,
        "tool_speed": 1.5,
        "armor_value": 2,
        "durability": 160,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Iron",
        "type": "both",
        "damage_value": 10,
        "bow_value": 5,
        "tool_speed": 1.75,
        "armor_value": 3,
        "durability": 256,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Silver",
        "type": "both",
        "damage_value": 14,
        "bow_value": 6,
        "tool_speed": 2.0,
        "armor_value": 4,
        "durability": 384,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Diamond",
        "type": "both",
        "damage_value": 18,
        "bow_value": 8,
        "tool_speed": 2.25,
        "armor_value": 5,
        "durability": 1024,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Titanium",
        "type": "both",
        "damage_value": 22,
        "bow_value": 10,
        "tool_speed": 2.5,
        "armor_value": 6,
        "durability": 2048,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Cobalt",
        "type": "both",
        "damage_value": 30,
        "bow_value": 12,
        "tool_speed": 2.75,
        "armor_value": 7,
        "durability": 4096,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Magnite",
        "type": "both",
        "damage_value": 38,
        "bow_value": 15,
        "tool_speed": 3.0,
        "armor_value": 8,
        "durability": 6000,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Netherite",
        "type": "both",
        "damage_value": 46,
        "bow_value": 18,
        "tool_speed": 3.25,
        "armor_value": 10,
        "durability": 8000,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Mythril",
        "type": "both",
        "damage_value": 54,
        "bow_value": 20,
        "tool_speed": 3.5,
        "armor_value": 13.5,
        "durability": 10000,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Celestium",
        "type": "both",
        "damage_value": 64,
        "bow_value": 25,
        "tool_speed": 4.0,
        "armor_value": 15,
        "durability": 12000,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Eternium",
        "type": "both",
        "damage_value": 64,
        "bow_value": 25,
        "tool_speed": 4.0,
        "armor_value": 15,
        "durability": 12000,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    }
]


# === RARITIES ===
rarity_base = {
    "common": 1.0,
    "uncommon": 1.25,
    "rare": 1.5,
    "epic": 2.0,
    "legendary": 3.0
}

rarities = {
    "common": {"color": "gray"},
    "uncommon": {"color": "green"},
    "rare": {"color": "blue"},
    "epic": {"color": "dark_purple"},
    "legendary": {"color": "gold"},
}

# Weakness scaling helper
min_dmg = min(m["damage_value"] for m in materials)
max_dmg = max(m["damage_value"] for m in materials)

def weakness_factor(base):
    return (max_dmg - base) / (max_dmg - min_dmg) if max_dmg != min_dmg else 0

def rarity_multiplier(base, rarity):
    base_mult = rarity_base[rarity]
    w = weakness_factor(base)
    # doubled intensity scaling
    effective_mult = 1 + (base_mult - 1) * (1 + w * 2)
    return effective_mult

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
def generate_loot_table(material, rarity, item_type):
    generators = {
        "sword": generate_sword, "bow": generate_bow,
        "axe": generate_tool, "pickaxe": generate_tool, "shovel": generate_tool, "hoe": generate_tool,
        "helmet": generate_armor, "chestplate": generate_armor, "leggings": generate_armor, "boots": generate_armor
    }
    return generators[item_type](material, rarity, item_type)

# === PER-ITEM METHODS ===
def generate_sword(material, rarity, item_type):
    base = material.get("damage_value", 0)
    mult = rarity_multiplier(base, rarity)
    damage = base * mult
    durability = int(material.get("durability", 1) * mult)
    color = rarities[rarity]["color"]
    tag_string = f'{{rpgc:true,attributes:[{{id:physical_dmg,name:{material["name"].lower()}_sword,source:weapon,type:add,value:{damage}}}]}}'
    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:weapon", durability)

def generate_bow(material, rarity, item_type):
    base = material.get("bow_value", material.get("damage_value", 0) / 2)
    mult = rarity_multiplier(base, rarity)
    damage = base * mult
    durability = int(material.get("durability", 1) * mult)
    color = rarities[rarity]["color"]
    tag_string = f'{{rpgc:true,bow:{material.get("bow","{}")},attributes:[{{id:ranged_dmg,name:{material["name"].lower()}_bow,source:weapon,type:add,value:{damage}}}]}}'
    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:bow", durability)

def generate_tool(material, rarity, item_type):
    base = material.get("damage_value", 0) * 0.25
    mult = rarity_multiplier(base, rarity)
    damage = base * mult
    durability = int(material.get("durability", 1) * mult)
    tool_speed = material.get("tool_speed", 1)
    color = rarities[rarity]["color"]

    tag_string = f'{{rpgc:true,attributes:[{{id:tool_dmg,name:{material["name"].lower()}_{item_type},source:weapon,type:add,value:{damage}}}]}}'

    extra_components = {}
    if item_type == "pickaxe":
        extra_components["minecraft:tool"] = {
            "rules": [
                {"blocks": f"#rpgloot:tools/{material['name'].lower()}", "speed": 0.1, "correct_for_drops": False},
                {"blocks": "#minecraft:mineable/pickaxe", "speed": tool_speed, "correct_for_drops": True}
            ],
            "default_mining_speed": 1,
            "damage_per_block": 1
        }

    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:weapon", durability, extra_components)

def generate_armor(material, rarity, item_type):
    base = material.get("armor_value", 0)
    mult = rarity_multiplier(base if base > 0 else material["damage_value"], rarity)
    armor_val = base * mult
    durability = int(material.get("durability", 1) * mult)
    color = rarities[rarity]["color"]

    slot_map = {
        "helmet": "head",
        "chestplate": "chest",
        "leggings": "legs",
        "boots": "feet"
    }
    slot = slot_map.get(item_type)

    tag_string = (
        f'{{rpgc:true,id:{rarity}_{material["name"].lower()}_{item_type},'
        f'attributes:[{{id:armor,name:{material["name"].lower()}_{item_type},'
        f'source:{slot},type:add,value:{armor_val}}}]}}'
    )

    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:armor", durability)

# === Helper to create loot table entry ===
def create_loot_entry(material, rarity, color, item_type, tag_string, enchantment_type, durability, extra_components=None):
    item_name = get_vanilla_placeholder(material["name"], item_type)
    name_component = [
        {"selector": "@s", "color": color, "italic": False},
        {"text": f"'s {rarity.capitalize()} {material['name']} {item_type.capitalize()}",
         "color": color, "italic": False}
    ]

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

        for rarity in rarities:
            for item_type in item_types:
                loot = generate_loot_table(material, rarity, item_type)
                save_loot_table(material, rarity, item_type, loot)

    print("Loot tables generated in the script folder!")

if __name__ == "__main__":
    main()
