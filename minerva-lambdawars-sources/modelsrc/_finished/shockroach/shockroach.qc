// Created by Crowbar 0.74

$modelname "vj_hlr/opfor/shockroach.mdl"

$bodygroup "studio"
{
	studio "w_shock_rifle_reference.smd"
}


$surfaceprop "alienflesh"

$contents "solid"

$illumposition -0.342 -0.095 6.66

$eyeposition 0 0 20

$cdmaterials "models\hl_resurgence\opfor\shocktrooper\"

$cbox 0 0 0 0 0 0

$bbox -12 -12 0 12 12 24

$hboxset "default"
$hbox 0 "Bone01" -4.89 -3.14 -2.53 5.14 7.016631 0.583248
$hbox 0 "Bone02" -6.54 -4.79 -3.27 7.06 10.24 4.11
$hbox 0 "Bone03" -6.37 -1.03 -2.38 1.6 17.09 1.79
$hbox 0 "Bone05" -1.28 -1.16 -2.41 6.69 17.42 1.69
$hbox 0 "Bone07" -1.42 -1.06 -1.75 1.91 16.92 6.15
$hbox 0 "Bone09" 0 0 -2.3 4.71 1.74 0
$hbox 0 "Bone12" 0 -1.62 -1.87 5.09 0 0
$hbox 0 "Bone15" 0 -3.69 -1.87 4.89 0 0
$hbox 0 "Bone16" 0 -1.82 -3.84 4.07 0 0
$hbox 0 "Bone18" -4.67 0 -2.3 0 1.65 0
$hbox 0 "Bone21" -4.52 -1.62 -1.87 0 0 0
$hbox 0 "Bone24" -4.77 -3.78 -1.87 0 0 0
$hbox 0 "Bone25" -4.03 -1.99 -3.77 0 0 0
$hbox 0 "Bone27" -2.38 -3.233112 0 2.3 0.3 3.76
$hbox 0 "Bone28" -6.69 -16.51 -6.9 6.5 0.4 4.21

$definebone "Bone01" "" -0.253262 -2.542092 5.520731 0 0 0 0 0 0 0 0 0
$definebone "Bone02" "Bone01" 0 7.016631 0 3.500027 2.500101 0 0 0 0 0 0 0
$definebone "Bone03" "Bone02" -3.536983 0.825138 -1.336668 0 0 0 0 0 0 0 0 0
$definebone "Bone05" "Bone02" 3.895846 1.230577 -1.336668 0 0 0 0 0 0 0 0 0
$definebone "Bone07" "Bone02" 0 2.269031 0.492761 0 0 0 0 0 0 0 0 0
$definebone "Bone09" "Bone01" 3.738343 1.413472 0 0 0 0 0 0 0 0 0 0
$definebone "Bone10" "Bone09" 4.539417 1.335123 -2.275333 0 0 0 0 0 0 0 0 0
$definebone "Bone12" "Bone01" 3.738343 -0.366692 0 0 24.000001 0 0 0 0 0 0 0
$definebone "Bone13" "Bone12" 4.984457 -1.246114 -1.84871 0 0 0 0 0 0 0 0 0
$definebone "Bone15" "Bone01" 3.026278 -2.413879 0 0 0 0 0 0 0 0 0 0
$definebone "Bone16" "Bone15" 4.717433 -3.382311 -1.71291 0 0 0 0 0 0 0 0 0
$definebone "Bone18" "Bone01" -3.471319 1.50248 0 0 -22.499996 0 0 0 0 0 0 0
$definebone "Bone19" "Bone18" -4.539418 1.246115 -2.275333 0 0 0 0 0 0 0 0 0
$definebone "Bone21" "Bone01" -4.005368 -0.366692 0 0 0 0 0 0 0 0 0 0
$definebone "Bone22" "Bone21" -4.361401 -1.335122 -1.863913 0 0 0 0 0 0 0 0 0
$definebone "Bone24" "Bone01" -2.848261 -2.324871 0 0 -21.499957 0 0 0 0 0 0 0
$definebone "Bone25" "Bone24" -4.628425 -3.293302 -1.787332 0 0 0 0 0 0 0 0 0
$definebone "Bone27" "Bone01" 0.178016 -1.532474 0.583248 -7.000055 -1.000041 0 0 0 0 0 0 0
$definebone "Bone28" "Bone27" 0 -3.233112 2.299858 0 0 0 0 0 0 0 0 0


$sequence "ragdoll" {
	"shockroach_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle1" {
	"shockroach_anims\idle1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
	loop
}

$sequence "idle2" {
	"shockroach_anims\idle2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "idle3" {
	"shockroach_anims\idle3.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "walk" {
	"shockroach_anims\walk.smd"
	activity "ACT_WALK" 1
	{ event 1100 0 "step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 20 LX
}

$sequence "run" {
	"shockroach_anims\run.smd"
	activity "ACT_RUN" 1
	{ event 1100 0 "step" }
	fadein 0.2
	fadeout 0.2
	fps 50
	loop
	walkframe 20 LX
}

$sequence "angry" {
	"shockroach_anims\angry.smd"
	activity "ACT_ALERT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "flinch" {
	"shockroach_anims\flinch.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "dieback" {
	"shockroach_anims\dieback.smd"
	activity "ACT_DIESIMPLE" 1
	{ event 1100 14 "death" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "180_left" {
	"shockroach_anims\180_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "180_right" {
	"shockroach_anims\180_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$sequence "jump" {
	"shockroach_anims\jump.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event 1100 0 "leap" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_variation1" {
	"shockroach_anims\jump_variation1.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event 1100 0 "leap" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_variation2" {
	"shockroach_anims\jump_variation2.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event 1100 0 "leap" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionjoints "shockroach_physics.smd"
{
	$mass 30
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "Bone01"


	$jointconstrain "Bone28" x limit -60 25 0
	$jointconstrain "Bone28" y limit -35 35 0
	$jointconstrain "Bone28" z limit -30 30 0
}
