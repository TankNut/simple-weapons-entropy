// Created by Crowbar 0.63

$modelname "simple_weapons/weapons/ez2/w_irifle.mdl"

$bodygroup "studio"
{
	studio "W_IRifle_reference.smd"
}

$surfaceprop "weapon"
$contents "solid"

$cdmaterials "models\simple_weapons\weapons\ez2\"

$attachment "muzzle" "ValveBiped.muzzle" -8.5 0 0 rotate 0 0 -90
$attachment "1" "ValveBiped.w_shotgun" 1 -7 3 rotate 0 0 0

$definebone "ValveBiped.Bip01_R_Hand" "" 0.312503 -16.71932 0.282627 12.461603 88.326429 177.528803 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5.000002 -1.5 -5.000001 -0.000001 0 0 0 0 0 0 0 0
$definebone "ValveBiped.w_shotgun" "ValveBiped.Weapon_bone" 4.107145 1.396073 -0.366386 2.167786 88.954561 -77.075714 0 0 0 0 0 0
$definebone "ValveBiped.muzzle" "ValveBiped.Weapon_bone" 28.579779 0.623145 -5.976272 12.956012 -0.38921 -91.965868 0 0 0 0 0 0


$sequence "idle1" {
	"w_irifle_anims\idle1.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fire" {
	"w_irifle_anims\fire.smd"
	activity "ACT_RANGE_ATTACK_AR2" 1
	{ event AE_NPC_MUZZLEFLASH 0 "COMBINE MUZZLE" }
	{ event 3007 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_irifle_physics.smd"
{
	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
