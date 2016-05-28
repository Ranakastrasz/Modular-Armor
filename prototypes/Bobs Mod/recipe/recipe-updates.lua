if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.replace_recipe_item ("solar-panel-equipment-4", "copper-cable", "gilded-copper-cable")
end

if data.raw.module["effectivity-module-4"] then
  bobmods.lib.replace_recipe_item ("bob-power-armor-mk3", "effectivity-module-3", "effectivity-module-4")
  bobmods.lib.replace_recipe_item ("energy-shield-mk4-equipment", "effectivity-module-3", "effectivity-module-4")
  bobmods.lib.replace_recipe_item ("fusion-reactor-equipment-2", "effectivity-module-3", "effectivity-module-4")
end

if data.raw.module["speed-module-4"] then
  bobmods.lib.replace_recipe_item ("bob-power-armor-mk3", "speed-module-3", "speed-module-4")
  bobmods.lib.replace_recipe_item ("fusion-reactor-equipment-2", "speed-module-3", "speed-module-4")
end

if data.raw.module["productivity-module-4"] then
  bobmods.lib.replace_recipe_item ("energy-shield-mk4-equipment", "productivity-module-3", "productivity-module-4")
  bobmods.lib.replace_recipe_item ("fusion-reactor-equipment-2", "productivity-module-3", "productivity-module-4")
end


if data.raw.module["effectivity-module-6"] then
  bobmods.lib.replace_recipe_item ("bob-power-armor-mk4", "effectivity-module-3", "effectivity-module-6")
  bobmods.lib.replace_recipe_item ("energy-shield-mk5-equipment", "effectivity-module-3", "effectivity-module-6")
  bobmods.lib.replace_recipe_item ("fusion-reactor-equipment-3", "effectivity-module-3", "effectivity-module-6")
end

if data.raw.module["speed-module-6"] then
  bobmods.lib.replace_recipe_item ("bob-power-armor-mk4", "speed-module-3", "speed-module-6")
  bobmods.lib.replace_recipe_item ("fusion-reactor-equipment-3", "speed-module-3", "speed-module-6")
end

if data.raw.module["productivity-module-6"] then
  bobmods.lib.replace_recipe_item ("energy-shield-mk5-equipment", "productivity-module-3", "productivity-module-6")
  bobmods.lib.replace_recipe_item ("fusion-reactor-equipment-3", "productivity-module-3", "productivity-module-6")
end


if data.raw.module["effectivity-module-8"] then
  bobmods.lib.replace_recipe_item ("bob-power-armor-mk5", "effectivity-module-3", "effectivity-module-8")
  bobmods.lib.replace_recipe_item ("energy-shield-mk6-equipment", "effectivity-module-3", "effectivity-module-8")
  bobmods.lib.replace_recipe_item ("fusion-reactor-equipment-4", "effectivity-module-3", "effectivity-module-8")
end

if data.raw.module["speed-module-8"] then
  bobmods.lib.replace_recipe_item ("bob-power-armor-mk5", "speed-module-3", "speed-module-8")
  bobmods.lib.replace_recipe_item ("fusion-reactor-equipment-4", "speed-module-3", "speed-module-8")
end

if data.raw.module["productivity-module-8"] then
  bobmods.lib.replace_recipe_item ("energy-shield-mk6-equipment", "productivity-module-3", "productivity-module-8")
  bobmods.lib.replace_recipe_item ("fusion-reactor-equipment-4", "productivity-module-3", "productivity-module-8")
end



if data.raw.item["alien-artifact-orange"] and data.raw.item["alien-artifact-blue"] then
  bobmods.lib.add_new_recipe_item ("bob-power-armor-mk3", {"alien-artifact-orange", 25})
  bobmods.lib.add_new_recipe_item ("energy-shield-mk4-equipment", {"alien-artifact-orange", 5})
  bobmods.lib.add_new_recipe_item ("battery-mk4-equipment", {"alien-artifact-orange", 5})
  bobmods.lib.add_new_recipe_item ("fusion-reactor-equipment-2", {"alien-artifact-orange", 15})

  bobmods.lib.add_new_recipe_item ("bob-power-armor-mk3", {"alien-artifact-blue", 25})
  bobmods.lib.add_new_recipe_item ("energy-shield-mk4-equipment", {"alien-artifact-blue", 5})
  bobmods.lib.add_new_recipe_item ("battery-mk4-equipment", {"alien-artifact-blue", 5})
  bobmods.lib.add_new_recipe_item ("fusion-reactor-equipment-2", {"alien-artifact-blue", 15})
