# rpg-loot-reforged
This is a fork of [LostPuppet's](https://github.com/LostPuppet) rework on Michael9r9r's rpg_loot datapack

If you see any code that looks:

  a. clean
  
  b. functional
  
  c. fast
  
That is probally [LostPuppet's](https://github.com/LostPuppet) code, he is a much better programmer than I :skull:, so all credit goes to him - this project wouldn't be where it is now if it weren't for him. Also [Dawnkiro](https://github.com/DawnKiro) helped him out on the custom attribute system too. (And shaders too!)

---

Some quick terms:

"rpg_loot" is the content side of the datapack. Think cool weapons, custom mobs, etc.

"rpgc" is the core functionality of the datapack. This part is responsible for the custom health bars, damage types, and new weapon/armor attributes

## Goals
As I attempt to take up the mantle of updating michael9r9r's rpg_loot datapack, I have some objectives that I want to reach.

### 1. Not Broken
To even dream of making this functional enough to put out, it must not be a gauntlet of pain to get it working on your minecraft world only for it to break.

This step requires identifing and fixing all bugs that are currently in rpg_loot and rpgc. As bugs are discovered, they can be found in the [bugs.md](https://github.com/StateusY/rpg-loot-fork/blob/main/bugs.md) file.

### 2. Not Old
This maybe momumental maybe not step is to update rpg_loot and rpgc up to the newest version, which is 1.21.7 (at the time of writing)

### 3. Not Boring
The third and hopefully final step is to create all of the custom content for our players to enjoy. No cool rpg swords? No fun. After this step is when I plan to publish the project on Modrinth and the such in an alpha state to get feedback and bugreports (and to liven up the rpg_loot discord server again!).

---

### How to build
The main difference between the source structure and the build structure is that the source is one file with both rpg_loot and rpgc datapacks and resource packs separated, while the build version has the datapacks merged into one and likewise with the resource packs.

If you want to try to build this beacuse you like bugs or something here are the instructions:
- run ```git clone https://github.com/StateusY/rpg-loot-reforged``` in your terminal (this will copy the repository to your computer) OR click the green "<> Code" button, download the zip, and unzip it
- find src/rpg_loot and src/rpgc : these are your datapacks
- copy them into your resource pack folder and delete (kinda optional tbh) the ```src/rpg_loot/data``` and ```src/rpgc/data``` folders
- run Minecraft
- enable the resource packs (there are 2, rpg_loot and rpgc)
- make a world with the datapacks - if this doesnt work, make the world then add the datapacks
- finally join the world and then exit and rejoin to trigger it - ```/reload``` doesnt work


If you want to edit/mod the datapack:
- open the test world datapack folder (the world you added the datapacks to in the last step) in any code editor (i reccomend vscode but any will work)
- edit the files
- run ```/reload``` in the world

If you want to edit/mod the resource pack:
- open your resource pack folder and open the rpg_loot and rpgc resource packs in any code editor
- edit the files
- press F3+T or just disable and re-enable the resource packs
