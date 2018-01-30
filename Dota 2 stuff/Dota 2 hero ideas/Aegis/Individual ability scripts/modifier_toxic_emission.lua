modifier_toxic_emission = class ({})

--------------------------------------------------------------------------------
function modifier_toxic_emission:IsDebuff()
	return true
end

function modifier_toxic_emission:IsPurgable()
	return true
end

function modifier_toxic_emission:()


function modifier_toxic_emission:DeclareFunctions()
	
	local funcs = {
		MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
		MODIFIER_PROPERTY_MAGICAL_RESISTANCE_BONUS,
	}
	return funcs
end

function modifier_toxic_emission:GetModifierPhysicalArmorBonus(params)
	return self.toxic_emission_armor_reduction

function modifier_toxic_emission:GetModifierMagicalResistanceBonus(params)
	return self.toxic_emission_magic_reduction