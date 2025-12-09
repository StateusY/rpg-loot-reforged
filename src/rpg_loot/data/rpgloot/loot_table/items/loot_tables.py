import json
import shutil
from pathlib import Path

# Base output folder relative to script location
LOG_FILE = Path(__file__).parent / "log.txt"

def log_debug(msg):
    with open(LOG_FILE, "a") as f:
        f.write(msg + "\n")

BASE_DIR = Path(__file__).parent
OUTPUT_DIR = BASE_DIR / "basic"

materials = [
    {
        "name": "Wood",
        "translate": "rpgloot.material.wood",
        "type": "item_only",
        "damage_value": 4,
        "bow_value": 2,
        "tool_speed": 1,
        "durability": 64,
        "bow": '{draw:10,velocity:4,inaccuracy:2}',
        "weapon_events": '[{"name":"wood_sword","source": "weapon", "listen": "hit", "command": "function rpgloot:items/basic/wood/sword/hit"}]',
        "bow_events": '[{"name": "wood_bow", "source": "weapon", "listen": "bow_impact", "command": "function rpgloot:items/basic/wood/bow/impact"}]',
    },
    {
    "name": "Leather",
    "translate": "rpgloot.material.leather",
    "type": "armor_only",
    "hp_value": 2,
    "armor_value": 1,
    "durability": 64,
    "armor_events": '[]',
    "extra_components": {
        "minecraft:dyed_color": -6265536
    }
    },
    {
        "name": "Stone",
        "translate": "rpgloot.material.stone",
        "type": "item_only",
        "damage_value": 6,
        "bow_value": 3,
        "tool_speed": 1.5,
        "durability": 128,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Flint",
        "translate": "rpgloot.material.flint",
        "type": "armor_only",
        "hp_value":3,
        "armor_value":2,
        "durability": 128,
    },
    {
        "name": "Copper",
        "translate": "rpgloot.material.copper",
        "type": "both",
        "damage_value": 8,
        "bow_value": 4,
        "tool_speed": 2,
        "hp_value":4,
        "armor_value": 3,
        "durability": 256,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Iron",
        "translate": "rpgloot.material.iron",
        "type": "both",
        "damage_value": 10,
        "bow_value": 5,
        "tool_speed": 3,
        "hp_value":5,
        "armor_value": 4,
        "durability": 512,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[{"name":"iron_sword_hurt","source": "weapon", "listen": "hurt", "command": "function rpgloot:items/basic/iron/sword/hurt"},{"name":"iron_sword_held","source": "weapon", "listen": "held", "command": "function rpgloot:items/basic/iron/sword/held"},{"name":"iron_sword_swap","source": "weapon", "listen": "swap_off", "command": "function rpgloot:items/basic/iron/sword/swap_off"},{"name":"iron_sword_use","source": "weapon", "listen": "use", "command": "function rpgloot:items/basic/iron/sword/use"}]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Silver",
        "translate": "rpgloot.material.silver",
        "type": "both",
        "damage_value": 14,
        "bow_value": 6,
        "tool_speed": 4,
        "hp_value":7,
        "armor_value": 5,
        "durability": 768,
        "bow": '{draw:30,velocity:12,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[{"name": "silver_bow", "source": "weapon", "listen": "bow_impact", "command": "function rpgloot:items/basic/silver/bow/impact"},{"name": "silver_bow", "source": "weapon", "listen": "bow_hit", "command": "function rpgloot:items/basic/silver/bow/hit"}]',
        "armor_events": '[]'
    },
    {
        "name": "Diamond",
        "translate": "rpgloot.material.diamond",
        "type": "both",
        "damage_value": 18,
        "bow_value": 8,
        "tool_speed": 5,
        "hp_value":9,
        "armor_value": 6,
        "durability": 1024,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Titanium",
        "translate": "rpgloot.material.titanium",
        "type": "both",
        "damage_value": 22,
        "bow_value": 10,
        "tool_speed": 6,
        "hp_value":11,
        "armor_value": 7,
        "durability": 2048,
        "bow": '{draw:30,velocity:6,inaccuracy:1}',
        "weapon_events": '[{"name":"titanium_sword_swap","source": "weapon", "listen": "swap_off", "command": "function rpgloot:items/basic/titanium/sword/swap"},{"name":"titanium_sword_use","source": "weapon", "listen": "use", "command": "function rpgloot:items/basic/titanium/sword/use"}]',
        "bow_events": '[{"name": "titanium_bow", "source": "weapon", "listen": "flight", "command": "function rpgloot:items/basic/titanium/bow/flight"}]',
        "armor_events": '[]',
        "helmet_events":'[{"name": "titanium_helmet", "source": "head", "listen": "head_swap", "command": "function rpgloot:items/basic/titanium/armor/swap"}]',
        "chestplate_events":'[{"name": "titanium_chestplate", "source": "chest", "listen": "chest_swap", "command": "function rpgloot:items/basic/titanium/armor/swap"}]',
        "leggings_events":'[{"name": "titanium_leggings", "source": "legs", "listen": "legs_swap", "command": "function rpgloot:items/basic/titanium/armor/swap"}]',
        "boots_events":'[{"name": "titanium_boots", "source": "feet", "listen": "feet_swap", "command": "function rpgloot:items/basic/titanium/armor/swap"}]',
        "helmet_enchants": {"rpgloot:backend/items/titanium": 1},
        "chestplate_enchants": {"rpgloot:backend/items/titanium": 1},
        "leggings_enchants": {"rpgloot:backend/items/titanium": 1},
        "boots_enchants": {"rpgloot:backend/items/titanium": 1},
        "armor_attributes":[{"id":"dodge","name":"titanium_armor","source":"armor","type":"add","value":0.04}]

    },
    {
        "name": "Cobalt",
        "translate": "rpgloot.material.cobalt",
        "type": "both",
        "damage_value": 30,
        "bow_value": 12,
        "tool_speed": 7,
        "hp_value":15,
        "armor_value": 8,
        "durability": 4096,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Magnite",
        "translate": "rpgloot.material.magnite",
        "type": "both",
        "damage_value": 38,
        "bow_value": 15,
        "tool_speed": 8,
        "hp_value":19,
        "armor_value": 9,
        "durability": 6000,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]',
        "helmet_events":'[{"name": "magnite_helmet", "source": "head", "listen": "head_swap", "command": "function rpgloot:items/basic/magnite/armor/swap"},{"name": "magnite_hit", "source": "head", "listen": "hit", "command": "function rpgloot:items/basic/magnite/armor/hit"}]',
        "chestplate_events":'[{"name": "magnite_chestplate", "source": "chest", "listen": "chest_swap", "command": "function rpgloot:items/basic/magnite/armor/swap"},{"name": "magnite_hit", "source": "chest", "listen": "hit", "command": "function rpgloot:items/basic/magnite/armor/hit"}]',
        "leggings_events":'[{"name": "magnite_leggings", "source": "legs", "listen": "legs_swap", "command": "function rpgloot:items/basic/magnite/armor/swap"},{"name": "magnite_hit", "source": "legs", "listen": "hit", "command": "function rpgloot:items/basic/magnite/armor/hit"}]',
        "boots_events":'[{"name": "magnite_boots", "source": "feet", "listen": "feet_swap", "command": "function rpgloot:items/basic/magnite/armor/swap"},{"name": "magnite_hit", "source": "feet", "listen": "hit", "command": "function rpgloot:items/basic/magnite/armor/hit"}]',
        "helmet_enchants": {"rpgloot:backend/items/magnite": 1},
        "chestplate_enchants": {"rpgloot:backend/items/magnite": 1},
        "leggings_enchants": {"rpgloot:backend/items/magnite": 1},
        "boots_enchants": {"rpgloot:backend/items/magnite": 1},
    },
    {
        "name": "Netherite",
        "translate": "rpgloot.material.netherite",
        "type": "both",
        "damage_value": 46,
        "bow_value": 18,
        "tool_speed": 9,
        "hp_value":23,
        "armor_value": 10,
        "durability": 8000,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Mythril",
        "translate": "rpgloot.material.mythril",
        "type": "both",
        "damage_value": 54,
        "bow_value": 20,
        "tool_speed": 10,
        "hp_value":27,
        "armor_value": 11,
        "durability": 10000,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Celestium",
        "translate": "rpgloot.material.celestium",
        "type": "both",
        "damage_value": 64,
        "bow_value": 25,
        "tool_speed": 16,
        "hp_value":32,
        "armor_value": 12,
        "durability": 12000,
        "bow": '{draw:10,velocity:4,inaccuracy:1}',
        "weapon_events": '[]',
        "bow_events": '[]',
        "armor_events": '[]'
    },
    {
        "name": "Eternium",
        "translate": "rpgloot.material.eternium",
        "type": "both",
        "damage_value": 64,
        "bow_value": 25,
        "tool_speed": 16,
        "hp_value":32,
        "armor_value": 12,
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

# === WEAKNESS SCALING HELPERS ===
min_dmg   = min(m.get("damage_value", 0) for m in materials)
max_dmg   = max(m.get("damage_value", 0) for m in materials)

min_bow   = min(m.get("bow_value", 0) for m in materials)
max_bow   = max(m.get("bow_value", 0) for m in materials)

min_armor = min(m.get("armor_value", 0) for m in materials)
max_armor = max(m.get("armor_value", 0) for m in materials)

# --- add HP min/max (put near your other min/max lines) ---
min_hp = min(m.get("hp_value", 0) for m in materials)
max_hp = max(m.get("hp_value", 0) for m in materials)

# === weakness_factor (replace existing) ===
def weakness_factor(base_value, value_type="damage"):
    if value_type == "armor":
        denom = (max_armor - min_armor)
        if denom == 0:
            return 0.0
        return (max_armor - base_value) / denom
    elif value_type == "bow":
        denom = (max_bow - min_bow)
        if denom == 0:
            return 0.0
        return (max_bow - base_value) / denom
    elif value_type == "hp":                # NEW branch for HP
        denom = (max_hp - min_hp)
        if denom == 0:
            return 0.0
        return (max_hp - base_value) / denom
    else:  # damage
        denom = (max_dmg - min_dmg)
        if denom == 0:
            return 0.0
        return (max_dmg - base_value) / denom

def rarity_multiplier(base_value, rarity, value_type="damage"):
    base_mult = rarity_base[rarity]

    # lookup min/max for this stat type
    ranges = {
        "damage": (min_dmg, max_dmg),
        "bow": (min_bow, max_bow),
        "armor": (min_armor, max_armor),
        "hp": (min_hp, max_hp),
    }
    min_val, max_val = ranges[value_type]

    if max_val == min_val:
        return base_mult

    # normalize 0..1
    t = (base_value - min_val) / (max_val - min_val)

    # catchup factor by rarity (0 for common → 0.5 for legendary)
    catchup_factors = {
        "common": 0.0,
        "uncommon": 0.125,
        "rare": 0.25,
        "epic": 0.375,
        "legendary": 0.5
    }
    catchup_factor = catchup_factors.get(rarity, 0.0)

    # interpolate toward max (but never reduce max)
    effective_base = base_value + (max_val - base_value) * (1 - t) * catchup_factor

    # turn into multiplier relative to original base
    effective_mult = (effective_base / base_value) * base_mult

    # clamp to nearest whole number to avoid rounding noise
    return round(effective_mult)






# === ITEM CATEGORIES ===
WEAPONS = ["sword", "bow"]
TOOLS = ["axe", "pickaxe", "shovel", "hoe"]
ARMORS = ["helmet", "chestplate", "leggings", "boots"]

# === CLEAR OUTPUT FOLDER ===
def clear_output_dir():
    if OUTPUT_DIR.exists():
        shutil.rmtree(OUTPUT_DIR)
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

# === PLACEHOLDER ===
def get_vanilla_placeholder(material_name, item_type):
    if item_type in WEAPONS:
        return "minecraft:bow" if item_type == "bow" else "minecraft:iron_sword"
    elif item_type in TOOLS:
        return f"minecraft:iron_{item_type}"
    elif item_type in ARMORS:
        return f"minecraft:iron_{item_type}"
    else:
        return "minecraft:stone"

# === GENERATOR DISPATCH ===
def generate_loot_table(material, rarity, item_type):
    generators = {
        "sword": generate_sword, "bow": generate_bow,
        "axe": generate_tool, "pickaxe": generate_tool, "shovel": generate_tool, "hoe": generate_tool,
        "helmet": generate_armor, "chestplate": generate_armor, "leggings": generate_armor, "boots": generate_armor
    }
    return generators[item_type](material, rarity, item_type)

# === ITEM GENERATORS ===
def generate_sword(material, rarity, item_type):
    base = material.get("damage_value", 0)
    mult = rarity_multiplier(base, rarity, "damage")
    damage = base * mult
    durability = int(material.get("durability", 1) * mult)
    color = rarities[rarity]["color"]

    # events
    weapon_events = material.get("weapon_events", "[]")
    if not isinstance(weapon_events, str):
        weapon_events = json.dumps(weapon_events)

    tag_string = (
        f'{{rpgc:true,'
        f'rpgloot_tier:{rarity},'
        f'rpgloot_type:sword,'
        f'events:{weapon_events},'
        f'attributes:[{{id:physical_dmg,name:{material["name"].lower()}_sword,source:weapon,type:add,value:{damage}}}]}}'
    )
    extra_components = {
        "minecraft:consumable": {
            "consume_seconds": 999999,
            "animation": "none",
            "on_consume_effects": []
        },
        "minecraft:attribute_modifiers": [
          {
            "type": "minecraft:attack_speed",
            "id": "default",
            "amount": -2.4,
            "operation": "add_value",
            "slot": "any"
          }
        ]
    }

    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:weapon", durability, extra_components)



def generate_bow(material, rarity, item_type):
    base = material.get("bow_value", material.get("damage_value", 0) / 2)
    mult = rarity_multiplier(base, rarity, "bow")
    damage = base * mult
    durability = int(material.get("durability", 1) * mult)
    color = rarities[rarity]["color"]

    bow_str = material.get("bow", "{}")
    bow_events = material.get("bow_events", "[]")
    if not isinstance(bow_events, str):
        bow_events = json.dumps(bow_events)

    tag_string = (
        f'{{rpgc:true,'
        f'rpgloot_tier:{rarity},'
        f'rpgloot_type:bow,'
        f'bow:{bow_str},'
        f'events:{bow_events},'
        f'attributes:[{{id:ranged_dmg,name:{material["name"].lower()}_bow,source:weapon,type:add,value:{damage}}}]}}'
    )

    # Pass both enchants here
    return create_loot_entry(material, rarity, color, item_type, tag_string, ["rpgc:bow", "infinity"], durability)



def generate_tool(material, rarity, item_type):
    # base sword damage (full stat) and its rarity multiplier
    base_damage = material.get("damage_value", 0)
    sword_mult = rarity_multiplier(base_damage, rarity, "damage")

    # tool damage = 25% of the sword damage AFTER multiplier (rounded)
    damage = round(base_damage * sword_mult * 0.25)

    # durability scales with the same sword multiplier
    durability = int(round(material.get("durability", 1) * sword_mult))

    tool_speed = material.get("tool_speed", 1)
    color = rarities[rarity]["color"]

    tag_string = (
        f'{{rpgc:true,'
        f'rpgloot_tier:{rarity},'
        f'rpgloot_type:tool,'
        f'attributes:[{{id:physical_dmg,name:{material["name"].lower()}_{item_type},source:weapon,type:add,value:{damage}}}]}}'
    )

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
    else: 
        extra_components["minecraft:tool"] = {
            "rules": [
                {"blocks": "#minecraft:mineable/"+item_type, "speed": tool_speed, "correct_for_drops": True}
            ],
            "default_mining_speed": 1,
            "damage_per_block": 1
        }

    return create_loot_entry(material, rarity, color, item_type, tag_string, "rpgc:weapon", durability, extra_components)



def generate_armor(material, rarity, item_type):
    base_armor = material.get("armor_value", 0)
    base_hp    = material.get("hp_value", 0)

    armor_mult = rarity_multiplier(base_armor, rarity, "armor")
    hp_mult    = rarity_multiplier(base_hp, rarity, "hp")

    armor_val = base_armor * armor_mult
    hp_val    = base_hp * hp_mult

    log_debug(f"[generate_armor] material={material['name']}, rarity={rarity}, item_type={item_type}")
    log_debug(f"  base_armor={base_armor}, armor_mult={armor_mult}, armor_val={armor_val}")
    log_debug(f"  base_hp={base_hp}, hp_mult={hp_mult}, hp_val={hp_val}")

    durability = int(material.get("durability", 1) * armor_mult)
    color = rarities[rarity]["color"]

    slot_map = {"helmet": "head", "chestplate": "chest", "leggings": "legs", "boots": "feet"}
    slot = slot_map.get(item_type)

    all_events = []
    if "armor_events" in material:
        generic_events = material.get("armor_events", "[]")
        if isinstance(generic_events, str):
            generic_events = json.loads(generic_events)
        all_events.extend(generic_events)

    event_field = f"{item_type}_events"
    if event_field in material:
        specific_events = material.get(event_field, "[]")
        if isinstance(specific_events, str):
            specific_events = json.loads(specific_events)
        all_events.extend(specific_events)

    armor_events = json.dumps(all_events) if all_events else "[]"

    attributes = [
        {"id": "armor",  "name": f"{material['name'].lower()}_{item_type}_armor", "source": slot, "type": "add", "value": armor_val},
        {"id": "max_hp", "name": f"{material['name'].lower()}_{item_type}_hp",    "source": slot, "type": "add", "value": hp_val}
    ]

    if "armor_attributes" in material:
        attributes.extend(material["armor_attributes"])

    attr_field = f"{item_type}_attributes"
    if attr_field in material:
        attributes.extend(material[attr_field])
    
    for attribute in attributes:
        attribute["source"] = slot

    tag_string = (
        f'{{rpgc:true,'
        f'rpgloot_tier:{rarity},'
        f'rpgloot_type:armor,'
        f'events:{armor_events},'
        f'id:{rarity}_{material["name"].lower()}_{item_type},'
        f'attributes:{json.dumps(attributes)}}}'
    )

    extra_components = {
        "minecraft:equippable": {
            "slot": slot,
            "asset_id": 'rpgloot:' + material["name"].lower()
        }
    }

    enchant_field = f"{item_type}_enchants"
    if enchant_field in material:
        enchants = material[enchant_field]
    else:
        enchants = {"rpgc:armor": 1}

    return create_loot_entry(material, rarity, color, item_type, tag_string, enchants, durability, extra_components)


# === LOOT ENTRY CREATION ===
def create_loot_entry(material, rarity, color, item_type, tag_string, enchantment_type, durability, extra_components=None):
    item_name = get_vanilla_placeholder(material["name"], item_type)
    name_component = [
        # The translations are found in the translation file en_us.json
        {"selector": "@s", "color": color, "italic": False},
        {"translate": f"rpgloot.misc.'s",
         "fallback": f"'s",
         "color": color, "italic": False},
        {"text": f" "},
        {"translate": f"rpgloot.rarity.{rarity.lower()}",
         "fallback": f"{rarity.capitalize()}",
         "color": color, "italic": False},
        {"text": f" "},
        {"translate": f"rpgloot.material.{material['name'].lower()}",
         "fallback": f"{material['name']}",
         "color": color, "italic": False},
        {"text": f" "},
        {"translate": f"rpgloot.item_type.{item_type.lower()}",
         "fallback": f"{item_type.capitalize()}",
         "color": color, "italic": False},
    ]

    # Core components
    components = {
        "minecraft:max_damage": durability,
        "minecraft:enchantment_glint_override": False,
        "minecraft:lore": [[
            {"text": "0 ", "color": "white", "font": "rpgloot:icon", "italic": False},
            {"translate": "rpgloot.tooltip", "color": "white", "font": "rpgloot:tooltip", "italic": False}
        ]],
        "minecraft:tooltip_style": "rpgloot:rpgloot"
    }

    # Auto model path → rpgloot:item/{material}_{item_type}
    model_path = f"rpgloot:item/{material['name'].lower()}_{item_type}"
    if item_type in WEAPONS:
        model_path = f"rpgloot:weapons/{material['name'].lower()}_{item_type}"
    elif item_type in TOOLS:
        model_path = f"rpgloot:tools/{material['name'].lower()}_{item_type}"
    elif item_type in ARMORS:
        model_path = f"rpgloot:armor/{material['name'].lower()}_{item_type}"
    components["minecraft:item_model"] = model_path

    # Merge extra components
        # Merge extra components from the generator (e.g., equippable/tool) and material definition
    if "extra_components" in material:
        components.update(material["extra_components"])
    if extra_components:
        components.update(extra_components)


    # --- Enchantments ---
    if isinstance(enchantment_type, dict):
        # already a dict of enchantments
        enchantments = enchantment_type
    elif isinstance(enchantment_type, (list, tuple)):
        # list → multiple enchants with level 1
        enchantments = {en: 1 for en in enchantment_type}
    else:
        # single string → single enchant at level 1
        enchantments = {enchantment_type: 1}

    tag_string = tag_string[:-1] + ",rpgloot_modified:false}"
    return {
        "pools": [{
            "rolls": 1,
            "entries": [{
                "type": "minecraft:item",
                "name": item_name,
                "functions": [
                    {"function": "minecraft:set_name", "entity": "this", "name": name_component},
                    {"function": "minecraft:set_custom_data", "tag": tag_string},
                    {"function": "minecraft:set_enchantments", "enchantments": enchantments},
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
    if LOG_FILE.exists():
        LOG_FILE.unlink()
    clear_output_dir()  # clear folder first

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

    print("Loot tables regenerated in the script folder!")

if __name__ == "__main__":
    main()
