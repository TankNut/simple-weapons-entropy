// Created by Crowbar 0.63

$modelname "simple_weapons/weapons/ez2/w_shotgun.mdl"

$bodygroup "studio"
{
	studio "w_shotgun_shotgun_reference.smd"
}


$surfaceprop "weapon"
$contents "solid"

$cdmaterials "models\simple_weapons\weapons\ez2\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 26.15 0.69 -2.57 rotate 3.96 -0.39 -91.97
$attachment "1" "ValveBiped.Weapon_bone" 5.19 1.39 -0.1 rotate 2.17 88.95 -77.08

$definebone "ValveBiped.Bip01_R_Hand" "" 0.312503 -16.71932 0.282628 12.461603 88.326429 177.528803 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5.000002 -1.5 -5 -0.000001 0 0 0 0 0 0 0 0

$sequence "idle1" {
	"w_shotgun_anims\idle1.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fire" {
	"w_shotgun_anims\fire.smd"
	activity "ACT_RANGE_ATTACK_SHOTGUN" 1
	{ event AE_NPC_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 0 "2" }
	{ event 3004 0 "" }
	fadein 0.2
	fadeout 0.2
	fps 5
}

$sequence "draw" {
	"w_shotgun_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_shotgun_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
