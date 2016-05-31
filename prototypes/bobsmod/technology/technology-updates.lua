

if data.raw.tool["science-pack-gold"] and
  data.raw.tool["alien-science-pack-blue"] and
  data.raw.tool["alien-science-pack-orange"] and
  data.raw.tool["alien-science-pack-purple"] and
  data.raw.tool["alien-science-pack-yellow"] and
  data.raw.tool["alien-science-pack-green"] and
  data.raw.tool["alien-science-pack-red"]
then
  data.raw.technology["bob-power-armor-3"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["energy-shield-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["battery-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["fusion-reactor-equipment-2"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}

  data.raw.technology["bob-power-armor-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["energy-shield-equipment-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["battery-equipment-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}

  data.raw.technology["bob-power-armor-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
  data.raw.technology["energy-shield-equipment-6"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
  data.raw.technology["battery-equipment-6"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
  data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
else
  if data.raw.tool["science-pack-4"] then
    bobmods.lib.add_new_science_pack("bob-power-armor-3", "science-pack-4", 1)
    bobmods.lib.add_new_science_pack("energy-shield-equipment-4", "science-pack-4", 1)

    bobmods.lib.add_new_science_pack("bob-power-armor-4", "science-pack-4", 1)
    bobmods.lib.add_new_science_pack("energy-shield-equipment-5", "science-pack-4", 1)
    bobmods.lib.add_new_science_pack("battery-equipment-5", "science-pack-4", 1)
    bobmods.lib.add_new_science_pack("fusion-reactor-equipment-3", "science-pack-4", 1)

    bobmods.lib.add_new_science_pack("bob-power-armor-5", "science-pack-4", 1)
    bobmods.lib.add_new_science_pack("energy-shield-equipment-6", "science-pack-4", 1)
    bobmods.lib.add_new_science_pack("battery-equipment-6", "science-pack-4", 1)
    bobmods.lib.add_new_science_pack("fusion-reactor-equipment-4", "science-pack-4", 1)
  end
end


if data.raw.technology["speed-module-4"] then
  bobmods.lib.add_technology_prerequisite ("bob-power-armor-3", "speed-module-4")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-2", "speed-module-4")
else
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-2", "speed-module-3")
end

if data.raw.technology["effectivity-module-4"] then
  bobmods.lib.add_technology_prerequisite ("bob-power-armor-3", "effectivity-module-4")
  bobmods.lib.add_technology_prerequisite ("energy-shield-equipment-4", "effectivity-module-4")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-2", "effectivity-module-4")
else
  bobmods.lib.add_technology_prerequisite ("energy-shield-equipment-4", "effectivity-module-3")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-2", "effectivity-module-3")
end

if data.raw.technology["productivity-module-4"] then
  bobmods.lib.add_technology_prerequisite ("energy-shield-equipment-4", "productivity-module-4")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-2", "productivity-module-4")
else
  bobmods.lib.add_technology_prerequisite ("energy-shield-equipment-4", "productivity-module-3")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-2", "productivity-module-3")
end


if data.raw.technology["speed-module-6"] then
  bobmods.lib.add_technology_prerequisite ("bob-power-armor-4", "speed-module-6")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-3", "speed-module-6")
end

if data.raw.technology["effectivity-module-6"] then
  bobmods.lib.add_technology_prerequisite ("bob-power-armor-4", "effectivity-module-6")
  bobmods.lib.add_technology_prerequisite ("energy-shield-equipment-5", "effectivity-module-6")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-3", "effectivity-module-6")
end

if data.raw.technology["productivity-module-6"] then
  bobmods.lib.add_technology_prerequisite ("energy-shield-equipment-5", "productivity-module-6")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-3", "productivity-module-6")
end


if data.raw.technology["speed-module-8"] then
  bobmods.lib.add_technology_prerequisite ("bob-power-armor-5", "speed-module-8")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-4", "speed-module-8")
end

if data.raw.technology["effectivity-module-8"] then
  bobmods.lib.add_technology_prerequisite ("bob-power-armor-5", "effectivity-module-8")
  bobmods.lib.add_technology_prerequisite ("energy-shield-equipment-6", "effectivity-module-8")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-4", "effectivity-module-8")
end

if data.raw.technology["productivity-module-8"] then
  bobmods.lib.add_technology_prerequisite ("energy-shield-equipment-6", "productivity-module-8")
  bobmods.lib.add_technology_prerequisite ("fusion-reactor-equipment-4", "productivity-module-8")
end