else
  bobmods.lib.add_new_recipe_item ("bob-power-armor-mk3", {"alien-artifact", 70})
  bobmods.lib.add_new_recipe_item ("energy-shield-mk4-equipment", {"alien-artifact", 15})
  bobmods.lib.add_new_recipe_item ("battery-mk4-equipment", {"alien-artifact", 15})
  bobmods.lib.add_new_recipe_item ("fusion-reactor-equipment-2", {"alien-artifact", 40})
end



if data.raw.item["alien-artifact-yellow"] and data.raw.item["alien-artifact-purple"] then
  bobmods.lib.add_new_recipe_item ("bob-power-armor-mk4", {"alien-artifact-yellow", 25})
  bobmods.lib.add_new_recipe_item ("energy-shield-mk5-equipment", {"alien-artifact-yellow", 5})
  bobmods.lib.add_new_recipe_item ("battery-mk5-equipment", {"alien-artifact-yellow", 5})
  bobmods.lib.add_new_recipe_item ("fusion-reactor-equipment-3", {"alien-artifact-yellow", 15})

  bobmods.lib.add_new_recipe_item ("bob-power-armor-mk4", {"alien-artifact-purple", 25})
  bobmods.lib.add_new_recipe_item ("energy-shield-mk5-equipment", {"alien-artifact-purple", 5})
  bobmods.lib.add_new_recipe_item ("battery-mk5-equipment", {"alien-artifact-purple", 5})
  bobmods.lib.add_new_recipe_item ("fusion-reactor-equipment-3", {"alien-artifact-purple", 15})
else
  bobmods.lib.add_new_recipe_item ("bob-power-armor-mk4", {"alien-artifact", 90})
  bobmods.lib.add_new_recipe_item ("energy-shield-mk5-equipment", {"alien-artifact", 20})
  bobmods.lib.add_new_recipe_item ("battery-mk5-equipment", {"alien-artifact", 20})
  bobmods.lib.add_new_recipe_item ("fusion-reactor-equipment-3", {"alien-artifact", 60})
end



if data.raw.item["alien-artifact-red"] and data.raw.item["alien-artifact-green"] then
  bobmods.lib.add_new_recipe_item ("bob-power-armor-mk5", {"alien-artifact-red", 25})
  bobmods.lib.add_new_recipe_item ("energy-shield-mk6-equipment", {"alien-artifact-red", 5})
  bobmods.lib.add_new_recipe_item ("battery-mk6-equipment", {"alien-artifact-red", 5})
  bobmods.lib.add_new_recipe_item ("fusion-reactor-equipment-4", {"alien-artifact-red", 15})
  bobmods.lib.add_new_recipe_item ("basic-laser-defense-equipment-6", {"alien-artifact-red", 5})

  bobmods.lib.add_new_recipe_item ("bob-power-armor-mk5", {"alien-artifact-green", 25})
  bobmods.lib.add_new_recipe_item ("energy-shield-mk6-equipment", {"alien-artifact-green", 5})
  bobmods.lib.add_new_recipe_item ("battery-mk6-equipment", {"alien-artifact-green", 5})
  bobmods.lib.add_new_recipe_item ("fusion-reactor-equipment-4", {"alien-artifact-green", 15})
  bobmods.lib.add_new_recipe_item ("basic-laser-defense-equipment-6", {"alien-artifact-green", 5})
else
  bobmods.lib.add_new_recipe_item ("bob-power-armor-mk5", {"alien-artifact", 120})
  bobmods.lib.add_new_recipe_item ("energy-shield-mk6-equipment", {"alien-artifact", 30})
  bobmods.lib.add_new_recipe_item ("battery-mk6-equipment", {"alien-artifact", 30})
  bobmods.lib.add_new_recipe_item ("fusion-reactor-equipment-4", {"alien-artifact", 80})
  bobmods.lib.add_new_recipe_item ("basic-laser-defense-equipment-6", {"alien-artifact", 10})
