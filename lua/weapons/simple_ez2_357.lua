AddCSLuaFile()

SWEP.Base = "simple_base"

SWEP.PrintName = ".357 Magnum"
SWEP.Category = "Simple Weapons: Entropy Zero"

SWEP.Slot = 1

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 54

SWEP.ViewModel = Model("models/simple_weapons/weapons/ez2/c_357.mdl")
SWEP.WorldModel = Model("models/simple_weapons/weapons/ez2/w_357.mdl")

SWEP.HoldType = "revolver"
SWEP.LowerHoldType = "normal"

SWEP.Firemode = 0

SWEP.Primary = {
	Ammo = "357",

	ClipSize = 6,
	DefaultClip = 12,

	Damage = 40,
	Delay = 60 / 80,

	Range = 1600,
	Accuracy = 12,

	RangeModifier = 0.94,

	Recoil = {
		MinAng = Angle(8, -2, 0),
		MaxAng = Angle(8, 2, 0),
		Punch = 0.4,
		Ratio = 0.2
	},

	Sound = "Entropy_357.Single",
	TracerName = "Tracer"
}

SWEP.NPCData = {
	Burst = {1, 1},
	Delay = 1,
	Rest = {1, 2.5}
}

list.Add("NPCUsableWeapons", {class = "simple_ez2_357", title = "Simple Weapons: .357 Magnum (Entropy Zero)"})

sound.Add({
	name = "Entropy_357.Single",
	channel = CHAN_WEAPON,
	volume = 1,
	level = 140,
	pitch = {88, 100},
	sound = {
		"^simple_weapons/weapons/ez2/357/357_fire2.wav",
		"^simple_weapons/weapons/ez2/357/357_fire3.wav",
	}
})

sound.Add({
	name = "Entropy_357.OpenLoader",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/357/357_reload1.wav"
})

sound.Add({
	name = "Entropy_357.RemoveLoader",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/357/357_reload4.wav"
})

sound.Add({
	name = "Entropy_357.ReplaceLoader",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/357/357_reload3.wav"
})

sound.Add({
	name = "Entropy_357.Spin",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/357/357_spin1.wav"
})

sound.Add({
	name = "Entropy_357.Draw",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/357/357_draw.wav"
})

sound.Add({
	name = "Entropy_357.Holster",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/357/357_holster.wav"
})

sound.Add({
	name = "Entropy_357.Cock",
	channel = CHAN_AUTO,
	volume = 1,
	level = 75,
	sound = "simple_weapons/weapons/ez2/357/357_hammer_prepare.wav"
})

sound.Add({
	name = "Entropy_357.FirstDraw",
	channel = CHAN_AUTO,
	volume = 1,
	level = 75,
	sound = "simple_weapons/weapons/ez2/357/357_pickup.wav"
})
