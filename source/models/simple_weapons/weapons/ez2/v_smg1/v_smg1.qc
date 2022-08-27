// Created by Crowbar 0.63

$modelname "simple_weapons/weapons/ez2/v_smg1.mdl"

$bodygroup "studio"
{
	studio "v_smg1_smg1.smd"
}
$bodygroup "hands"
{
	studio "v_smg1_hand_rig.smd"
}

$surfaceprop "default"
$contents "solid"

$cdmaterials "models\simple_weapons\weapons\ez2\"

$attachment "muzzle" "smg_body" 0 3.1 13.7 rotate -90 0 0
$attachment "1" "smg_body" -0.5 3 -2 rotate 0 160 180

$definebone "smg_body" "" 0 -6.491374 -6.394161 0 0 89.999983 0 0 0 0 0 0
$definebone "smg_trigger" "smg_body" 0 1.417823 1.413165 0 0 158.875351 0 0 0 0 0 0
$definebone "smg_vgrip" "smg_body" 0 0.796483 7.85723 89.999983 -179.999979 0 0 0 0 0 0 0
$definebone "smg_mag" "" 0 -6.489674 -7.660386 0 0 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "" -7.72385 1.95615 5.599487 2.082816 -91.714674 -130.243512 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 0 11.692561 0.000001 -0.000745 -3.468629 0.000058 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 0 11.481712 0.000001 -83.881253 89.042062 -86.52121 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 0.132558 3.859673 1.19312 26.354801 -45.823787 10.117576 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0 1.31256 -0.000001 0.000234 -25.191517 0.000058 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0 0.729362 0 -0.00069 -13.994948 -0.000053 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" -0.050338 3.942293 0.431055 8.57145 -45.735552 4.588761 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 0.000002 1.539092 0 0.000459 -14.196232 -0.000114 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" -0.000002 1.196321 0 0.000002 -24.68136 -0.000115 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 0.050314 3.883663 -0.431031 -4.920333 -33.802391 1.51851 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" -0.000002 1.719574 0 0.000458 -20.995233 0.456819 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" -0.000002 1.20918 0 -0.000287 -12.397315 0.25554 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 0.14892 3.859833 -1.331271 -20.290785 -29.663563 -2.355945 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 0.000002 1.719429 -0.000001 0.000401 -20.796808 0.378837 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0 1.099669 0 -0.000232 -13.998039 0.241502 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.359828 0.806023 -1.318333 47.251433 -105.181137 -66.786608 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 0.000001 1.789788 0.000002 0.000688 13.095471 0.000183 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 0 1.207001 0.000004 0.000055 20.792645 -0.000274 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "" 7.72385 1.956152 5.599487 2.079608 -88.288672 -49.756802 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 0 11.692558 0.000002 0.000229 -3.459175 -0.000161 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 0 11.481677 0.000005 83.87165 93.269868 90.739043 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 0.142396 3.859707 -1.191965 -26.491094 -46.067062 -9.71009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" -0.000004 1.312562 -0.000002 0.000695 -25.193967 -0.00001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0 0.729362 -0.000001 -0.000224 -13.997393 0.000099 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" -0.046782 3.942329 -0.431434 -8.672683 -45.825112 -4.242924 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 0.000002 1.539092 0 0.000178 -14.197534 0.00017 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" -0.000002 1.196319 0 -0.000282 -24.682887 -0.000234 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 0.046763 3.883686 0.431453 4.920903 -33.790018 -1.255293 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" -0.000004 1.71957 0 -0.000346 -20.997573 -0.315987 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.000004 1.209187 0 0.000054 -12.398277 -0.1771 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 0.137941 3.859856 1.332476 20.289002 -29.558959 2.611771 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 0 1.719421 0.000001 0.000102 -20.798759 -0.233478 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" -0.000002 1.099665 0 -0.000184 -13.999123 -0.148793 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.348916 0.806053 1.32126 -47.003341 -105.181055 67.094622 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 0 1.789781 0.000002 0.000065 13.093409 0.000118 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 0.000002 1.206998 0.000002 0.000232 20.790353 0.00012 0 0 0 0 0 0

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

$sequence "idle01" {
	"v_smg1_anims\idle01.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 30
	loop
}

$sequence "fire01" {
	"v_smg1_anims\fire01.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.025
	fadeout 0.025
	node "Fire"
	fps 30
}

