// Created by Crowbar 0.63

$modelname "simple_weapons/weapons/ez2/w_smg1.mdl"

$bodygroup "studio"
{
	studio "w_smg1_smg1_reference.smd"
}

$surfaceprop "weapon"
$contents "solid"

$mostlyopaque

$cdmaterials "models\simple_weapons\weapons\ez2\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 12.12 0.03 -3.18 rotate 9.02 -0.33 -91.94
$attachment "1" "ValveBiped.Weapon_bone" 2.4 0.57 -1.96 rotate 1.92 89.98 -80.98

$definebone "ValveBiped" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped" 0.267086 -2.58952 10.171795 78.841059 -102.775278 -9.263641 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 4.999995 -1.499978 -5.000011 0.000227 0 0.001031 0 0 0 0 0 0

$sequence "idle" {
	"w_smg1_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_smg1_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_SMG1" 1
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 "" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "attackoffcenter" {
	"w_smg1_anims\attackoffcenter.smd"
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 "lefthand" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$collisionmodel "w_smg1_physics.smd"
{
	$mass 8
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
