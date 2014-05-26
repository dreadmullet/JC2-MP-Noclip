InputNames = {}

InputNames.GetActionName = function(action)
	for index , actionName in ipairs(InputNames.Action) do
		if Action[actionName] == action then
			return actionName
		end
	end
	
	return "Unknown"
end

InputNames.GetKeyName = function(key)
	for index , keyName in ipairs(InputNames.Key) do
		if VirtualKey[keyName] == key then
			return keyName
		end
	end
	
	if string.char(key) then
		return string.char(key)
	end
	
	return "Unknown"
end

InputNames.Action = {
	"Accelerate" ,
	"ActivateBlackMarketBeacon" ,
	"ActivateExtractionBeacon" ,
	"ActivateParachuteThrusters" ,
	"BikeTiltBackward" ,
	"BikeTiltForward" ,
	"BoatBackward" ,
	"BoatForward" ,
	"BoatTurnLeft" ,
	"BoatTurnRight" ,
	"Crouch" ,
	"Dash" ,
	"DebugDecree" ,
	"DebugIncree" ,
	"DebugModeCombo1" ,
	"DebugModeCombo2" ,
	"DecGrappleDistance" ,
	"DeployParachuteWhileReelingAction" ,
	"DetachGrapple" ,
	"Dive" ,
	"DropWeapon" ,
	"EndMovie" ,
	"EnterVehicle" ,
	"EquipBlackMarketBeacon" ,
	"EquipDual" ,
	"EquipExplosive" ,
	"EquipLeftSlot" ,
	"EquipRightSlot" ,
	"EquipTwohanded" ,
	"Evade" ,
	"ExitToStuntposParachute" ,
	"ExitVehicle" ,
	"Fire" ,
	"FireGrapple" ,
	"FireLeft" ,
	"FireRight" ,
	"FireVehicleWeapon" ,
	"GrapplingAction" ,
	"GuiAnalogDown" ,
	"GuiAnalogLeft" ,
	"GuiAnalogRight" ,
	"GuiAnalogUp" ,
	"GuiBack" ,
	"GuiCancel" ,
	"GuiCreate" ,
	"GuiDatabase" ,
	"GuiDefault" ,
	"GuiDelete" ,
	"GuiDown" ,
	"GuiIconLegend" ,
	"GuiLeft" ,
	"GuiLoad" ,
	"GuiNext" ,
	"GuiOk" ,
	"GuiPDA" ,
	"GuiPDAExtraction" ,
	"GuiPDAToggleAOI" ,
	"GuiPDAZoomIn" ,
	"GuiPause" ,
	"GuiPdaZoomOut" ,
	"GuiRight" ,
	"GuiSave" ,
	"GuiUp" ,
	"Handbrake" ,
	"HeliAITargetAltitude" ,
	"HeliAiAutoRoll" ,
	"HeliBackward" ,
	"HeliDecAltitude" ,
	"HeliForward" ,
	"HeliIncAltitude" ,
	"HeliRollLeft" ,
	"HeliRollRight" ,
	"HeliTurnLeft" ,
	"HeliTurnRight" ,
	"IncGrappleDistance" ,
	"Jump" ,
	"Kick" ,
	"LookDown" ,
	"LookLeft" ,
	"LookRight" ,
	"LookUp" ,
	"Map" ,
	"MapScrollDown" ,
	"MapScrollLeft" ,
	"MapScrollRight" ,
	"MapScrollUp" ,
	"MapZoomIn" ,
	"MapZoomOut" ,
	"McFire" ,
	"MoveBackward" ,
	"MoveForward" ,
	"MoveLeft" ,
	"MoveRight" ,
	"MoveToDriversSeat" ,
	"NextWeapon" ,
	"Objectives" ,
	"ParachuteLandOnVehicle" ,
	"ParachuteOpenClose" ,
	"Pause" ,
	"PickupWithLeftHand" ,
	"PickupWithRightHand" ,
	"PlaneDecTrust" ,
	"PlaneIncTrust" ,
	"PlanePitchDown" ,
	"PlanePitchUp" ,
	"PlaneRollLeft" ,
	"PlaneRollRight" ,
	"PlaneTurnLeft" ,
	"PlaneTurnRight" ,
	"PrevWeapon" ,
	"QuickLoad" ,
	"QuickSave" ,
	"ReeledInJumpAction" ,
	"ReeledInReleaseAction" ,
	"Reload" ,
	"ResetCamera" ,
	"Reverse" ,
	"SequenceButton1" ,
	"SequenceButton2" ,
	"SequenceButton3" ,
	"SequenceButton4" ,
	"ShoulderCam" ,
	"SidestepLeftBreakLof" ,
	"SidestepLeftGainLof" ,
	"SidestepRightBreakLof" ,
	"SidestepRightGainLof" ,
	"SkipTutorial" ,
	"SoundHornSiren" ,
	"StuntJump" ,
	"StuntposEnterVehicle" ,
	"StuntposJumpOff" ,
	"StuntposToParachute" ,
	"Swim" ,
	"SwitchTarget" ,
	"SwitchWeapon" ,
	"ThrowGrenade" ,
	"TurnLeft" ,
	"TurnRight" ,
	"UseItem" ,
	"VehicleCam" ,
	"VehicleFireLeft" ,
	"VehicleFireRight" ,
	"Walk" ,
	"Weapon0" ,
	"Weapon1" ,
	"Weapon2" ,
	"Weapon3" ,
	"Weapon4" ,
	"Weapon5" ,
	"Weapon6" ,
	"Weapon7" ,
	"Weapon8" ,
	"Weapon9" ,
	"XliveAponline" ,
	"XliveLogout" ,
	"ZoomIn" ,
	"ZoomOut" ,
}

