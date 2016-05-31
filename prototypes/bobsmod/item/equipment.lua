data.raw.item["fusion-reactor-equipment"].order = "a[energy-source]-b[fusion-reactor-1]"
data.raw.item["night-vision-equipment"].order = "f[night-vision]-a[night-vision-equipment-1]"
data.raw.item["solar-panel-equipment"].order = "a[energy-source]-a[solar-panel-1]"
data.raw.item["basic-laser-defense-equipment"].order = "d[active-defense]-a[basic-laser-defense-equipment-1]"
data.raw.item["basic-exoskeleton-equipment"].order = "e[exoskeleton]-a[basic-exoskeleton-equipment-1]"


data:extend(
{
  {
    type = "item",
    name = "energy-shield-mk3-equipment",
    icon = "__bobwarfare__/graphics/icons/energy-shield-mk3-equipment.png",
    placed_as_equipment_result = "energy-shield-mk3-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "b[shield]-c[energy-shield-equipment-mk3]",
    stack_size = 50,
    default_requiest_amount = 10
  },
  {
    type = "item",
    name = "energy-shield-mk4-equipment",
    icon = "__bobwarfare__/graphics/icons/energy-shield-mk4-equipment.png",
    placed_as_equipment_result = "energy-shield-mk4-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "b[shield]-d[energy-shield-equipment-mk4]",
    stack_size = 50,
    default_requiest_amount = 10
  },
  {
    type = "item",
    name = "energy-shield-mk5-equipment",
    icon = "__bobwarfare__/graphics/icons/energy-shield-mk5-equipment.png",
    placed_as_equipment_result = "energy-shield-mk5-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "b[shield]-e[energy-shield-equipment-mk5]",
    stack_size = 50,
    default_requiest_amount = 10
  },
  {
    type = "item",
    name = "energy-shield-mk6-equipment",
    icon = "__bobwarfare__/graphics/icons/energy-shield-mk6-equipment.png",
    placed_as_equipment_result = "energy-shield-mk6-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "b[shield]-f[energy-shield-equipment-mk6]",
    stack_size = 50,
    default_requiest_amount = 10
  },

  {
    type = "item",
    name = "battery-mk3-equipment",
    icon = "__bobwarfare__/graphics/icons/battery-mk3-equipment.png",
    placed_as_equipment_result = "battery-mk3-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "c[battery]-c[battery-mk3-equipment]",
    stack_size = 50,
    default_requiest_amount = 10
  },
  {
    type = "item",
    name = "battery-mk4-equipment",
    icon = "__bobwarfare__/graphics/icons/battery-mk4-equipment.png",
    placed_as_equipment_result = "battery-mk4-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "c[battery]-d[battery-mk4-equipment]",
    stack_size = 50,
    default_requiest_amount = 10
  },
  {
    type = "item",
    name = "battery-mk5-equipment",
    icon = "__bobwarfare__/graphics/icons/battery-mk5-equipment.png",
    placed_as_equipment_result = "battery-mk5-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "c[battery]-e[battery-mk5-equipment]",
    stack_size = 50,
    default_requiest_amount = 10
  },
  {
    type = "item",
    name = "battery-mk6-equipment",
    icon = "__bobwarfare__/graphics/icons/battery-mk6-equipment.png",
    placed_as_equipment_result = "battery-mk6-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "c[battery]-f[battery-mk6-equipment]",
    stack_size = 50,
    default_requiest_amount = 10
  },

  {
    type = "item",
    name = "fusion-reactor-equipment-2",
    icon = "__bobwarfare__/graphics/icons/fusion-reactor-equipment-2.png",
    placed_as_equipment_result = "fusion-reactor-equipment-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor-2]",
    stack_size = 20
  },
  {
    type = "item",
    name = "fusion-reactor-equipment-3",
    icon = "__bobwarfare__/graphics/icons/fusion-reactor-equipment-3.png",
    placed_as_equipment_result = "fusion-reactor-equipment-3",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor-3]",
    stack_size = 20
  },
  {
    type = "item",
    name = "fusion-reactor-equipment-4",
    icon = "__bobwarfare__/graphics/icons/fusion-reactor-equipment-4.png",
    placed_as_equipment_result = "fusion-reactor-equipment-4",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor-4]",
    stack_size = 20
  },


  {
    type = "item",
    name = "solar-panel-equipment-2",
    icon = "__bobwarfare__/graphics/icons/solar-panel-equipment-2.png",
    placed_as_equipment_result = "solar-panel-equipment-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "a[energy-source]-a[solar-panel-2]",
    stack_size = 20
  },
  {
    type = "item",
    name = "solar-panel-equipment-3",
    icon = "__bobwarfare__/graphics/icons/solar-panel-equipment-3.png",
    placed_as_equipment_result = "solar-panel-equipment-3",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "a[energy-source]-a[solar-panel-3]",
    stack_size = 20
  },
  {
    type = "item",
    name = "solar-panel-equipment-4",
    icon = "__bobwarfare__/graphics/icons/solar-panel-equipment-4.png",
    placed_as_equipment_result = "solar-panel-equipment-4",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "a[energy-source]-a[solar-panel-4]",
    stack_size = 20
  },


  {
    type = "item",
    name = "basic-laser-defense-equipment-2",
    icon = "__bobwarfare__/graphics/icons/basic-laser-defense-equipment-2.png",
    placed_as_equipment_result = "basic-laser-defense-equipment-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "d[active-defense]-a[basic-laser-defense-equipment-2]",
    stack_size = 20
  },
  {
    type = "item",
    name = "basic-laser-defense-equipment-3",
    icon = "__bobwarfare__/graphics/icons/basic-laser-defense-equipment-3.png",
    placed_as_equipment_result = "basic-laser-defense-equipment-3",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "d[active-defense]-a[basic-laser-defense-equipment-3]",
    stack_size = 20
  },
  {
    type = "item",
    name = "basic-laser-defense-equipment-4",
    icon = "__bobwarfare__/graphics/icons/basic-laser-defense-equipment-4.png",
    placed_as_equipment_result = "basic-laser-defense-equipment-4",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "d[active-defense]-a[basic-laser-defense-equipment-4]",
    stack_size = 20
  },
  {
    type = "item",
    name = "basic-laser-defense-equipment-5",
    icon = "__bobwarfare__/graphics/icons/basic-laser-defense-equipment-5.png",
    placed_as_equipment_result = "basic-laser-defense-equipment-5",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "d[active-defense]-a[basic-laser-defense-equipment-5]",
    stack_size = 20
  },
  {
    type = "item",
    name = "basic-laser-defense-equipment-6",
    icon = "__bobwarfare__/graphics/icons/basic-laser-defense-equipment-6.png",
    placed_as_equipment_result = "basic-laser-defense-equipment-6",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "d[active-defense]-a[basic-laser-defense-equipment-6]",
    stack_size = 20
  },


  {
    type = "item",
    name = "basic-exoskeleton-equipment-2",
    icon = "__base__/graphics/icons/basic-exoskeleton-equipment.png",
    placed_as_equipment_result = "basic-exoskeleton-equipment-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "e[exoskeleton]-a[basic-exoskeleton-equipment-2]",
    stack_size = 10
  },
  {
    type = "item",
    name = "basic-exoskeleton-equipment-3",
    icon = "__base__/graphics/icons/basic-exoskeleton-equipment.png",
    placed_as_equipment_result = "basic-exoskeleton-equipment-3",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "e[exoskeleton]-a[basic-exoskeleton-equipment-3]",
    stack_size = 10
  },
}
)

