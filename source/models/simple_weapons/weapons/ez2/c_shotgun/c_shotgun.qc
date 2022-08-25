// Created by Crowbar 0.63

$modelname "simple_weapons/weapons/ez2/c_shotgun.mdl"

$bodygroup "studio"
{
	studio "v_shotgun_ref.smd"
}

$surfaceprop "default"
$contents "solid"

$cdmaterials "models\simple_weapons\weapons\ez2\"
$cdmaterials "models\weapons\shell\"

$attachment "muzzle" "gun" 0 -24 0.7 rotate 0 -90 90
$attachment "1" "gun" 0 2 0.5 rotate -30 -180 90

$definebone "gun" "" -3.696959 -13.257532 -3.799995 -2.933028 0 0 0 0 0 0 0 0
$definebone "pump" "gun" 0 -8.40593 -0.568226 0 0 0 0 0 0 0 0 0
$definebone "gate" "gun" 0 3.00972 -1.009287 0 0 0 0 0 0 0 0 0
$definebone "bolt" "gun" 0 1.771206 0.571549 0 0 0 0 0 0 0 0 0
$definebone "ring" "gun" 0.79281 8.55938 0.596158 0 0 0 0 0 0 0 0 0
$definebone "shell" "" -9.64168 -3.33676 -9.430296 0 0 0 0 0 0 0 0 0
$definebone "R_SHOULDER" "" -7.723801 1.956146 5.599529 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "R_SHOULDER" -0.000001 0 0 49.711914 175.833905 176.780542 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692558 0.000007 0.00001 -0.000002 -3.45929 0.000115 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.48171 0.000064 0.000013 6.107215 2.536485 -89.62504 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.85968 -0.132545 1.193112 -9.056459 -50.352725 26.713411 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.312559 -0.000006 0.000003 -0.000114 -25.191124 -0.000065 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.729365 -0.00001 0.000001 0.000116 -13.995753 -0.000063 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.942299 0.050349 0.431047 -4.537196 -46.421033 8.598837 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.539092 0.000011 0.000003 -0.000343 -14.195887 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.196327 -0.000002 -0.000005 0.000402 -24.681297 0.000054 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.883663 -0.050303 -0.431039 -1.512723 -33.672205 -4.921936 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.719576 0.000008 0.000004 -0.457277 -20.994829 0.000059 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.20918 -0.000004 -0.000006 -0.255252 -12.397762 -0.000112 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.859837 -0.14891 -1.331279 2.209726 -30.48129 -20.306547 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.719429 0.000013 0.000004 -0.379412 -20.796191 0.000065 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.099668 -0.000002 -0.000009 -0.24104 -13.998224 -0.000101 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.806019 -0.359825 -1.318334 38.596378 -45.467173 69.981525 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.789785 -0.000002 0.000004 0.000111 13.095082 0.000447 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.207005 0.000006 0.000006 0.000057 20.792938 -0.000067 0 0 0 0 0 0
$definebone "L_SHOULDER" "" 7.72385 1.956152 5.599487 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "L_SHOULDER" 0 0 0 49.712293 4.166435 3.216699 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692554 -0.000015 0.000002 0.000005 -3.45929 0.000287 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.481675 0.00004 -0.000026 -6.127771 2.526801 90.079684 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.859707 -0.142396 -1.19197 8.682142 -50.431512 -26.82222 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.312562 -0.000008 -0.000006 0.000049 -25.19409 0.000391 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.729361 0.000004 -0.000001 -0.000179 -13.997462 -0.000292 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.942326 0.046782 -0.431439 4.19428 -46.465958 -8.696235 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.539095 0.000002 -0.000003 0.000054 -14.197708 -0.000064 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.196318 -0.000002 0.000002 0.000282 -24.682822 -0.000122 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.883682 -0.046764 0.431448 1.250824 -33.682255 4.921822 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.719572 0 0.000003 0.3161 -20.997574 -0.000054 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.209186 -0.000006 0.000003 0.17693 -12.398554 0.00006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.859856 -0.137942 1.332471 -2.449567 -30.465144 20.308545 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.719425 -0.000002 0 0.233423 -20.798925 -0.000227 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.099663 0.000004 0.000001 0.14874 -13.999055 0.000065 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.806049 -0.348915 1.321259 -38.916096 -45.196004 -70.054116 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.789783 -0.000002 -0.000002 0.000006 13.093468 -0.000068 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.206999 -0.000002 0 0.000009 20.790232 0.000222 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"

$sectionframes 30 180

$sequence "idle01" {
	"v_shotgun_anims\idle01.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.25
	fadeout 0.25
	node "0"
	fps 30
	loop
}

$sequence "fire01" {
	"v_shotgun_anims\fire01.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	fadein 0.2
	fadeout 0.025
	node "2"
	snap
	fps 24
}

