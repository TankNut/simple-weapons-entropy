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

	ChargeRate = 5,

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
	self:AddNetworkVar("Float", "ChargeStart")

	if SERVER then
		self:SetLastFire(CurTime())
	end
end

function SWEP:GetAmmoCharge()
	if InfiniteAmmo:GetInt() == 2 then
		return self.Primary.ClipSize
	end

	local ammo = self:Clip1()

	if self:GetChargeStart() != 0 then
		return ammo
	end

	local timeSince = CurTime() - self:GetLastFire()

	if timeSince <= 0 then
		return ammo
	end

	return math.min(math.Round(ammo + timeSince * self.Primary.ChargeRate), self.Primary.ClipSize)
end

function SWEP:GetAltCharge()
	if self:GetChargeStart() == 0 then
		return 0
	end

	local timeSince = CurTime() - self:GetChargeStart()

	return math.min(math.Round(timeSince * self.Primary.ChargeRate * 2), self.Primary.ClipSize - 5) + 5
end

function SWEP:IsEmpty()
	return self:GetAmmoCharge() < self.Primary.Cost
end

function SWEP:IsCharging()
	return self:GetChargeStart() != 0
end

function SWEP:Think()
	BaseClass.Think(self)

	local start = self:GetChargeStart()

	if start != 0 and CurTime() - start > 0.2 then
		local charge = self:GetAltCharge()

		if charge == self.Primary.ClipSize or self:GetAmmoCharge() - self:GetAltCharge() <= 0 or not self:IsAltFireHeld() then
			self:SetChargeStart(0)
			self:SetClip1(math.max(self:Clip1() - charge, 0))

			if not game.SinglePlayer() or SERVER then
				self:FireChargeShot(charge)
			end
		end
	end
end

function SWEP:CanPrimaryFire()
	if self:HandleAutoRaise() or self:HandleReloadAbort() then
		return false
	end

	if self:IsCharging() then
		return false
	end

	if self:IsEmpty() then
		self:EmitSound("Entropy_PulsePistol.Empty")
		self:SendTranslatedWeaponAnim(ACT_VM_DRYFIRE)

		self:SetNextIdle(CurTime() + self:SequenceDuration())
		self:SetNextFire(CurTime() + 1.5)

		return false
	end

	return true
end

function SWEP:FireWeapon()
	self:SetLastFire(CurTime())

	BaseClass.FireWeapon(self)
end

function SWEP:CanAltFire()
	if self:GetNextFire() > CurTime() or self:IsCharging() then
		return false
	end

	return true
end

function SWEP:AltFire()
	self.Secondary.Automatic = true

	if self:IsEmpty() then
		self:EmitSound("Entropy_PulsePistol.Empty")
		self:SendTranslatedWeaponAnim(ACT_VM_DRYFIRE)

		self:SetNextIdle(CurTime() + self:SequenceDuration())
		self:SetNextFire(CurTime() + 1.5)

		return false
	end

	self:EmitSound("Entropy_PulsePistol.Charge")

	self:SetClip1(self:GetAmmoCharge())

	self:SetChargeStart(CurTime())

	self:SendTranslatedWeaponAnim()
end

function SWEP:FireChargeShot(charge)
	local ply = self:GetOwner()
	local primary = self.Primary

	self:EmitSound("Entropy_PulsePistol.ChargedFire")

	self:SendTranslatedWeaponAnim(ACT_VM_PRIMARYATTACK)

	ply:SetAnimation(PLAYER_ATTACK1)

	local damage = self:GetDamage()

	local bullet = {
		Num = math.floor(charge / 5),
		Src = ply:GetShootPos(),
		Dir = self:GetShootDir(),
		Spread = self:GetSpread(),
		TracerName = primary.TracerName,
		Tracer = primary.TracerName == "" and 0 or primary.TracerFrequency,
		Force = damage * 0.25,
		Damage = damage,
		Callback = function(attacker, tr, dmginfo)
			dmginfo:ScaleDamage(self:GetDamageFalloff(tr.StartPos:Distance(tr.HitPos)))
		end
	}

	self:ModifyBulletTable(bullet)

	ply:FireBullets(bullet)

	self:ApplyRecoil()

	self:SetNextIdle(CurTime() + self:SequenceDuration())
	self:SetNextFire(CurTime() + self:GetDelay())

	self:SetLastFire(CurTime())
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
			PrimaryClip = math.max(self:GetAmmoCharge() - self:GetAltCharge(), 0),
			PrimaryAmmo = self:GetAltCharge()
		}
	end

	local sprite = CreateMaterial("simple_ez2_pulsepistol_sprite5", "UnlitGeneric", {
		["$basetexture"] = "effects/fluttercore",
		["$additive"] = 1,
		["$vertexcolor"] = 1,
		["$vertexalpha"] = 1
	})

	local color = Color(255, 255, 255)

	function SWEP:PreDrawViewModel(vm)
		local charge = self:GetAltCharge()

		if charge > 0 then
			local pos = vm:GetAttachment(1).Pos
			local frac = (charge - 5) / (self.Primary.ClipSize - 5)

			color.a = frac * 255

			cam.Start3D()
				cam.IgnoreZ(true)

				render.SetMaterial(sprite)
				render.DrawSprite(pos, 5, 5, color)
			cam.End3D()

			cam.IgnoreZ(true)
		end
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
			if ent:GetClass() == "viewmodel" then
				ent = ent:GetOwner():GetActiveWeapon()
			end

			if not IsValid(ent) or ent:GetClass() != "simple_ez2_pulsepistol" then
				return
			end

			local frac = (ent:GetAltCharge() - 5) / (ent.Primary.ClipSize - 5)
			local col = math.sin(CurTime() / (1 - frac)) * 0.5 + 0.5

			mat:SetVector(self.Target, LerpVector(frac, Vector(1, 1, 1), Vector(0, col, 0)))
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
