// Created by Crowbar 0.74

$modelname "vj_hlr/opfor/strooper.mdl"

$bodygroup "body"
{
	studio "strooper_reference.smd"
}
$bodygroup "weapons"
{
	studio "strooper_rifle_reference.smd"
	blank
}


$surfaceprop "AlienFlesh"

$contents "solid"

$illumposition -0.457 -6.096 35.108

$eyeposition 0 32 73

$cdmaterials "models\hl_resurgence\opfor\shocktrooper\"

$texturegroup "skinfamilies"
{
	{ "eye_01" }
	{ "eye_02" }
	{ "eye_03" }
	{ "eye_02" }
}

$attachment "muzzle" "Bone58" -2 -25 -5 rotate 0 0 0
$attachment "shock_roach" "Bone58" 0 0 0 rotate 0 0 0
$attachment "eyes" "Bip01 Head" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -32.399 -40.104 -0.635 44.591 39.189 70.85

$hboxset "default"
$hbox 3 "Bip01 Spine" -7.47 -9.91 -11.2 6.56 7.92 11.93
$hbox 2 "Bip01 Spine1" 0 -11.54 -10.44 18.85 9.5 11.17
$hbox 2 "Bip01 Spine2" 0 -10.48 -11.28 22.219999 13.77 11.5
$hbox 1 "Bip01 Head" -5 -5.11 -7.71 14.49 11.99 8.47
$hbox 4 "Bip01 L UpperArm" 0 -4.51 -4.27 20.120001 5.84 4.68
$hbox 4 "Bip01 L Forearm" 0 -2.25 -3.71 14.35 4.07 3.15
$hbox 4 "Bip01 L Hand" -0.1 -0.86 -1.79 4.69 1.67 3.67
$hbox 4 "Bip01 L Finger1" 0 -0.26 -1.83 5.69 1.02 2.04
$hbox 5 "Bip01 R UpperArm" 0 -4.46 -4.63 20.129999 5.88 4.26
$hbox 5 "Bip01 R Forearm" 0 -2.2 -3.16 14.97 4.11 3.69
$hbox 5 "Bip01 R Hand" 0 -0.5 -3.68 4.7 1.66 1.79
$hbox 5 "Bip01 R Finger1" 0 -0.27 -2.04 5.69 1.01 1.83
$hbox 4 "Bone01" -2.81 -11.52 -7.44 3.78 0 2.02
$hbox 4 "Bone02" -3.55 -14.84 -4.73 3.28 0 1.61
$hbox 4 "Bone03" -1.15 -4.51 -3.6 1.01 0 1.79
$hbox 4 "Bone04" -1.39 -5.75 -2.9 0 0 0.91
$hbox 5 "Bone55" -5.5 -9.33 -9.2 1.15 0 1.24
$hbox 5 "Bone56" -4.9 -14.15 -4.72 2.17 0 1.61
$hbox 5 "Bone57" -0.53 -4.61 -3.59 1.76 0 1.8
$hbox 5 "Bone58" 0 -6.19 -2.91 2.09 4.67 3.39
$hbox 6 "Bip01 L Thigh" 0 -5.53 -8.53 23.16 7.06 5.75
$hbox 6 "Bip01 L Calf" 0 -3.49 -2.69 21.85 5.88 2.48
$hbox 6 "Bip01 L HorseLink" 0 -6.9 -4.3 23.73 2.7 3.76
$hbox 6 "Bip01 L Foot" 0 -5.6 -5.51 7 13.57 4.78
$hbox 7 "Bip01 R Thigh" 0 -5.71 -6.43 22.959999 6.89 7.85
$hbox 7 "Bip01 R Calf" 0 -3.6 -3.15 22.1 5.51 2.02
$hbox 7 "Bip01 R HorseLink" 0 -7.15 -4.43 23.629999 2.45 3.62
$hbox 7 "Bip01 R Foot" 0 -5.98 -5.4 7 13.18 4.89
$hbox 3 "Bip01 Tail1" 0 -3.47 -2.27 15.89 3.44 2.99

