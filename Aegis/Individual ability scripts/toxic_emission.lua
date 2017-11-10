toxic_emission = class ({})

--------------------------------------------------------------------------------

function toxic_emission(event)

	local caster = event.caster
	local target = event.target
	local ability = event.ability
	local damagemulti = ability.GetLevelSpecialValueFor("damage", (ability:GetLevel() - 1))
	
	if focus_type == 0 then
	
		target:ApplyDamage(target, caster, GetAttackDamage(caster) * %damage, DAMAGE_TYPE_PHYSICAL, DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES)
		target:ApplyDamage(target, caster, GetAttackDamage(caster) * %damage, DAMAGE_TYPE_MAGICAL, DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES)
	end
	
	if focus_type == 1 then
		target:ApplyDamage(target, caster, GetAttackDamage(caster) * %damage * 2, DAMAGE_TYPE_PHYSICAL, DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES)

	end
	
	if focus_type == 2 then
		target:ApplyDamage(target, caster, GetAttackDamage(caster) * %damage * 2, DAMAGE_TYPE_MAGICAL, DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES)

	end
	
end

function Swap(event)

	byte focus_type = 0
	
	if focus_type == 0 then
		focus_type = 1
	end
	
	if focus_type == 1 then
		focus_type = 2
		
		caster
		return caster:GetPhysicalArmorBaseValue()
	end
	
	if focus_type == 2 then
		focus_type = 0
		
		return caster:GetBaseMagicalResistanceValue()
	end
	