-- Credits to Dajova :-*
local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales
if not IsAddOnLoaded("TinyDPS") or not C.Addon_Skins.TinyDPS then return end

local TinyDPS = CreateFrame("Frame")
TinyDPS:RegisterEvent("ADDON_LOADED")
TinyDPS:SetScript("OnEvent", function(self, event, addon)
	if not addon == "TinyDPS" then return end
	tdps.width = (TukuiMinimap:GetWidth() + 31)
	tdps.barHeight = 14
	tdps.spacing = 1
	tdpsFont.name = C["media"].pixelfont
	tdpsFont.size = 10
	tdpsFont.outline = "MONOCHROMEOUTLINE"

	tdpsPosition = {x = 0, y = -6}

	tdpsFrame:SetHeight(tdps.barHeight + 4)
	tdpsFrame:SetTemplate("Transparent")
	tdpsFrame:CreateBorder(true, true)
	tdpsAnchor:SetPoint('BOTTOMLEFT', TukuiInfoLeftMinimap, 'BOTTOMLEFT', 0, -16)
		
	self:UnregisterEvent("ADDON_LOADED")
end)