$sequence "fire02" {
	"v_smg1_anims\fire02.smd"
	activity "ACT_VM_RECOIL1" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.025
	fadeout 0.025
	node "Fire"
	fps 30
}

$sequence "fire03" {
	"v_smg1_anims\fire03.smd"
	activity "ACT_VM_RECOIL2" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.025
	fadeout 0.025
	node "Fire"
	fps 30
}

$sequence "fire04" {
	"v_smg1_anims\fire04.smd"
	activity "ACT_VM_RECOIL3" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.025
	fadeout 0.025
	node "Fire"
	fps 30
}

$sequence "fire04alt" {
	"v_smg1_anims\fire04alt.smd"
	activity "ACT_VM_RECOIL3" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.025
	fadeout 0.025
	node "Fire"
	fps 30
}

$sequence "altfire" {
	"v_smg1_anims\altfire.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.025
	fadeout 0.025
	node "Fire"
	fps 30
}

$sequence "dryfire" {
	"v_smg1_anims\dryfire.smd"
	activity "ACT_VM_DRYFIRE" 1
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence "draw" {
	"v_smg1_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_SMG1.Draw" }
	fadein 0.2
	fadeout 0.2
	node "Ready"
	snap
	fps 30
}

$sequence "firstdraw" {
	"v_smg1_anims\firstdraw.smd"
	activity "ACT_VM_FIRSTDRAW" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_SMG1.Inspect1" }
	{ event AE_CL_PLAYSOUND 25 "Entropy_SMG1.Inspect2" }
	{ event AE_CL_PLAYSOUND 50 "Entropy_SMG1.Inspect3" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 30
}

$sequence "reload" {
	"v_smg1_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event AE_CL_PLAYSOUND 2 "Entropy_SMG1.Reload1" }
	{ event AE_CL_PLAYSOUND 23 "Entropy_SMG1.Reload2" }
	{ event AE_CL_PLAYSOUND 36 "Entropy_SMG1.Reload3" }
	{ event AE_CL_PLAYSOUND 49 "Entropy_SMG1.Reload4" }
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 32
}

$sequence "idletolow" {
	"v_smg1_anims\idletolow.smd"
	activity "ACT_VM_LOWERED_TO_IDLE" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_SMG1.Movement1" }
	{ event AE_CL_PLAYSOUND 0 "Entropy.Clothmovement9" }
	fadein 0.2
	fadeout 0.2
	transition "Ready" "Low"
	fps 30
}

$sequence "lowtoidle" {
	"v_smg1_anims\lowtoidle.smd"
	activity "ACT_VM_IDLE_TO_LOWERED" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_SMG1.Movement2" }
	fadein 0.2
	fadeout 0.2
	transition "Low" "Ready"
	fps 30
}

$sequence "lowidle" {
	"v_smg1_anims\lowidle.smd"
	activity "ACT_VM_IDLE_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	node "Low"
	fps 30
	loop
}

$sequence "holster" {
	"v_smg1_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	{ event AE_CL_PLAYSOUND 0 "Entropy_SMG1.Movement3" }
	{ event AE_CL_PLAYSOUND 0 "Entropy.Clothmovement8" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 30
}

$sequence "send" {
	"v_smg1_anims\send.smd"
	activity "ACT_VM_COMMAND_SEND" 1
	{ event AE_CL_PLAYSOUND 1 "Entropy.Clothmovement9" }
	{ event AE_CL_PLAYSOUND 1 "Entropy_SMG1.Movement3" }
	{ event AE_CL_PLAYSOUND 6 "Entropy.Clothsend" }
	{ event AE_CL_PLAYSOUND 29 "Entropy_SMG1.Movement2" }
	{ event AE_CL_PLAYSOUND 36 "Entropy_MP5K.Grab2" }
	fadein 0.25
	fadeout 0.25
	node "0"
	fps 30
}

$sequence "recall" {
	"v_smg1_anims\recall.smd"
	activity "ACT_VM_COMMAND_RECALL" 1
	{ event AE_CL_PLAYSOUND 1 "Entropy.Clothmovement9" }
	{ event AE_CL_PLAYSOUND 1 "Entropy_SMG1.Movement3" }
	{ event AE_CL_PLAYSOUND 6 "Entropy.Clothrecall" }
	{ event AE_CL_PLAYSOUND 37 "Entropy_SMG1.Movement2" }
	{ event AE_CL_PLAYSOUND 46 "Entropy_MP5K.Grab2" }
	fadein 0.25
	fadeout 0.25
	node "0"
	fps 30
}
