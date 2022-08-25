// Created by Crowbar 0.63

$modelname "simple_weapons/weapons/ez2/w_357.mdl"

$bodygroup "studio"
{
	studio "w_357_reference.smd"
}

$surfaceprop "weapon"
$contents "solid"

$cdmaterials "models\simple_weapons\weapons\ez2\"

$attachment "muzzle" "ValveBiped.Muzzle" 0 0 0 rotate -90 -90 0

$definebone "ValveBiped.Bip01_R_Hand" "" 3.12431 -6.629759 1.348687 -3.681827 81.270912 100.578272 0 0 0 0 0 0
$definebone "MAXSceneRoot.Cylinder01" "ValveBiped.Bip01_R_Hand" 5.979659 -2.458369 -3.705952 -76.763397 48.593924 -53.091467 0 0 0 0 0 0
$definebone "ValveBiped.Muzzle" "MAXSceneRoot.Cylinder01" -1.185498 0.114683 -9.047256 89.51159 -0.217817 -90.225174 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_R_Hand"

$sequence "idle" {
	"w_357_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_357_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	{ event 5003 0 "2" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_357_physics.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
