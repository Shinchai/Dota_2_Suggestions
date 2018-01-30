corruptedaegis_toxic_emission = class ({})
LinkLuaModifier("modifier_toxic_emission", LUA_MODIFIER_MOTION_NONE )

--------------------------------------------------------------------------------

function corruptedaegis_toxic_emission_lua:OnToggle()


	
	if self:GetToggleState() then

		self:GetCaster():AddNewModifier( self:GetCaster(), self, "modifier_toxic_emission")

	else
		local hToxicBuff = self:GetCaster():FindModifierByName("modifier_toxic_emission")
		if hToxicBuff ~= nil then
			hToxicBuff:Destroy()
		end
end

function Swap()

	focus_type = 0
	
	if focus_type == 0 then
		focus_type = 1
	end
	
	elseif focus_type == 1 then
		focus_type = 2
		self.hCaster:AddNewModifier()
	end
	
	elseif focus_type == 2 then
		focus_type = 0
		self.hCaster:AddNewModifier()
	end
	