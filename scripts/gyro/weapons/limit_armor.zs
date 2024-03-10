import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import crafttweaker.api.text.Component;

val restricted_armor = {
    " §4[Untrained Light Armor]": ItemStages.restrict(<tag:items:gyro:armors/light_armor>, "w-light_armor_feat"),
    " §4[Untrained Medium Armor]": ItemStages.restrict(<tag:items:gyro:armors/medium_armor>, "w-medium_armor_feat"),
    " §4[Untrained Heavy Armor]": ItemStages.restrict(<tag:items:gyro:armors/heavy_armor>, "w-heavy_armor_feat"),
    " §4[Untrained Shields]": ItemStages.restrict(<tag:items:gyro:armors/shields>, "w-shields_feat"),
};

for untrained_message, item in restricted_armor {
    item.preventInventory(false);   // Allows item to be kept in inventories.
    item.preventAttacking(false);   // Allows item to be used as a weapon.
    item.preventPickup(false);      // Allows item to be picked up.
    item.preventUsing(true);       // Allows item to be used (left/right click).
    item.setHiddenInJEI(true);     // Allows item to be visible in JEI.
    item.hiddenName((i) => {
        return i.getHoverName().getString() + untrained_message;
    });
}

