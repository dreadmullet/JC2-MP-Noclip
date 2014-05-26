Noclip = {}

Noclip.isEnabled = false

Noclip.position = Vector3(0 , 250 , 0)
Noclip.angle = Angle()
Noclip.speed = 10

Noclip.sensitivityMove = 5
Noclip.sensitivityRotate = 0.25
Noclip.sensitivitySpeedChange = 15

Noclip.moveBuffer = Vector3()
Noclip.rotateBuffer = Angle()
Noclip.speedChangeBuffer = 0

Noclip.maxPitch = math.rad(89)

Noclip.timer = Timer()

Noclip.Toggle = function()
	Noclip.isEnabled = not Noclip.isEnabled
	
	if Noclip.isEnabled then
		Noclip.position = LocalPlayer:GetPosition()
		Noclip.angle = LocalPlayer:GetAngle()
	end
end

Noclip.ControlHeld = function(control)
	if Noclip.isEnabled == false or Menu.isEnabled then
		return
	end
	
	if control.name == "Forward" then
		Noclip.moveBuffer.z = -control.state
	elseif control.name == "Backward" then
		Noclip.moveBuffer.z = control.state
	elseif control.name == "Left" then
		Noclip.moveBuffer.x = -control.state
	elseif control.name == "Right" then
		Noclip.moveBuffer.x = control.state
	elseif control.name == "Up" then
		Noclip.moveBuffer.y = control.state
	elseif control.name == "Down" then
		Noclip.moveBuffer.y = -control.state
	elseif control.name == "Rotate left" then
		Noclip.rotateBuffer.yaw = control.state
	elseif control.name == "Rotate right" then
		Noclip.rotateBuffer.yaw = -control.state
	elseif control.name == "Rotate up" then
		Noclip.rotateBuffer.pitch = control.state
	elseif control.name == "Rotate down" then
		Noclip.rotateBuffer.pitch = -control.state
	end
end

Noclip.ControlDown = function(control)
	if control.name == "Toggle noclip" then
		Noclip.Toggle()
	elseif control.name == "Toggle options menu" then
		Menu.SetEnabled(not Menu.isEnabled)
	elseif control.name == "Increase speed" then
		Noclip.speedChangeBuffer = 1
	elseif control.name == "Decrease speed" then
		Noclip.speedChangeBuffer = -1
	end
end

Noclip.CalcView = function()
	if Noclip.isEnabled == false then
		return true
	end
	
	-- Multiply everything by deltaTime to make sure things are not framerate-dependent.
	local deltaTime = Noclip.timer:GetSeconds()
	Noclip.timer:Restart()
	
	if Noclip.moveBuffer:Length() > 1 then
		Noclip.moveBuffer:Normalize()
	end
	
	local rb = Noclip.rotateBuffer
	local mult = deltaTime * Noclip.sensitivityRotate
	Noclip.angle = Angle(
		Noclip.angle.yaw + rb.yaw * mult ,
		Noclip.angle.pitch + rb.pitch * mult ,
		0
	)
	Noclip.angle.pitch = math.clamp(Noclip.angle.pitch , -Noclip.maxPitch , Noclip.maxPitch)
	if Noclip.speedChangeBuffer ~= 0 then
		Noclip.speedChangeBuffer = Noclip.speedChangeBuffer * deltaTime
		Noclip.speed = Noclip.speed *
			math.pow(10 , 1 + Noclip.speedChangeBuffer * Noclip.sensitivitySpeedChange) * 0.1
	end
	Noclip.moveBuffer = Noclip.angle * (Noclip.moveBuffer * (Noclip.speed * deltaTime))
	Noclip.position = Noclip.position + Noclip.moveBuffer * Noclip.sensitivityMove
	
	Noclip.moveBuffer = Vector3()
	Noclip.rotateBuffer = Angle()
	Noclip.speedChangeBuffer = 0
	
	Camera:SetPosition(Noclip.position)
	Camera:SetAngle(Noclip.angle)
	
	return false
end

Events:Subscribe("ControlHeld" , Noclip.ControlHeld)
Events:Subscribe("ControlDown" , Noclip.ControlDown)
Events:Subscribe("CalcView" , Noclip.CalcView)
