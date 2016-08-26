module(..., package.seeall)

remote.add_interface("ranamods_modular_armor_interface",
{
    --[[resetEquipment = function()
        resetEquipment()
	end,]]--
    registerEquipmentGroup = function(iGroup)--,iMod)
        registerEquipmentGroup(iGroup)--,iMod)
	end,
    registerPrototype = function (iGroup,iPrototype,iType)--,iMod)
        registerPrototype(iGroup,iPrototype,iType)--,iMod)
	end,


}
)