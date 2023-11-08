// Created by Crowbar 0.74

$modelname "Weapons/w_mp5k.mdl"

$bodygroup "studio"
{
	studio "w_mp5k_reference.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.293 -0.441 -1.664

$cdmaterials "models\Weapons\v_mp5k\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 24 0.25 -0.4 rotate 2 0 177
$attachment "1" "ValveBiped.Weapon_bone" 4.44 0.67 0 rotate 3 90 -178

$cbox 0 0 0 0 0 0

$bbox -21.035 -1.969 -7.753 18.145 1.522 7.303

$definebone "ValveBiped.Bip01_R_Hand" "" 0.713939 -9.363672 -3.466433 2.274284 90.05084 -178.082074 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 4.999979 -1.500086 -4.999997 0.000115 -0.001031 0.003151 0 0 0 0 0 0


$sequence "idle" {
	"w_mp5k_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_mp5k_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_AR2" 1
	{ event AE_NPC_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event 3007 0 "1" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_mp5k_physics.smd"
{
	$mass 3.1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
