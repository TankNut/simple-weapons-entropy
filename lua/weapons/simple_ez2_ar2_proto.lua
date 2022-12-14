AddCSLuaFile()

SWEP.Base = "simple_hl2_ar2"

SWEP.PrintName = "AR2 Prototype"
SWEP.Category = "Simple Weapons: Entropy Zero"

SWEP.Slot = 2

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 54

SWEP.ViewModel = Model("models/simple_weapons/weapons/ez2/c_irifle_proto.mdl")
SWEP.WorldModel = Model("models/simple_weapons/weapons/ez2/w_irifle_proto.mdl")

SWEP.HoldType = "ar2"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = -1

SWEP.Primary = {
	Ammo = "AR2",

	ClipSize = 90,
	DefaultClip = 90,

	Damage = 22,
	Delay = 0.09,

	Range = 1500,
	Accuracy = 12,

	RangeModifier = 0.98,

	Recoil = {
		MinAng = Angle(1.2, -0.6, 0),
		MaxAng = Angle(1.4, 0.6, 0),
		Punch = 0.4,
		Ratio = 0.2
	},

	Sound = "Entropy_AR2_Proto.Single",
	TracerName = "AR2Tracer"
}

SWEP.Secondary = {
	Ammo = "AR2AltFire",
	ChargeSound = "Entropy_AR2_Proto.Special1",
	FireSound = "Entropy_AR2_Proto.AltFire_Single"
}

SWEP.NPCData = {
	Burst = {5, 10},
	Delay = SWEP.Primary.Delay,
	Rest = {SWEP.Primary.Delay * 2, SWEP.Primary.Delay * 3}
}

list.Add("NPCUsableWeapons", {class = "simple_ez2_ar2_proto", title = "Simple Weapons: " .. SWEP.PrintName})

function SWEP:FireWeapon()
	local ply = self:GetOwner()
	local primary = self.Primary

	self:EmitFireSound()

	self:SendTranslatedWeaponAnim(ACT_VM_PRIMARYATTACK)

	ply:SetAnimation(PLAYER_ATTACK1)

	local damage = self:GetDamage()

	local bullet = {
		Num = primary.Count,
		Src = ply:GetShootPos(),
		Dir = self:GetShootDir(),
		Spread = self:GetSpread(),
		TracerName = primary.TracerName,
		Tracer = primary.TracerName == "" and 0 or 1,
		Force = damage * 0.25,
		Damage = damage,
		Callback = function(attacker, tr, dmginfo)
			dmginfo:ScaleDamage(self:GetDamageFalloff(tr.StartPos:Distance(tr.HitPos)))
		end
	}

	self:ModifyBulletTable(bullet)

	ply:FireBullets(bullet)

	-- Proto AR2 fires two shots, one with very poor accuracy
	bullet.Spread = self:GetSpread(90, 12)

	ply:FireBullets(bullet)
end

sound.Add({
	name = "Entropy_AR2_Proto.Single",
	channel = CHAN_WEAPON,
	volume = 0.8,
	level = 140,
	pitch = {85, 95},
	sound = "simple_weapons/weapons/ez2/ar2_proto/fire1.wav"
})

sound.Add({
	name = "Entropy_AR2_Proto.AltFire_Single",
	channel = CHAN_WEAPON,
	volume = 0.55,
	level = 140,
	sound = "simple_weapons/weapons/ez2/ar2_proto/irifle_fire2.wav"
})

sound.Add({
	name = "Entropy_AR2_Proto.Special1",
	channel = CHAN_WEAPON,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2_proto/charging.wav"
})

sound.Add({
	name = "Entropy_AR2_Proto.Reload_Push",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2_proto/ar2_reload_push.wav"
})

sound.Add({
	name = "Entropy_AR2_Proto.Reload_Slideback",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2_proto/ar2_slideback.wav"
})

sound.Add({
	name = "Entropy_AR2_Proto.Reload_Sliderelease",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2_proto/ar2_sliderelease.wav"
})

sound.Add({
	name = "Entropy_AR2_Proto.Reload_Magdraw",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2_proto/ar2_magdraw.wav"
})

sound.Add({
	name = "Entropy_AR2_Proto.Reload_Magin",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/ar2_proto/ar2_magin.wav"
})
