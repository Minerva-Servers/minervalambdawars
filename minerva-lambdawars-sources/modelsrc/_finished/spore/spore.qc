// Created by Crowbar 0.74

$modelname "vj_hlr/weapons/spore.mdl"

$staticprop

$bodygroup "Body"
{
	studio "spore_projectile_reference.smd"
}


$surfaceprop "alienflesh"

$contents "solid"

$illumposition 0 -0.04 0

$cdmaterials "models\hl_resurgence\opfor\spore\"

$cbox 0 0 0 0 0 0

$bbox -1.924 -2.178 -3.688 1.917 2.172 3.673

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"spore_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "spore_physics.smd"
{
	$mass 13
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
