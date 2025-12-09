const fs = require("fs");

let template = fs.readFileSync("./template.json", "utf-8");

let craftingIndex = 1000;

let materials = {
	"diamond": {
		"name": "Diamond",
		"material": "",
		"stick": "",
		"string": "",
		"armor": ""
	}
};

for (id in materials) {
	let material = materials[id];
	let dialog = template;

	dialog = dialog.replaceAll("(NAME)", material.name);
	console.log(material);
	console.log(dialog);
}

