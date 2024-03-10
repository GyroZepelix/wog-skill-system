import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;

val restricted_weapons = {
    " §4[Untrained Axes]": ItemStages.restrict(<tag:items:gyro:weapons/axes>, "w-axe_student"),
    " §4[Untrained Bows]": ItemStages.restrict(<tag:items:gyro:weapons/bows>, "w-bow_student"),
    " §4[Untrained Crossbows]": ItemStages.restrict(<tag:items:gyro:weapons/crossbows>, "w-crossbow_student"),
    " §4[Untrained Daggers]": ItemStages.restrict(<tag:items:gyro:weapons/daggers>, "w-dagger_student"),
    " §4[Untrained Greatswords]": ItemStages.restrict(<tag:items:gyro:weapons/greatswords>, "w-greatsword_student"),
    " §4[Untrained Katanas]": ItemStages.restrict(<tag:items:gyro:weapons/katanas>, "w-katana_student"),
    " §4[Untrained Longswords]": ItemStages.restrict(<tag:items:gyro:weapons/longswords>, "w-longsword_student"),
    " §4[Untrained Spears]": ItemStages.restrict(<tag:items:gyro:weapons/spears>, "w-spear_student"),
    " §4[Untrained Swords]": ItemStages.restrict(<tag:items:gyro:weapons/swords>, "w-sword_student"),
    " §4[Untrained Tachis]": ItemStages.restrict(<tag:items:gyro:weapons/tachis>, "w-tachi_student"),
    " §4[Untrained Tridents]": ItemStages.restrict(<tag:items:gyro:weapons/tridents>, "w-trident_student"),
    " §4[Untrained Gloves]": ItemStages.restrict(<tag:items:gyro:weapons/gloves>, "w-unarmed_student")
};

for untrained_message, item in restricted_weapons {
    item.preventInventory(false);   // Allows item to be kept in inventories.
    item.preventAttacking(true);   // Allows item to be used as a weapon.
    item.preventPickup(false);      // Allows item to be picked up.
    item.preventUsing(true);       // Allows item to be used (left/right click).
    item.setHiddenInJEI(true);     // Allows item to be visible in JEI.
    item.hiddenName((i) => {
        return i.getHoverName().getString() + untrained_message;
    });
}

restricted_weapons[" §4[Untrained Axes]"].preventUsing(false);