$definebone "Bip01" "" 0 0 45.723965 0 -89.999927 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 2.175058 0 0 -89.980215 -89.999927 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 5.189426 -2.566562 0.000014 -0.000057 -0.454355 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Spine1" "Bip01 Spine" 6.562431 -0.010792 0 0 7.99998 0 0 0 0 0 0 0
$definebone "Bip01 Spine2" "Bip01 Spine1" 13.688786 -0.006816 0 -0.000057 27.500025 0 0 0 0 0 0 0
$definebone "Bip01 Spine3" "Bip01 Spine2" 9.651577 -0.004795 0 -0.000057 31.500016 0 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine3" 7.065872 -0.003426 0 -0.000115 50.718857 -0.000057 0 0 0 0 0 0
$definebone "Bip01 Neck1" "Bip01 Neck" 6.792419 -0.004387 0 -0.000057 21.218859 0 0 0 0 0 0 0
$definebone "Bip01 Head" "Bip01 Neck1" 5.909584 0 0 0.000057 -20.98349 0 0 0 0 0 0 0
$definebone "Dummy06" "Bip01 Head" 11.28146 0 0 0 0 0 0 0 0 0 0 0
$definebone "Bone12" "Dummy06" -2.946762 3.179443 0.189869 -89.999982 62.500069 0 0 0 0 0 0 0
$definebone "Bone29" "Bone12" 2.988096 -1.611897 -4.546375 0 0 0 0 0 0 0 0 0
$definebone "Bone30" "Bone29" -0.083448 -0.785286 -4.112411 0 0 0 0 0 0 0 0 0
$definebone "Bone11" "Bone12" 2.447384 -4.670366 -2.252518 0 0 0 0 0 0 0 0 0
$definebone "Bone10" "Bone11" 0 -0.991936 -4.215736 0 0 0 0 0 0 0 0 0
$definebone "Bone47" "Bone12" -1.971846 -4.670366 -2.252518 0 0 0 0 0 0 0 0 0
$definebone "Bone48" "Bone47" 0 -0.991936 -4.215729 0 0 0 0 0 0 0 0 0
$definebone "Bone44" "Bone12" -2.417218 -1.611897 -4.546371 0 0 0 0 0 0 0 0 0
$definebone "Bone45" "Bone44" 0.007483 -0.785284 -4.112411 0 0 0 0 0 0 0 0 0
$definebone "Bone32" "Dummy06" -6.348796 7.969818 5.246675 -89.999982 62.500069 0 0 0 0 0 0 0
$definebone "Bone39" "Bone32" 1.260291 -3.593977 -5.009102 0 0 0 0 0 0 0 0 0
$definebone "Bone40" "Bone39" -0.548403 -5.166342 -0.157234 0 0 0 0 0 0 0 0 0
$definebone "Bone41" "Bone40" -0.524378 -1.75206 0.876034 0 0 0 0 0 0 0 0 0
$definebone "Bone50" "Dummy06" -6.348808 7.969841 -4.376892 -89.999982 62.500069 0 0 0 0 0 0 0
$definebone "Bone51" "Bone50" -0.882305 -3.593977 -5.009102 0 0 0 0 0 0 0 0 0
$definebone "Bone52" "Bone51" 0.07339 -5.166342 -0.157234 0 0 0 0 0 0 0 0 0
$definebone "Bone43" "Bone52" 0.499372 -1.75206 0.876034 0 0 0 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" 0.000006 0.005402 1.579405 -81.0432 -113.852136 -116.629728 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 10.168358 0.000008 0 26.575216 -73.683405 -84.033026 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 18.052067 0.000001 0 -0.000002 0.540819 -0.000003 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 14.350021 0.000001 -0.000004 -0.000002 -10.999984 -89.954384 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 0.906754 0.356525 -0.71435 28.819778 22.927256 102.392431 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 3.089085 0 0 0.000004 17.000008 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 4.512581 0.000896 1.128146 -0.485528 18.500355 -0.043257 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 4.973553 0.000002 0.000001 -0.000004 31.500013 0 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 0.000006 0.005417 -1.579405 81.043425 -113.852888 116.628922 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 10.168358 0.000015 -0.000004 -26.57516 -73.683405 84.033026 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 18.052078 -0.000001 0.000008 -0.000002 0.540813 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 14.350021 0.000001 0 0 -10.999988 89.954377 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" 0.906754 0.356522 0.71435 -28.819778 22.927248 -102.392431 0 0 0 0 0 0
$definebone "Bip01 R Finger01" "Bip01 R Finger0" 3.089085 0 0 0.000001 16.999999 -0.000003 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" 4.512585 0.000896 -1.128145 0.485523 18.500349 0.043258 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 4.973553 0 0.000001 -0.000001 31.500006 -0.000001 0 0 0 0 0 0
$definebone "Bone01" "Bip01 Spine1" 8.807056 -2.033768 10.119356 -65.99992 -107.045532 -54.500091 0 0 0 0 0 0
$definebone "Bone02" "Bone01" 0.017733 -10.61623 -3.04554 -16.175917 -13.135115 18.485166 0 0 0 0 0 0
$definebone "Bone03" "Bone02" 0.842911 -14.596571 -1.243855 -1.351553 -11.259598 -14.425016 0 0 0 0 0 0
$definebone "Bone04" "Bone03" 0.491195 -4.254386 -0.781643 -0.000001 -0.000004 -0.000001 0 0 0 0 0 0
$definebone "Bone05" "Bone04" -0.136462 -4.298745 -0.53804 -0.000001 -0.000004 -0.000001 0 0 0 0 0 0
$definebone "Bone07" "Bone03" -0.69072 -1.844374 1.39909 -4.772281 -3.462903 -33.049926 0 0 0 0 0 0
$definebone "Bone55" "Bip01 Spine1" 8.807049 -2.033738 -9.544495 -65.99992 -107.045532 -54.500091 0 0 0 0 0 0
$definebone "Bone56" "Bone55" -4.793653 -8.872259 -4.289497 -16.175917 -13.135115 18.485166 0 0 0 0 0 0
$definebone "Bone57" "Bone56" -4.38618 -13.952513 -1.226048 -1.351553 -11.259598 -14.425016 0 0 0 0 0 0
$definebone "Bone58" "Bone57" 0.491197 -4.254385 -0.781639 -0.000001 -0.000004 -0.000001 0 0 0 0 0 0
$definebone "Bone59" "Bone58" 0.67065 -4.235377 -0.544231 -0.000001 -0.000004 -0.000001 0 0 0 0 0 0
$definebone "Bone61" "Bone57" 1.416272 -1.67895 1.382938 -4.772281 -3.462903 -33.049926 0 0 0 0 0 0
$definebone "Bip01 L Thigh" "Bip01 Spine" -5.209618 2.52531 7.221964 -16.172063 136.308651 165.332338 0 0 0 0 0 0
$definebone "Bip01 L Calf" "Bip01 L Thigh" 17.085249 -0.000004 0.000002 -0.000002 -115.097485 0.000001 0 0 0 0 0 0
$definebone "Bip01 L HorseLink" "Bip01 L Calf" 17.070671 0.000002 -0.000002 -0.000001 86.921076 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Foot" "Bip01 L HorseLink" 21.847939 0 0 -0.973399 -18.250764 -10.320517 0 0 0 0 0 0
$definebone "Bip01 L Toe0" "Bip01 L Foot" 6.953895 6.159885 -1.542555 23.499983 89.999982 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Toe1" "Bip01 L Foot" 6.953895 6.111269 1.489442 -16.999998 89.999975 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Thigh" "Bip01 Spine" -5.209621 2.525349 -7.221958 16.171835 136.308596 -165.33257 0 0 0 0 0 0
$definebone "Bip01 R Calf" "Bip01 R Thigh" 17.085243 0.000004 0 0.000003 -115.09743 0.000003 0 0 0 0 0 0
$definebone "Bip01 R HorseLink" "Bip01 R Calf" 17.070667 0 0 -0.000001 86.921083 0.000003 0 0 0 0 0 0
$definebone "Bip01 R Foot" "Bip01 R HorseLink" 21.847931 0 0.000001 0.973398 -18.250766 10.320577 0 0 0 0 0 0
$definebone "Bip01 R Toe0" "Bip01 R Foot" 6.953893 6.159883 1.542558 -23.499983 89.999982 0 0 0 0 0 0 0
$definebone "Bip01 R Toe1" "Bip01 R Foot" 6.953893 6.111267 -1.489442 16.999999 89.999982 0 0 0 0 0 0 0
$definebone "Bip01 Tail" "Bip01 Spine" -2.786366 -2.446426 -0.000008 0 -172.064951 -0.000344 0 0 0 0 0 0
$definebone "Bip01 Tail1" "Bip01 Tail" 4.388603 -0.005346 0 -0.000057 23.935083 0 0 0 0 0 0 0
$definebone "Bip01 Tail2" "Bip01 Tail1" 7.346947 -0.004677 0 -0.000057 14.935062 0 0 0 0 0 0 0
$definebone "Bip01 Tail3" "Bip01 Tail2" 6.079293 -0.005585 0 -0.000057 18.935048 0 0 0 0 0 0 0
$definebone "Box01" "Bone58" 2.094666 -6.188457 2.921959 -0.43791 -175.510604 -20.34865 0 0 0 0 0 0


