from vmath import Vector, QAngle
from core.buildings import UnitBaseFactory as BaseClass
from .basepowered import PoweredBuildingInfo, BaseFactoryPoweredBuilding
from entities import entity 

@entity('build_comb_vehiclebay', networked=True)
class CombineGarrison(BaseFactoryPoweredBuilding, BaseClass):
    # Settings
    autoconstruct = False
    buildtarget = Vector(0, -210, 32)
    buildangle = QAngle(0, 0, 0)
    customeyeoffset = Vector(0, 0, 60)
    
# Register unit
class GarrisonInfo(PoweredBuildingInfo):
    name = 'build_comb_vehiclebay'
    cls_name = 'build_comb_vehiclebay'
    displayname = 'Combine Vehicle Bay'
    description = ''
    image_name = 'vgui\minervawars\combine/buildings/build_comb_synthfactory'
    modelname = 'models/structures/combine/synthfac.mdl'
    techrequirements = ['build_comb_synthfactory']
    costs = [('requisition', 95), ('power', 120)]
    health = 1000
    buildtime = 100.0
    abilities = {
        0: "unit_combine_apc",
        1: "unit_combine_helicopter",
        11: 'cancel',
    } 
    sound_work = 'combine_armory_working'
    sound_select = 'build_comb_tech_center'
    sound_death = 'build_comb_armory_destroy'
    explodeparticleeffect = 'building_explosion'
    explodeshake = (2, 10, 2, 512) # Amplitude, frequence, duration, radius
    sai_hint = PoweredBuildingInfo.sai_hint | set(['sai_building_barracks', 'sai_building_synth'])
