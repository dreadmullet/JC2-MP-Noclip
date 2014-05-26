Menu = {}

Menu.window = nil
Menu.isEnabled = false

Menu.ModuleLoad = function()
	Menu.window = Window.Create()
	Menu.window:SetTitle("Noclip options")
	local size = Vector2(290 , 344)
	Menu.window:SetSize(size)
	Menu.window:SetPosition(Render.Size/2 - size/2)
	Menu.window:SetVisible(Menu.isEnabled)
	Menu.window:Subscribe("WindowClosed" , Menu.WindowClosed)
	
	local bindMenu = BindMenu.Create(Menu.window)
	bindMenu:SetDock(GwenPosition.Fill)
	
	bindMenu:AddControl("Toggle noclip" , "N")
	bindMenu:AddControl("Toggle options menu" , nil)
	
	bindMenu:AddControl("Forward" , "OemComma")
	bindMenu:AddControl("Backward" , "O")
	bindMenu:AddControl("Left" , "A")
	bindMenu:AddControl("Right" , "E")
	bindMenu:AddControl("Up" , "Space")
	bindMenu:AddControl("Down" , "Control")
	
	bindMenu:AddControl("Rotate left" , "Mouse left")
	bindMenu:AddControl("Rotate right" , "Mouse right")
	bindMenu:AddControl("Rotate up" , "Mouse up")
	bindMenu:AddControl("Rotate down" , "Mouse down")
	
	bindMenu:AddControl("Increase speed" , "Mouse wheel up")
	bindMenu:AddControl("Decrease speed" , "Mouse wheel down")
	
	bindMenu:RequestSettings()
	
	local base = BaseWindow.Create(Menu.window)
	base:SetMargin(Vector2(2 , 2) , Vector2(2 , 4))
	base:SetDock(GwenPosition.Top)
	base:SetHeight(20)
	
	local slider = HorizontalSlider.Create(base)
	slider:SetDock(GwenPosition.Fill)
	slider:SetRange(0.05 , 2)
	slider:SetValue(Noclip.sensitivityRotate)
	slider:SetClampToNotches(true)
	slider:SetNotchCount(39)
	slider:Subscribe("ValueChanged" , Menu.SensitivitySliderChanged)
	Menu.sensitivitySlider = slider
	
	local label = Label.Create(base)
	label:SetDock(GwenPosition.Left)
	label:SetAlignment(GwenPosition.CenterV)
	label:SetTextSize(14)
	label:SetWidth(104)
	Menu.sensitivityLabel = label
	
	Menu.SensitivitySliderChanged()
	
	Mouse:SetVisible(Menu.isEnabled)
end

Menu.SetEnabled = function(enabled)
	Menu.isEnabled = enabled
	
	Menu.window:SetVisible(enabled)
	Mouse:SetVisible(enabled)
end

-- Events

Menu.LocalPlayerInput = function(args)
	if Menu.isEnabled then
		return false
	else
		return true
	end
end

-- Console events

Menu.ConsoleCommand = function()
	Menu.isEnabled = not Menu.isEnabled
	
	Menu.window:SetVisible(Menu.isEnabled)
	Mouse:SetVisible(Menu.isEnabled)
end

-- GWEN events

Menu.WindowClosed = function()
	Menu.SetEnabled(not Menu.isEnabled)
end

Menu.SensitivitySliderChanged = function()
	Noclip.sensitivityRotate = Menu.sensitivitySlider:GetValue()
	
	Menu.sensitivityLabel:SetText(string.format("Sensitivity: %.2f" , Noclip.sensitivityRotate))
end

Events:Subscribe("ModuleLoad" , Menu.ModuleLoad)
Events:Subscribe("LocalPlayerInput" , Menu.LocalPlayerInput)
Console:Subscribe("noclip" , Menu.ConsoleCommand)
