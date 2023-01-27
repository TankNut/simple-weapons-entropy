AddCSLuaFile()

SWEP.Base = "simple_base"

SWEP.PrintName = "MP5k"
SWEP.Category = "Simple Weapons: Entropy Zero"

SWEP.Slot = 2

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 54

SWEP.ViewModel = Model("models/simple_weapons/weapons/ez2/c_mp5k.mdl")
SWEP.WorldModel = Model("models/simple_weapons/weapons/ez2/w_mp5k.mdl")

SWEP.HoldType = "smg"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = 3

SWEP.Primary = {
	Ammo = "Pistol",

	ClipSize = 30,
	DefaultClip = 60,

	Damage = 10,
	Delay = 60 / 1000,
	BurstDelay = 60 / 3000,
	BurstEndDelay = 0.2,

	Range = 500,
	Accuracy = 12,

	RangeModifier = 0.85,

	Recoil = {
		MinAng = Angle(1, -0.3, 0),
		MaxAng = Angle(1.5, 0.3, 0),
		Punch = 0.4,
		Ratio = 0.3
	},

	Sound = "Entropy_MP5K.Single",
	TracerName = "Tracer"
}

function SWEP:AltFire()
	self.Primary.Automatic = false

	self:SetFiremode(self:GetFiremode() == -1 and 3 or -1)

	self:EmitSound("Weapon_SMG1.Special1")
end

SWEP.NPCData = {
	Burst = {3, 3},
	Delay = SWEP.Primary.BurstDelay,
	Rest = {SWEP.Primary.BurstEndDelay, SWEP.Primary.BurstEndDelay * 3}
}

list.Add("NPCUsableWeapons", {class = "simple_ez2_mp5k", title = "Simple Weapons: " .. SWEP.PrintName})

-- Dynamic Weapon Reverb support
SWEP.dwr_customAmmoType = "smg1"

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
	name = "Entropy_MP5K.Single",
	channel = CHAN_WEAPON,
	volume = 0.55,
	level = 140,
	pitch = {98, 102},
	sound = "simple_weapons/weapons/ez2/smg2/smg2_fire1.wav"
})

sound.Add({
	name = "Entropy_MP5K.FirstDraw",
	channel = CHAN_AUTO,
	volume = 1,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_firstdraw.wav"
})

sound.Add({
	name = "Entropy_MP5K.Draw",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_draw.wav"
})

sound.Add({
	name = "Entropy_MP5K.Movement1",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_movement1.wav"
})

sound.Add({
	name = "Entropy_MP5K.Movement2",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_movement2.wav"
})

sound.Add({
	name = "Entropy_MP5K.Movement3",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_movement3.wav"
})

sound.Add({
	name = "Entropy_MP5K.Inspect1",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_inspect1.wav"
})

sound.Add({
	name = "Entropy_MP5K.Inspect2",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_inspect2.wav"
})

sound.Add({
	name = "Entropy_MP5K.Inspect3",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_inspect3.wav"
})

sound.Add({
	name = "Entropy_MP5K.Grab1",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_grab1.wav"
})

sound.Add({
	name = "Entropy_MP5K.Grab2",
	channel = CHAN_AUTO,
	volume = 0.1,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_grab2.wav"
})

sound.Add({
	name = "Entropy_MP5K.Clipin",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_clipin.wav"
})

sound.Add({
	name = "Entropy_MP5K.Clipout",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_clipout.wav"
})

sound.Add({
	name = "Entropy_MP5K.Slideback",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_slideback.wav"
})

sound.Add({
	name = "Entropy_MP5K.Slideforward",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_slideforward.wav"
})

sound.Add({
	name = "Entropy_MP5K.Slideforward2",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/smg2/smg2_slideforward2.wav"
})
