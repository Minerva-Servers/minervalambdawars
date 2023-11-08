from vmath import Vector, QAngle
from core.buildings import WarsBuildingInfo, UnitBaseFactory as BaseClass
from entities import entity 

@entity('build_reb_shack', networked=True)
class RebelsShack(BaseClass):
    # Settings
    autoconstruct = False
    buildtarget = Vector(50, -50, 32)
    buildangle = QAngle(0, 0, 0)
    customeyeoffset = Vector(0,0,60)
    
# Register unit
class RebelShackInfo(WarsBuildingInfo):
    name        = "build_reb_shack" 
    displayname = "#BuildShack_Name"
    description = "#BuildShack_Description"
    cls_name    = "build_reb_shack"
    modelname = 'models/structures/resistance/shack.mdl'
    techrequirements = []
    costs = [[('requisition', 45), ('scrap', 15)], [('kills', 5)]]
    health = 550
    buildtime = 30.0
    abilities   = {
        0: 'unit_rebel_partisan_molotov',
        1: 'unit_rebel_partisan_pistol',
        2: 'unit_rebel_partisan_smg2',
        3: 'unit_rebel_partisan',
        11: 'cancel',
    } 
    sound_select = 'build_reb_billet'
    sound_death = 'build_generic_explode1'
    explodeparticleeffect = 'building_explosion'
    explodeshake = (2, 10, 2, 512) # Amplitude, frequence, duration, radius
    sai_hint = WarsBuildingInfo.sai_hint | set(['sai_building_barracks'])