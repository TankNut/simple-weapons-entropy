// Created by Crowbar 0.63

$modelname "simple_weapons/weapons/ez2/w_pulsepistol.mdl"

$bodygroup "studio"
{
	studio "W_pulsepistol_w_pistol_reference.smd"
}

$surfaceprop "weapon"
$contents "solid"

$cdmaterials "models\simple_weapons\weapons\ez2\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 6.31 -0.68 0.42 rotate 4.49 -1.17 -98.82
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

$definebone "ValveBiped.Bip01_R_Hand" "" 1.783728 -5.776747 -3.330453 4.619129 90.65911 -171.248212 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 4.999946 -1.500069 -5.000038 0 0 0 0 0 0 0 0 0

$sequence "idle" {
	"w_pulsepistol_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_pulsepistol_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	{ event 3014 1 "" }
	{ event AE_NPC_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pulsepistol_physics.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
