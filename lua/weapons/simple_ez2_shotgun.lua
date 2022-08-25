AddCSLuaFile()

SWEP.Base = "simple_hl2_shotgun"

SWEP.PrintName = "Shotgun"
SWEP.Category = "Simple Weapons: Entropy Zero"

SWEP.Slot = 3

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 54

SWEP.ViewModel = Model("models/simple_weapons/weapons/ez2/c_shotgun.mdl")
SWEP.WorldModel = Model("models/simple_weapons/weapons/ez2/w_shotgun.mdl")

SWEP.HoldType = "shotgun"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = 0
SWEP.SwayScale = 3

SWEP.Primary = {
	Ammo = "Buckshot",

	ClipSize = 6,
	DefaultClip = 6,

	PumpAction = true,
	PumpOnEmpty = true,
	PumpSound = "Entropy_Shotgun.Special1",

	Damage = 17,
	Count = 7,

	Delay = -1,

	Range = 400,
	Accuracy = 24,

	RangeModifier = 0.7,

	Recoil = {
		MinAng = Angle(2, -4, 0),
		MaxAng = Angle(4, 4, 0),
		Punch = 0.5,
		Ratio = 0
	},

	Reload = {
		Amount = 1,
		Shotgun = true,
		Sound = "Entropy_Shotgun.Reload",
	},

	Sound = "Entropy_Shotgun.Single",
	TracerName = "Tracer"
}

SWEP.Secondary = {
	Count = 12,

	Recoil = {
		MinAng = Angle(7, -6, 0),
		MaxAng = Angle(7, 6, 0),
		Punch = 0.5
	},

	Sound = "Entropy_Shotgun.Double",
}

SWEP.NPCData = {
	Burst = {1, 3},
	Delay = SWEP.Primary.Delay,
	Rest = {SWEP.Primary.Delay * 2, SWEP.Primary.Delay * 3}
}

list.Add("NPCUsableWeapons", {class = "simple_ez2_shotgun", title = "Simple Weapons: Shotgun (Entropy Zero)"})

sound.Add({
	name = "Entropy_Shotgun.Single",
	channel = CHAN_WEAPON,
	volume = 1,
	level = 140,
	pitch = {98, 101},
	sound = "simple_weapons/weapons/ez2/shotgun/shotgun_fire7.wav"
})

sound.Add({
	name = "Entropy_Shotgun.Double",
	channel = CHAN_WEAPON,
	volume = 1,
	level = 140,
	pitch = {98, 101},
	sound = "simple_weapons/weapons/ez2/shotgun/shotgun_dbl_fire7.wav"
})

sound.Add({
	name = "Entropy_Shotgun.Special1",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/shotgun/shotgun_cock.wav"
})

sound.Add({
	name = "Entropy_Shotgun.Reload",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = {
		"simple_weapons/weapons/ez2/shotgun/shotgun_reload1.wav",
		"simple_weapons/weapons/ez2/shotgun/shotgun_reload2.wav",
		"simple_weapons/weapons/ez2/shotgun/shotgun_reload3.wav"
	}
})

sound.Add({
	name = "Entropy_Shotgun.Draw",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/shotgun/shotgun_draw.wav"
})

sound.Add({
	name = "Entropy_Shotgun.Movement1",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/shotgun/shotgun_movement1.wav"
})

sound.Add({
	name = "Entropy_Shotgun.Movement2",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/shotgun/shotgun_movement2.wav"
})

sound.Add({
	name = "Entropy_Shotgun.Movement3",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/shotgun/shotgun_movement3.wav"
})
