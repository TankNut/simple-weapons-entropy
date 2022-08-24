AddCSLuaFile()

simple_weapons.Include("Convars")

DEFINE_BASECLASS("simple_hl2_ar2")

SWEP.Base = "simple_hl2_ar2"

SWEP.PrintName = "AR2"
SWEP.Category = "Simple Weapons: Entropy Zero"

SWEP.Slot = 2

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 54

SWEP.ViewModel = Model("models/simple_weapons/weapons/ez2/c_irifle.mdl")
SWEP.WorldModel = Model("models/simple_weapons/weapons/ez2/w_irifle.mdl")

SWEP.HoldType = "ar2"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = -1
SWEP.SwayScale = 3

SWEP.Primary = {
	Ammo = "AR2",

	ClipSize = 30,
	DefaultClip = 60,

	Damage = 22,
	Delay = 60 / 600,

	Range = 1500,
	Accuracy = 12,

	RangeModifier = 0.98,

	Recoil = {
		MinAng = Angle(0.8, -0.6, 0),
		MaxAng = Angle(1, 0.6, 0),
		Punch = 0.4,
		Ratio = 0.2
	},

	Sound = "Entropy_AR2.Single",
	TracerName = "AR2Tracer"
}

SWEP.Secondary = {
	Ammo = "AR2AltFire",
	ChargeSound = "Weapon_CombineGuard.Special1",
	FireSound = "Entropy_AR2_Proto.AltFire_Single"
}

SWEP.NPCData = {
	Burst = {2, 5},
	Delay = SWEP.Primary.Delay,
	Rest = {SWEP.Primary.Delay * 2, SWEP.Primary.Delay * 3}
}

list.Add("NPCUsableWeapons", {class = "simple_ez2_ar2", title = "Simple Weapons: AR2 (Entropy Zero)"})

sound.Add({
	name = "Entropy_AR2.Single",
	channel = CHAN_WEAPON,
	volume = 0.8,
	level = 140,
	pitch = {85, 95},
	sound = "^simple_weapons/weapons/ez2/ar2/fire1.wav"
})

sound.Add({
	name = "Entropy_AR2.AltFire_Single",
	channel = CHAN_WEAPON,
	volume = 0.55,
	level = 140,
	sound = "^simple_weapons/weapons/ez2/ar2/ar2_altfire.wav"
})

sound.Add({
	name = "Entropy_AR2.Reload_Rotate",
	channel = CHAN_STATIC,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2/ar2_reload_rotate.wav"
})

sound.Add({
	name = "Entropy_AR2.Reload_Push",
	channel = CHAN_STATIC,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2/ar2_reload_push.wav"
})

sound.Add({
	name = "Entropy_AR2.Draw",
	channel = CHAN_STATIC,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2/ar2_draw.wav"
})

sound.Add({
	name = "Entropy_AR2.FirstDraw",
	channel = CHAN_STATIC,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2/ar2_firstdraw.wav"
})

sound.Add({
	name = "Entropy_AR2.Inspect1",
	channel = CHAN_STATIC,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2/ar2_inspect1.wav"
})

sound.Add({
	name = "Entropy_AR2.Inspect2",
	channel = CHAN_STATIC,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2/ar2_inspect2.wav"
})

sound.Add({
	name = "Entropy_AR2.Movement1",
	channel = CHAN_STATIC,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2/ar2_movement1.wav"
})

sound.Add({
	name = "Entropy_AR2.Movement2",
	channel = CHAN_STATIC,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2/ar2_movement2.wav"
})

sound.Add({
	name = "Entropy_AR2.Movement3",
	channel = CHAN_STATIC,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2/ar2_movement3.wav"
})

function SWEP:DoImpactEffect(tr, dmgtype)
	if tr.HitSky then
		return
	end

	if not game.SinglePlayer() and IsFirstTimePredicted() then
		return
	end

	local effect = EffectData()

	effect:SetOrigin(tr.HitPos + tr.HitNormal)
	effect:SetNormal(tr.HitNormal)

	util.Effect("AR2Impact", effect)
end

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