$sectionframes 30 200

$poseparameter "move_yaw" -180 180 loop 0
$poseparameter "XR" -70 70 loop 0
$poseparameter "aim_pitch" -90 90 loop 0
$poseparameter "aim_yaw" -90 90 loop 0

$animation "aimup_corrective_animation" "strooper_anims\aimup_corrective_animation.smd" {
}

$animation "aimcenter_corrective_animation" "strooper_anims\aimcenter_corrective_animation.smd" {
}

$animation "aimdown_corrective_animation" "strooper_anims\aimdown_corrective_animation.smd" {
}

$animation "aimright_corrective_animation" "strooper_anims\aimright_corrective_animation.smd" {
}

$animation "aimleft_corrective_animation" "strooper_anims\aimleft_corrective_animation.smd" {
}

$animation "aimleft" "strooper_anims\aimleft.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimleft_corrective_animation" 0
}

$animation "aimcenter" "strooper_anims\aimcenter.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimcenter_corrective_animation" 0
}

$animation "aimright" "strooper_anims\aimright.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimright_corrective_animation" 0
}

$animation "aimup" "strooper_anims\aimup.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimup_corrective_animation" 0
}

$animation "aimdown" "strooper_anims\aimdown.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimdown_corrective_animation" 0
}

$sequence "subtract_" {
	"strooper_anims\subtract_.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	loop
}

