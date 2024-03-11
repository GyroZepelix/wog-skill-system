# World Of Glory Skill System

## Requirements

### Mods
Required mods are the following:

*\*These are the versions I used but newer version should work*
```
advanced_attributes-1.19.2-1.0.jar
architectury-6.5.85-forge.jar
Bookshelf-Forge-1.19.2-16.3.20.jar
CraftTweaker-forge-1.19.2-10.1.52.jar
fxcontrol-1.19-4.0.12.jar
GameStages-Forge-1.19.2-11.1.4.jar
incontrol-1.19.3-8.0.7.jar
ItemStages-Forge-1.19.2-5.0.2.jar
Paxi-1.19.2-Forge-3.0.1.jar
pollen-forge-2.1.0.jar
puffish_skills-0.10.0-1.19.2-forge.jar
RecipeStages-4.0.0.7.jar.disabled
YungsApi-1.19.2-Forge-3.8.10.jar
```
It also has compatibility with the following mod 
```
EpicFight-19.5.19.jar
```

## Setup

### Production
For permenantly using the skill system you can clone the repository then copy its contents into your `.minecraft` directory

```bash
git clone https://github.com/GyroZepelix/wog-skill-system
cd wog-skill-system
cp * path/to/.minecraft/
```

### Development
For setting up the development enviroment I've decided to use GNU Stow

```bash
git clone https://github.com/GyroZepelix/wog-skill-system
cd wog-skill-system
stow -t path/to/.minecraft . 
```
