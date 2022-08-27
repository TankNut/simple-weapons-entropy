AddCSLuaFile()

SWEP.Base = "simple_hl2_smg1"

SWEP.PrintName = "MP7"
SWEP.Category = "Simple Weapons: Entropy Zero"

SWEP.Slot = 2

SWEP.Spawnable = true

SWEP.UseHands = false

SWEP.ViewModelTargetFOV = 54

SWEP.ViewModel = Model("models/simple_weapons/weapons/ez2/v_smg1.mdl")
SWEP.WorldModel = Model("models/simple_weapons/weapons/ez2/w_smg1.mdl")

SWEP.HoldType = "smg"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = -1

SWEP.Primary = {
	Ammo = "SMG1",

	ClipSize = 45,
	DefaultClip = 90,

	Damage = 11,
	Delay = 60 / 800,

	Range = 300,
	Accuracy = 12,

	RangeModifier = 0.85,

	Recoil = {
		MinAng = Angle(1.2, -0.6, 0),
		MaxAng = Angle(1.4, 0.6, 0),
		Punch = 0.4,
		Ratio = 0.2
	},

	Reload = {
		Sound = ""
	},

	Sound = "Entropy_SMG1.Single",
	TracerName = "Tracer"
}

SWEP.Secondary = {
	Ammo = "SMG1_Grenade",
	Class = "simple_ent_hl2_40mm",

	Sound = "Entropy_SMG1.Double"
}

SWEP.NPCData = {
	Burst = {2, 5},
	Delay = SWEP.Primary.Delay,
	Rest = {SWEP.Primary.Delay * 3, SWEP.Primary.Delay * 5}
}

list.Add("NPCUsableWeapons", {class = "simple_ez2_smg1", title = "Simple Weapons: " .. SWEP.PrintName})

-- ACT_VM_RECOIL support
local transitions = {
	[ACT_VM_PRIMARYATTACK] = ACT_VM_RECOIL1,
	[ACT_VM_RECOIL1] = ACT_VM_RECOIL2,
	[ACT_VM_RECOIL2] = ACT_VM_RECOIL3,
	[ACT_VM_RECOIL3] = ACT_VM_RECOIL3
}

function SWEP:TranslateWeaponAnim(act)
	if act == ACT_VM_PRIMARYATTACK then
		local lookup = transitions[self:GetActivity()]

		if lookup then
			act = lookup
		end
	end

	return act
end

sound.Add({
	name = "Entropy_SMG1.Single",
	channel = CHAN_WEAPON,
	volume = 0.55,
	level = 140,
	pitch = {95, 105},
	sound = "simple_weapons/weapons/ez2/smg1/smg1_fire1.wav"
})

sound.Add({
	name = "Entropy_SMG1.Double",
	channel = CHAN_WEAPON,
	volume = 0.61,
	level = 140,
	pitch = {95, 105},
	sound = "simple_weapons/weapons/ez2/grenade_launcher1.wav"
})

sound.Add({
	name = "Entropy_SMG1.FirstDraw",
	channel = CHAN_AUTO,
	volume = 1,
	level = 75,
	pitch = {98, 105},
	sound = "simple_weapons/weapons/ez2/smg1/smg1_firstdraw.wav"
})

sound.Add({
	name = "Entropy_SMG1.Draw",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_draw.wav"
})

sound.Add({
	name = "Entropy_SMG1.Movement1",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_movement1.wav"
})

sound.Add({
	name = "Entropy_SMG1.Movement2",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_movement2.wav"
})

sound.Add({
	name = "Entropy_SMG1.Movement3",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_movement3.wav"
})

sound.Add({
	name = "Entropy_SMG1.Inspect1",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_inspect1.wav"
})

sound.Add({
	name = "Entropy_SMG1.Inspect2",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_inspect2.wav"
})

sound.Add({
	name = "Entropy_SMG1.Inspect3",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_inspect3.wav"
})

sound.Add({
	name = "Entropy_SMG1.Reload1",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_reload1.wav"
})

sound.Add({
	name = "Entropy_SMG1.Reload2",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_reload2.wav"
})

sound.Add({
	name = "Entropy_SMG1.Reload3",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_reload3.wav"
})

sound.Add({
	name = "Entropy_SMG1.Reload4",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg1/smg1_reload4.wav"
})
