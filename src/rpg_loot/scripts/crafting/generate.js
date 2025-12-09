const fs = require("fs");

let template = fs.readFileSync("./template.json", "utf-8");
let font = JSON.parse(fs.readFileSync("./../../assets/rpgloot/font/item.json", "utf-8"));

function customMaterial(type) {
	return "minecraft:poisonous_potato[minecraft:custom_data~{'rpgloot':{'ingredient':{'type':'" + type + "'}}}]";
}
let materials = {
	wood: {
		name: "Wood & Leather",
		base: "#minecraft:planks",
		armor: "minecraft:leather",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	"stone": {
		name: "Stone & Flint",
		base: "#minecraft:stone_crafting_materials",
		armor: "minecraft:flint",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	"copper": {
		name: "Copper",
		base: "minecraft:copper_ingot",
		armor: "minecraft:copper_ingot",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	"iron": {
		name: "Iron",
		base: "minecraft:iron_ingot",
		armor: "minecraft:iron_ingot",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	"silver": {
		name: "Silver",
		base: customMaterial("silver_ingot"),
		armor: customMaterial("silver_ingot"),
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	"diamond": {
		name: "Diamond",
		base: "minecraft:diamond",
		armor: "minecraft:diamond",
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	"titanium": {
		name: "Titanium",
		base: customMaterial("titanium_ingot"),
		armor: customMaterial("titanium_ingot"),
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	"cobalt": {
		name: "Cobalt",
		base: customMaterial("cobalt_ingot"),
		armor: customMaterial("cobalt_ingot"),
		stick: "minecraft:stick",
		string: "minecraft:string"
	},
	"magnite": {
		name: "Magnite",
		base: customMaterial("magnite_ingot"),
		armor: customMaterial("magnite_ingot"),
		stick: "minecraft:blaze_rod",
		string: "minecraft:string"
	},
	"netherite": {
		name: "Netherite",
		base: customMaterial("netherite_ingot"),
		armor: customMaterial("netherite_ingot"),
		stick: "minecraft:blaze_rod",
		string: "minecraft:string"
	},
	"mythril": {
		name: "Mythril",
		base: customMaterial("mythril_scale"),
		armor: customMaterial("mythril_scale"),
		stick: "minecraft:blaze_rod",
		string: "minecraft:string"
	},
};

let items = {};
font.providers.forEach((provider) => {
	if (provider.item) {
		items[provider.item] = provider.chars[0];
	}
});

let craftingIndex = 1000;

let index = 0;
for (id in materials) {
	let material = materials[id];
	let dialog = template;

	dialog = dialog
		.replaceAll("(NAME)", material.name)
		.replaceAll("(BASE)", items[material.base])
		.replaceAll("(ARMOR)", items[material.armor])
		.replaceAll("(STICK)", items[material.stick])
		.replaceAll("(STRING)", items[material.string]);

	for (let i = 0; i < 10; i++) {
		dialog = dialog
			.replaceAll("(ITEM_" + i + ")", "[THIS IS A PLACEHOLDER FOR " + id + "]")
			.replaceAll("(CRAFTING_" + i + ")", craftingIndex);
		craftingIndex++;
	}

	console.log(dialog);
}