end


if data.raw.item["alien-blue-alloy"] then
  bobmods.lib.replace_recipe_item ("ap-bullet-projectile", "tungsten-plate", "alien-blue-alloy")
  bobmods.lib.replace_recipe_item ("shotgun-ap-shell", "tungsten-plate", "alien-blue-alloy")
  bobmods.lib.replace_recipe_item ("piercing-rocket-warhead", "tungsten-plate", "alien-blue-alloy")
end

if data.raw.item["alien-orange-alloy"] then
  bobmods.lib.replace_recipe_item ("impact-bullet-projectile", "steel-plate", "alien-orange-alloy")
  bobmods.lib.replace_recipe_item ("shotgun-impact-shell", "steel-plate", "alien-orange-alloy")
  bobmods.lib.replace_recipe_item ("impact-rocket-warhead", "copper-plate", "alien-orange-alloy")
end

if data.raw.fluid["alien-acid"] then
  bobmods.lib.replace_recipe_item ("acid-bullet-projectile", "nitric-acid", "alien-acid")
  bobmods.lib.replace_recipe_item ("shotgun-acid-shell", "nitric-acid", "alien-acid")
  bobmods.lib.replace_recipe_item ("acid-rocket-warhead", "nitric-acid", "alien-acid")
end

if data.raw.fluid["alien-explosive"] then
  bobmods.lib.replace_recipe_item ("he-bullet-projectile", "explosives", "alien-explosive")
  data.raw.recipe["he-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.replace_recipe_item ("shotgun-explosive-shell", "explosives", "alien-explosive")
  data.raw.recipe["shotgun-explosive-shell"].category = "crafting-with-fluid"

  bobmods.lib.replace_recipe_item ("explosive-rocket-warhead", "explosives", "alien-explosive")
  data.raw.recipe["explosive-rocket-warhead"].category = "crafting-with-fluid"

  bobmods.lib.replace_recipe_item ("explosive-artillery-shell", "explosives", "alien-explosive")
  bobmods.lib.add_new_recipe_item ("explosive-artillery-shell", {"explosives", 1})
  data.raw.recipe["explosive-artillery-shell"].category = "crafting-with-fluid"
end

if data.raw.fluid["alien-poison"] then
  bobmods.lib.replace_recipe_item ("poison-bullet-projectile", "sulfuric-acid", "alien-poison")
  bobmods.lib.replace_recipe_item ("shotgun-poison-shell", "sulfuric-acid", "alien-poison")
  bobmods.lib.replace_recipe_item ("poison-rocket-warhead", "sulfuric-acid", "alien-poison")

  bobmods.lib.replace_recipe_item ("poison-artillery-shell", "coal", "alien-poison")
  data.raw.recipe["poison-artillery-shell"].category = "crafting-with-fluid"
end

if data.raw.fluid["alien-fire"] then
  bobmods.lib.remove_recipe_item ("flame-bullet-projectile", "light-oil")
  bobmods.lib.remove_recipe_item ("flame-bullet-projectile", "heavy-oil")
  bobmods.lib.add_new_recipe_item ("flame-bullet-projectile", {"alien-fire", 1})
  data.raw.recipe["flame-bullet-projectile"].category = "crafting-with-fluid"

  bobmods.lib.remove_recipe_item ("shotgun-flame-shell", "light-oil")
  bobmods.lib.remove_recipe_item ("shotgun-flame-shell", "heavy-oil")
  bobmods.lib.add_new_recipe_item ("shotgun-flame-shell", {"alien-fire", 1})
  data.raw.recipe["shotgun-flame-shell"].category = "crafting-with-fluid"

  bobmods.lib.remove_recipe_item ("flame-rocket-warhead", "light-oil")
  bobmods.lib.remove_recipe_item ("flame-rocket-warhead", "heavy-oil")
  bobmods.lib.add_new_recipe_item ("flame-rocket-warhead", {"alien-fire", 2})
  data.raw.recipe["flame-rocket-warhead"].category = "crafting-with-fluid"
end



