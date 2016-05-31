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



