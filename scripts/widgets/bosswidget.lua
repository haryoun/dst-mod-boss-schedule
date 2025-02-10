local Widget = require "widgets/widget"
local TextButton = require "widgets/textbutton"

local BossWidget = Class(Widget, function(self)
    Widget._ctor(self, "BossWidget")

    self.btn = self:AddChild(TextButton())
    self.btn:SetText("B")
    -- self.btn:SetPosition(5, 5)
    self.btn:SetTextSize(60)

    self.btn:SetOnClick(function()
        _G.TheNet:Announce("B clicked!")
    end)
end)

return BossWidget