InputNames.Key = {
	"Accept" ,
	"Add" ,
	"Apps" ,
	"Attn" ,
	"Back" ,
	"BrowserBack" ,
	"BrowserFavorites" ,
	"BrowserForward" ,
	"BrowserHome" ,
	"BrowserRefresh" ,
	"BrowserSearch" ,
	"BrowserStop" ,
	"Cancel" ,
	"Capital" ,
	"Clear" ,
	"Control" ,
	"Convert" ,
	"Crsel" ,
	"Decimal" ,
	"Delete" ,
	"Divide" ,
	"Down" ,
	"End" ,
	"Ereof" ,
	"Escape" ,
	"Execute" ,
	"Exsel" ,
	"F1" ,
	"F10" ,
	"F11" ,
	"F12" ,
	"F13" ,
	"F14" ,
	"F15" ,
	"F16" ,
	"F17" ,
	"F18" ,
	"F19" ,
	"F2" ,
	"F20" ,
	"F21" ,
	"F22" ,
	"F23" ,
	"F24" ,
	"F3" ,
	"F4" ,
	"F5" ,
	"F6" ,
	"F7" ,
	"F8" ,
	"F9" ,
	"Final" ,
	"Hangeul" ,
	"Hangul" ,
	"Hanja" ,
	"Help" ,
	"Home" ,
	"Ico00" ,
	"IcoHelp" ,
	"Insert" ,
	"Junja" ,
	"Kana" ,
	"Kanji" ,
	"LButton" ,
	"LControl" ,
	"LMenu" ,
	"LShift" ,
	"LWin" ,
	"LaunchApp1" ,
	"LaunchApp2" ,
	"LaunchMail" ,
	"LaunchMediaSelect" ,
	"Left" ,
	"MButton" ,
	"MediaNextTrack" ,
	"MediaPlayPause" ,
	"MediaPrevTrack" ,
	"MediaStop" ,
	"Menu" ,
	"Modechange" ,
	"Multiply" ,
	"Next" ,
	"Noname" ,
	"Nonconvert" ,
	"Numlock" ,
	"Numpad0" ,
	"Numpad1" ,
	"Numpad2" ,
	"Numpad3" ,
	"Numpad4" ,
	"Numpad5" ,
	"Numpad6" ,
	"Numpad7" ,
	"Numpad8" ,
	"Numpad9" ,
	"Oem1" ,
	"Oem102" ,
	"Oem2" ,
	"Oem3" ,
	"Oem4" ,
	"Oem5" ,
	"Oem6" ,
	"Oem7" ,
	"Oem8" ,
	"OemAttn" ,
	"OemAuto" ,
	"OemAx" ,
	"OemBacktab" ,
	"OemClear" ,
	"OemComma" ,
	"OemCopy" ,
	"OemCusel" ,
	"OemEnlw" ,
	"OemFinish" ,
	"OemFjJisho" ,
	"OemFjLoya" ,
	"OemFjMasshou" ,
	"OemFjRoya" ,
	"OemFjTouroku" ,
	"OemJump" ,
	"OemMinus" ,
	"OemNecEqual" ,
	"OemPa1" ,
	"OemPa2" ,
	"OemPa3" ,
	"OemPeriod" ,
	"OemPlus" ,
	"OemReset" ,
	"OemWsctrl" ,
	"Pa1" ,
	"Packet" ,
	"Pause" ,
	"Play" ,
	"Print" ,
	"Prior" ,
	"Processkey" ,
	"RButton" ,
	"RControl" ,
	"RMenu" ,
	"RShift" ,
	"RWin" ,
	"Return" ,
	"Right" ,
	"Scroll" ,
	"Select" ,
	"Separator" ,
	"Shift" ,
	"Sleep" ,
	"Snapshot" ,
	"Space" ,
	"Subtract" ,
	"Tab" ,
	"Up" ,
	"VolumeDown" ,
	"VolumeMute" ,
	"VolumeUp" ,
	"XButton1" ,
	"XButton2" ,
	"Zoom" ,
}