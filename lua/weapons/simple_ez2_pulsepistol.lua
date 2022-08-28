AddCSLuaFile()

simple_weapons.Include("Convars")

DEFINE_BASECLASS("simple_base")

SWEP.Base = "simple_base"

SWEP.PrintName = "Pulse Pistol"
SWEP.Category = "Simple Weapons: Entropy Zero"

SWEP.Slot = 1

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 54

SWEP.ViewModel = Model("models/simple_weapons/weapons/ez2/c_pulsepistol.mdl")
SWEP.WorldModel = Model("models/simple_weapons/weapons/ez2/w_pulsepistol.mdl")

SWEP.HoldType = "pistol"
SWEP.LowerHoldType = "normal"

SWEP.Firemode = -1

SWEP.Primary = {
	Ammo = "",
	Cost = 10,

	ClipSize = 50,
	DefaultClip = 50,

	Damage = 18,
	Count = 2,

	Delay = 60 / 150,

	ChargeRate = 10,

	Range = 700,
	Accuracy = 12,

	RangeModifier = 0.85,

	Recoil = {
		MinAng = Angle(0.25, -0.6, 0),
		MaxAng = Angle(0.5, 0.6, 0),
		Punch = 0.4,
		Ratio = 0
	},

	Sound = "Entropy_PulsePistol.Single",
	TracerName = "AirboatGunTracer"
}

SWEP.NPCData = {
	Burst = {1, 1},
	Delay = 0.5,
	Rest = {SWEP.Primary.Delay, SWEP.Primary.Delay * 2}
}

list.Add("NPCUsableWeapons", {class = "simple_ez2_pulsepistol", title = "Simple Weapons: " .. SWEP.PrintName})

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

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables(self)

	self:AddNetworkVar("Float", "LastFire")

	if SERVER then
		self:SetLastFire(CurTime())
	end
end

function SWEP:GetAmmoCharge()
	if InfiniteAmmo:GetInt() == 2 then
		return self.Primary.ClipSize
	end

	local ammo = self:Clip1()
	local timeSince = CurTime() - self:GetLastFire()

	if timeSince <= 0 then
		return ammo
	end

	return math.min(math.Round(ammo + timeSince * self.Primary.ChargeRate), self.Primary.ClipSize)
end

function SWEP:IsEmpty()
	return self:GetAmmoCharge() <= self.Primary.Cost
end

function SWEP:PrimaryAttack()
	if self:IsEmpty() then
		self:EmitSound("Entropy_PulsePistol.Empty")
		self:SendTranslatedWeaponAnim(ACT_VM_DRYFIRE)

		self:SetNextIdle(CurTime() + self:SequenceDuration())
		self:SetNextFire(CurTime() + 1.5)

		return
	end

	BaseClass.PrimaryAttack(self)
end

function SWEP:FireWeapon()
	self:SetLastFire(CurTime())

	BaseClass.FireWeapon(self)
end

function SWEP:ConsumeAmmo()
	if self:GetOwner():IsNPC() then
		return
	end

	self:SetClip1(math.max(self:GetAmmoCharge() - self.Primary.Cost, 0))
end

if CLIENT then
	function SWEP:CustomAmmoDisplay()
		return {
			Draw = true,
			PrimaryClip = self:GetAmmoCharge()
		}
	end
end

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

function SWEP:FireAnimationEvent(_, _, event)
	if event == 51 then
		self:EmitSound("Entropy_PulsePistol.Reload")
		self:SetClip1(50)
	end
end

if CLIENT then
	matproxy.Add({
		name = "SimplePulsePistol",
		init = function(self, mat, values)
			self.Target = values.resultvar
		end,
		bind = function(self, mat, ent)
			if not IsValid(ent) or ent:GetClass() != "simple_ez2_pulsepistol" then
				return
			end

			-- local frac = math.max((ent:GetAmmoCharge() - ent.Primary.Cost) / ent.Primary.ClipSize, 0)
			-- local col = math.sin(CurTime() * 30) + 1.5

			-- mat:SetVector(self.Target, LerpVector(frac, Vector(col, 0, 0), Vector(1, 1, 1)))
			mat:SetVector(self.Target, Vector(1, 1, 1))
		end
	})
end

sound.Add({
	name = "Entropy_PulsePistol.Single",
	channel = CHAN_WEAPON,
	volume = 0.92,
	level = 140,
	pitch = {95, 108},
	sound = "simple_weapons/weapons/ez2/pulsepistol/pistol_fire3.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.Charge",
	channel = CHAN_WEAPON,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_charging.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.ChargedFire",
	channel = CHAN_WEAPON,
	volume = 0.95,
	level = 140,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_chargedfire.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.Reload",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_working.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.Draw",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_draw.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.Empty",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_empty.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.FirstDraw",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_firstdraw.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.SlideBack",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_slideback.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.SlideForward",
	channel = CHAN_AUTO,
	volume = 0.7,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_slideforward.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.Movement1",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_movement1.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.Movement2",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_movement2.wav"
})

sound.Add({
	name = "Entropy_PulsePistol.Movement3",
	channel = CHAN_AUTO,
	volume = 0.9,
	level = 75,
	sound = "simple_weapons/weapons/ez2/pulsepistol/pulse_pistol_movement3.wav"
})
