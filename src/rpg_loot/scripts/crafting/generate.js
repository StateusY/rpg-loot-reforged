const fs = require("fs");

let template = fs.readFileSync("./template.json", "utf-8");
let itemFont = JSON.parse(fs.readFileSync("./../../assets/rpgloot/font/item.json", "utf8"));
let equipmentFont = {providers: []};

function customMaterial(type) {
	return "minecraft:poisonous_potato[minecraft:custom_data~{'rpgloot':{'ingredient':{'type':'" + type + "'}}}]";
}
let materials = {
	wood: {
		name: "Wood & Leather",
		armorId: "leather",
		base: "#minecraft:planks",
		armor: "minecraft:leather",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	stone: {
		name: "Stone & Flint",
		armorId: "flint",
		base: "#minecraft:stone_crafting_materials",
		armor: "minecraft:flint",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	copper: {
		name: "Copper",
		base: "minecraft:copper_ingot",
		armor: "minecraft:copper_ingot",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	iron: {
		name: "Iron",
		base: "minecraft:iron_ingot",
		armor: "minecraft:iron_ingot",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	silver: {
		name: "Silver",
		base: customMaterial("silver_ingot"),
		armor: customMaterial("silver_ingot"),
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	diamond: {
		name: "Diamond",
		base: "minecraft:diamond",
		armor: "minecraft:diamond",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	titanium: {
		name: "Titanium",
		base: customMaterial("titanium_ingot"),
		armor: customMaterial("titanium_ingot"),
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	cobalt: {
		name: "Cobalt",
		base: customMaterial("cobalt_ingot"),
		armor: customMaterial("cobalt_ingot"),
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	magnite: {
		name: "Magnite",
		base: customMaterial("magnite_ingot"),
		armor: customMaterial("magnite_ingot"),
		stick: "minecraft:blaze_rod",
		string: "minecraft:string"
	},
	netherite: {
		name: "Netherite",
		base: "minecraft:netherite_ingot",
		armor: "minecraft:netherite_ingot",
		stick: "minecraft:blaze_rod",
		string: "minecraft:string"
	},
	mythril: {
		name: "Mythril",
		base: customMaterial("mythril_scale"),
		armor: customMaterial("mythril_scale"),
		stick: "minecraft:blaze_rod",
		string: "minecraft:string"
	},
};
let equipments = {
	sword: "weapons",
	axe: "tools",
	pickaxe: "tools",
	shovel: "tools",
	hoe: "tools",
	bow: "weapons",
	helmet: "armor",
	chestplate: "armor",
	leggings: "armor",
	boots: "armor",
};


let items = {};
itemFont.providers.forEach((provider) => {
	if (provider.item) {
		items[provider.item] = provider.chars[0];
	}
});

// DECREMENT BOTH OF THESE BY ONE LATER!!!
let craftingIndex = 1001;
let equipmentIndex = 57345;

for (id in materials) {
	let material = materials[id];
	let dialog = template;

	dialog = dialog
		.replaceAll("(NAME)", material.name)
		.replaceAll("(BASE)", items[material.base])
		.replaceAll("(ARMOR)", items[material.armor])
		.replaceAll("(STICK)", items[material.stick])
		.replaceAll("(STRING)", items[material.string]);

	let index = 0;
	for (equipment in equipments) {
		let char = String.fromCharCode(equipmentIndex);
		dialog = dialog
			.replaceAll("(ITEM_" + index + ")", char)
			.replaceAll("(CRAFTING_" + index + ")", craftingIndex);

		let equipmentType = equipments[equipment];
		let equipmentMaterial = equipmentType == "armor" && material.armorId ? material.armorId : id;
		equipmentFont.providers.push({
			"type": "bitmap",
			"file": "rpgloot:item/" + equipmentType + "/" + equipmentMaterial + "_" + equipment + ".png",
			"height": 16,
			"ascent": 11,
			"chars": [
				char
			]
		});

		index++;
		craftingIndex++;
		equipmentIndex++;
	}

	fs.writeFileSync("./../../data/rpgloot/dialog/crafting/equipment/" + id + ".json", dialog);
}

fs.writeFileSync("./../../assets/rpgloot/font/generated/equipment.json", JSON.stringify(equipmentFont, null, 2));
