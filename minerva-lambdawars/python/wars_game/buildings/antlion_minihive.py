from vmath import Vector, QAngle
from core.buildings import WarsBuildingInfo, UnitBaseFactory as BaseClass
from entities import entity

@entity('build_ant_hive')
class AntlionHiveInfo(BaseClass):
    # Settings     
    autoconstruct = False
    buildtarget = Vector(0, -180, 0)
    buildangle = QAngle(0, 0, 0)

# Register unit
class AntlionHiveInfo(WarsBuildingInfo):
    modname     = __name__
    name        = "build_ant_hive"
    cls_name    = "build_ant_hive"
    image_name  = "vgui/minervawars/antlions/buildings/build_ant_hive.vmt"  
    abilities   = {                      
        0 : 'unit_antlion_small',
        1 : 'unit_antlion',
        8 : 'cancel',
    }
    health = 1250
    modelname = 'models/props_wasteland/rockcliff_cluster02c.mdl'
    displayname = "Antlion Hive"
    description = ""
    generateresources = {'type' : 'grubs', 'amount' : 1.0, 'interval' : 60}
    costs = [('grubs', 35)]
    providespopulation = 8
    buildtime = 40
    sai_hint = WarsBuildingInfo.sai_hint | set(['sai_building_barracks', 'sai_building_specops', 'sai_building_population'])

class AntlionMiniHiveInfo(AntlionHiveInfo):
    name        = "build_ant_minihive" 
    image_name  = "vgui/minervawars/antlions/buildings/build_ant_minihive.vmt"  
    abilities   = {                      
        0 : 'unit_antlion_small',
        8 : 'cancel',
    }
    health = 1000
    modelname = 'models/props_wasteland/rockcliff_cluster03b.mdl'
    displayname = "Antlion Mini-Hive"
    description = ""
    costs = [('grubs', 5)]
    providespopulation = 7
    buildtime = 32
    sai_hint = WarsBuildingInfo.sai_hint | set(['sai_building_barracks', 'sai_building_population'])

class AntlionCaveInfo(AntlionMiniHiveInfo):
    name        = "build_ant_cave" 
    image_name  = 'vgui/rebels/buildings/build_reb_vortigauntden'
    abilities   = {                      
        0 : 'unit_antlion_small',
        1 : 'unit_antlion',
        2 : 'unit_antlionguard',
        8 : 'cancel',
    }
    health = 900
    modelname = 'models/pg_props/pg_buildings/rebels/pg_reb_vortigauntden.mdl'
    explodemodel = 'models/pg_props/pg_buildings/rebels/pg_reb_vortigauntden_destruction.mdl'
    displayname = "Antlion Cave"
    description = ""
    costs = [('grubs', 10)]
    providespopulation = 5
    buildtime = 20
    scale = 1.1
    sai_hint = WarsBuildingInfo.sai_hint | set(['sai_building_barracks', 'sai_building_population'])