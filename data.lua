require "config"
if data.raw.armor["bob-power-armor-mk5"] then
    require("prototypes.bobsmod.item")
    require("prototypes.bobsmod.equipment")
    require("prototypes.bobsmod.recipe")
    require("prototypes.bobsmod.technology")
else
    require("prototypes.item")
    require("prototypes.equipment")
    require("prototypes.recipe")
    require("prototypes.technology")
end
require("prototypes.entities")