$sequence "altfire" {
	"v_shotgun_anims\altfire.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 1 "2" }
	{ event AE_MUZZLEFLASH 3 "SHOTGUN MUZZLE" }
	fadein 0.2
	fadeout 0.075
	snap
	fps 25
}

$sequence "draw" {
	"v_shotgun_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_Shotgun.Draw" }
	{ event AE_CL_PLAYSOUND 0 "Entropy.Clothmovement4" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 24
}

$sequence "firstdraw" {
	"v_shotgun_anims\firstdraw.smd"
	activity "ACT_VM_FIRSTDRAW" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_Shotgun.Draw" }
	{ event AE_CL_PLAYSOUND 0 "Entropy.Clothmovement4" }
	{ event AE_CL_PLAYSOUND 5 "Entropy_Shotgun.Special1" }
	fadein 0.2
	fadeout 0.5
	node "0"
	fps 24
}

$sequence "holster" {
	"v_shotgun_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	{ event AE_CL_PLAYSOUND 1 "Entropy_Shotgun.Movement2" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}

$sequence "reload1" {
	"v_shotgun_anims\reload1.smd"
	activity "ACT_SHOTGUN_RELOAD_START" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_Shotgun.Movement1" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}

$sequence "reload2" {
	"v_shotgun_anims\reload2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.025
	fadeout 0.025
	node "0"
	fps 30
}

$sequence "reload3" {
	"v_shotgun_anims\reload3.smd"
	activity "ACT_SHOTGUN_RELOAD_FINISH" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_Shotgun.Movement3" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}

$sequence "pump" {
	"v_shotgun_anims\pump.smd"
	activity "ACT_SHOTGUN_PUMP" 1
	{ event 6001 3 "2" }
	fadein 0.25
	fadeout 0.25
	node "0"
	fps 30
}

$sequence "dryfire" {
	"v_shotgun_anims\dryfire.smd"
	activity "ACT_VM_DRYFIRE" 1
	fadein 0.2
	fadeout 0.2
	node "2"
	fps 30
}

$sequence "lowered" {
	"v_shotgun_anims\lowered.smd"
	activity "ACT_VM_IDLE_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	node "1"
	fps 30
	loop
}

$sequence "lowered_to_idle" {
	"v_shotgun_anims\lowered_to_idle.smd"
	activity "ACT_VM_LOWERED_TO_IDLE" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_Shotgun.Movement3" }
	fadein 0.2
	fadeout 0.2
	transition "1" "0"
	fps 30
}

$sequence "idle_to_lowered" {
	"v_shotgun_anims\idle_to_lowered.smd"
	activity "ACT_VM_IDLE_TO_LOWERED" 1
	{ event AE_CL_PLAYSOUND 1 "Entropy_Shotgun.Movement2" }
	fadein 0.2
	fadeout 0.2
	transition "0" "1"
	fps 30
}

$sequence "fire" {
	"v_shotgun_anims\fire.smd"
	activity "ACT_RANGE_ATTACK_SHOTGUN" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 0 "3" }
	{ event 3004 0 "" }
	fadein 0.2
	fadeout 0.2
	fps 5
}

$sequence "send" {
	"v_shotgun_anims\send.smd"
	activity "ACT_VM_COMMAND_SEND" 1
	{ event AE_CL_PLAYSOUND 1 "Entropy_Shotgun.Movement2" }
	{ event AE_CL_PLAYSOUND 5 "Entropy.Clothsend" }
	{ event AE_CL_PLAYSOUND 36 "Entropy_Shotgun.Movement3" }
	fadein 0.25
	fadeout 0.25
	node "0"
	fps 30
}

$sequence "recall" {
	"v_shotgun_anims\recall.smd"
	activity "ACT_VM_COMMAND_RECALL" 1
	{ event AE_CL_PLAYSOUND 1 "Entropy_Shotgun.Movement2" }
	{ event AE_CL_PLAYSOUND 3 "Entropy.Clothrecall" }
	{ event AE_CL_PLAYSOUND 42 "Entropy_Shotgun.Movement3" }
	fadein 0.25
	fadeout 0.25
	node "0"
	fps 32
}

$sequence "firstdraw_pump" {
	"v_shotgun_anims\firstdraw_pump.smd"
	activity "ACT_VM_FIRSTDRAW_PUMP" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_Shotgun.Draw" }
	{ event AE_CL_PLAYSOUND 0 "Entropy.Clothmovement4" }
	{ event AE_CL_PLAYSOUND 5 "Entropy_Shotgun.Special1" }
	{ event AE_CL_PLAYSOUND 15 "Entropy_Shotgun.Movement3" }
	{ event 6001 9 "2" }
	fadein 0.2
	fadeout 0.5
	node "0"
	fps 24
}