$sequence "aim_pitch" {
	"aimup"
	"aimcenter"
	"aimdown"
	autoplay
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "aim_yaw" {
	"aimright"
	"aimcenter"
	"aimleft"
	autoplay
	blend "aim_yaw" -90 90
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "ragdoll" {
	"strooper_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "walk1" {
	"strooper_anims\walk1.smd"
	activity "ACT_WALK" 1
	{ event 1100 17 "step" }
	{ event 1100 34 "step" }
	{ event 1100 51 "step" }
	{ event 1100 68 "step" }
	{ event 1100 85 "step" }
	{ event 1100 102 "step" }
	{ event 1100 119 "step" }
	{ event 1100 136 "step" }
	{ event 1100 153 "step" }
	{ event 1100 170 "step" }
	{ event 1100 187 "step" }
	{ event 1100 204 "step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 204 LX
}

$sequence "run" {
	"strooper_anims\run.smd"
	activity "ACT_RUN" 1
	{ event 1100 12 "step" }
	{ event 1100 24 "step" }
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
	walkframe 24 LX
}

$sequence "victorydance" {
	"strooper_anims\victorydance.smd"
	activity "ACT_VICTORY_DANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 60 LX
}

$sequence "cower" {
	"strooper_anims\cower.smd"
	activity "ACT_COWER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 60 LX
}

$sequence "smflinch" {
	"strooper_anims\smflinch.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 12 LX
}

$sequence "leftlegsmflinchh" {
	"strooper_anims\leftlegsmflinchh.smd"
	activity "ACT_FLINCH_LEFTLEG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 12 LX
}

$sequence "rightlegsmflinch" {
	"strooper_anims\rightlegsmflinch.smd"
	activity "ACT_FLINCH_RIGHTLEG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 12 LX
}

$sequence "rightarmflinch" {
	"strooper_anims\rightarmflinch.smd"
	activity "ACT_FLINCH_RIGHTARM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 12 LX
}

$sequence "leftarmflinch" {
	"strooper_anims\leftarmflinch.smd"
	activity "ACT_FLINCH_LEFTARM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 12 LX
}

$sequence "throwgrenade" {
	"strooper_anims\throwgrenade.smd"
	activity "ACT_SPECIAL_ATTACK2" 1
	{ event 1100 40 "grenade" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 55 LX
}

$sequence "idle1" {
	"strooper_anims\idle1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 300 LX
}

$sequence "idle2" {
	"strooper_anims\idle2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 200 LX
}

$sequence "combatidle" {
	"strooper_anims\combatidle.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 1 LX
}

$sequence "frontkick" {
	"strooper_anims\frontkick.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event 1100 14 "attack" }
	{ event 1100 25 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 36 LX
}

$sequence "crouching_idle" {
	"strooper_anims\crouching_idle.smd"
	activity "ACT_CROUCHIDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 60 LX
}

$sequence "crouching_wait" {
	"strooper_anims\crouching_wait.smd"
	activity "ACT_CROUCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 6 LX
}

$sequence "crouching_mp5" {
	"strooper_anims\crouching_mp5.smd"
	"strooper_anims\crouching_mp5_2.smd"
	activity "ACT_RANGE_ATTACK2" 1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 2 "rangeattack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 12 LX
}

$sequence "standing_mp5" {
	"strooper_anims\standing_mp5.smd"
	"strooper_anims\standing_mp5_2.smd"
	activity "ACT_RANGE_ATTACK1" 1
	blend "XR" -45 45
	blendwidth 2
	{ event 1100 3 "rangeattack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 12 LX
}

$sequence "reload" {
	"strooper_anims\reload.smd"
	activity "ACT_RELOAD" 1
	{ event 1100 7 "reload" }
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "reload_crouch" {
	"strooper_anims\reload_crouch.smd"
	activity "ACT_RELOAD_LOW" 1
	{ event 1100 32 "reload" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "advance_signal" {
	"strooper_anims\advance_signal.smd"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flank_signal" {
	"strooper_anims\flank_signal.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "retreat_signal" {
	"strooper_anims\retreat_signal.smd"
	activity "ACT_SIGNAL3" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "drop_grenade" {
	"strooper_anims\drop_grenade.smd"
	activity "ACT_SPECIAL_ATTACK1" 1
	{ event 1100 1 "grenade" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "limpingwalk" {
	"strooper_anims\limpingwalk.smd"
	activity "ACT_WALK_HURT" 1
	{ event 1100 1 "step" }
	{ event 1100 18 "step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 34 LX
}

$sequence "limpingrun" {
	"strooper_anims\limpingrun.smd"
	activity "ACT_RUN_HURT" 1
	{ event 1100 1 "step" }
	{ event 1100 14 "step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 24 LX
}

$sequence "180L" {
	"strooper_anims\180L.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "180R" {
	"strooper_anims\180R.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "dieback1" {
	"strooper_anims\dieback1.smd"
	activity "ACT_DIEBACKWARD" 1
	{ event 1100 20 "body" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 42 LX
}

$sequence "dieforward" {
	"strooper_anims\dieforward.smd"
	activity "ACT_DIEFORWARD" 1
	{ event 1100 17 "body" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 21 LX
}

$sequence "diesimple" {
	"strooper_anims\diesimple.smd"
	activity "ACT_DIESIMPLE" 1
	{ event 1100 20 "body" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 42 LX
}

$sequence "diebackwards" {
	"strooper_anims\diebackwards.smd"
	activity "ACT_DIEBACKWARD" 1
	{ event 1100 15 "body" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LX
}

$sequence "dieheadshot" {
	"strooper_anims\dieheadshot.smd"
	activity "ACT_DIE_HEADSHOT" 1
	{ event 1100 20 "body" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 42 LX
}

$sequence "diegutshot" {
	"strooper_anims\diegutshot.smd"
	activity "ACT_DIE_GUTSHOT" 1
	{ event 1100 20 "body" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 42 LX
}

$collisionjoints "strooper_physics.smd"
{
	$mass 120
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "bip01"


	$jointconstrain "Bip01 R Thigh" x limit 0 0 0
	$jointconstrain "Bip01 R Thigh" y limit -91 44 0
	$jointconstrain "Bip01 R Thigh" z limit -84 69 0

	$jointconstrain "Bip01 R Calf" x limit 0 0 0
	$jointconstrain "Bip01 R Calf" y limit -44 14 0
	$jointconstrain "Bip01 R Calf" z limit -20 36 0

	$jointconstrain "Bip01 R HorseLink" x limit -46 14 0
	$jointconstrain "Bip01 R HorseLink" y limit 0 0 0
	$jointconstrain "Bip01 R HorseLink" z limit -58 48 0

	$jointconstrain "Bip01 L Thigh" x limit 0 0 0
	$jointconstrain "Bip01 L Thigh" y limit -44 90 0
	$jointconstrain "Bip01 L Thigh" z limit -84 69 0

	$jointconstrain "Bip01 L Calf" x limit 0 0 0
	$jointconstrain "Bip01 L Calf" y limit -14 44 0
	$jointconstrain "Bip01 L Calf" z limit -20 36 0

	$jointconstrain "Bip01 L HorseLink" x limit -14 46 0
	$jointconstrain "Bip01 L HorseLink" y limit 0 0 0
	$jointconstrain "Bip01 L HorseLink" z limit -58 48 0

	$jointconstrain "Bip01 L Foot" x limit -12 46 0
	$jointconstrain "Bip01 L Foot" y limit 0 0 0
	$jointconstrain "Bip01 L Foot" z limit -26 12 0

	$jointconstrain "Bone55" x limit -48 102 0
	$jointconstrain "Bone55" y limit 0 0 0
	$jointconstrain "Bone55" z limit -105 35 0

	$jointconstrain "Bone57" x limit -42 24 0
	$jointconstrain "Bone57" y limit -45 45 0
	$jointconstrain "Bone57" z limit -40 36 0

	$jointconstrain "Bone01" x limit -48 102 0
	$jointconstrain "Bone01" y limit 0 0 0
	$jointconstrain "Bone01" z limit -35 105 0

	$jointconstrain "Bone03" x limit -42 24 0
	$jointconstrain "Bone03" y limit -45 45 0
	$jointconstrain "Bone03" z limit -36 40 0

	$jointconstrain "Bip01 R UpperArm" x limit 0 0 0
	$jointconstrain "Bip01 R UpperArm" y limit -35 75 0
	$jointconstrain "Bip01 R UpperArm" z limit -180 46 0

	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit -92 0 0
	$jointconstrain "Bip01 R Forearm" z limit -126 0 0

	$jointconstrain "Bip01 R Foot" x limit -46 12 0
	$jointconstrain "Bip01 R Foot" y limit 0 0 0
	$jointconstrain "Bip01 R Foot" z limit -26 12 0

	$jointconstrain "Bip01 L UpperArm" x limit 0 0 0
	$jointconstrain "Bip01 L UpperArm" y limit -75 35 0
	$jointconstrain "Bip01 L UpperArm" z limit -180 46 0

	$jointconstrain "Bip01 L Forearm" x limit 0 0 0
	$jointconstrain "Bip01 L Forearm" y limit 0 92 0
	$jointconstrain "Bip01 L Forearm" z limit -126 0 0

	$jointconstrain "Bip01 L Hand" x limit -66 54 0
	$jointconstrain "Bip01 L Hand" y limit -8 28 0
	$jointconstrain "Bip01 L Hand" z limit 0 38 0

	$jointconstrain "Bip01 Head" x limit -18 18 0
	$jointconstrain "Bip01 Head" y limit -40 40 0
	$jointconstrain "Bip01 Head" z limit -30 24 0

	$jointconstrain "Bip01 R Hand" x limit -54 66 0
	$jointconstrain "Bip01 R Hand" y limit -28 8 0
	$jointconstrain "Bip01 R Hand" z limit 0 38 0
}
