''' Faction definitions for Lambda Wars.

    These structures define the information of a faction, such as which HUD to display
    and which starting building and unit to spawn.
'''

from vmath import Vector
from core.factions import FactionInfo
from core.units import CreateUnitFancy, CreateUnitNoSpawn, PrecacheUnit
from core.buildings import UnitBaseBuilding, CreateDummy
from particles import PrecacheParticleSystem
if isserver: 
    from entities import DispatchSpawn

class WarsFactionInfo(FactionInfo):
    if isserver:
        @classmethod
        def Precache(info):
            super().Precache()
            
            for fortifyunittype in info.fortifyunittypes.values():
                PrecacheUnit(fortifyunittype)
                
    #: Control point model definition.
    #: Defines model information for each possible upgrade level.
    fortifyunittypes = {}
    
    #: Overrun hud html file
    overrunhud_htmlfile = 'ui/viewport/wars/overrun_rebels.html'

class FactionAntlionInfo(WarsFactionInfo):
    name = 'antlions'
    displayname = 'Antlions'
    hud_name = 'rebels_hud'
    startbuilding = 'build_ant_colony'
    startunit = 'unit_antlionworker'
    resources = ['requisition', 'grubs', 'scrap']
    color = Vector(0.2, 0.1, 0)
    announcer_building_under_attack = 'NPC_Antlion.Pain'
    announcer_cp_captured = 'NPC_Antlion.Idle'
    announcer_cp_lost = 'NPC_Antlion.Distracted'
    announcer_cp_under_attack = 'NPC_Antlion.Pain'
    announcer_more_population_required = 'NPC_Antlion.Distracted'
    announcer_research_completed = 'NPC_Antlion.Idle'
    announcer_unit_completed = 'NPC_Antlion.Idle'
    announcer_unit_under_attack = 'NPC_Antlion.Pain'
    victoryparticleffect = 'pg_reb_victory'
    defeatparticleffect = 'pg_reb_defeat'
    
    # Model configuration for control point fortification
    fortifyunittypes = {
        1 : 'control_point_reb_lvl1',
        2 : 'control_point_reb_lvl2',
    }

class FactionAntlionInfo(WarsFactionInfo):
    name = 'zombies'
    displayname = 'Zombies'
    hud_name = 'rebels_hud'
    startbuilding = 'build_zomb_hq'
    startunit = 'unit_zombie'
    resources = ['requisition']
    color = Vector(0.2, 0, 0)
    announcer_building_under_attack = 'Zombie.Pain'
    announcer_cp_captured = 'Zombie.Idle'
    announcer_cp_lost = 'Zombie.Alert'
    announcer_cp_under_attack = 'Zombie.Pain'
    announcer_more_population_required = 'Zombie.Alert'
    announcer_research_completed = 'Zombie.Idle'
    announcer_unit_completed = 'Zombie.Idle'
    announcer_unit_under_attack = 'Zombie.Pain'
    victoryparticleffect = 'pg_reb_victory'
    defeatparticleffect = 'pg_reb_defeat'

class FactionAntlionInfo(WarsFactionInfo):
    name = 'racex'
    displayname = 'Race X'
    hud_name = 'rebels_hud'
    startbuilding = 'build_racex_hq'
    startunit = 'unit_shocktrooper'
    resources = ['requisition']
    color = Vector(0.58, 0.34, 83) 
    victoryparticleffect = 'pg_reb_victory'
    defeatparticleffect = 'pg_reb_defeat'
        
class FactionCombineInfo(WarsFactionInfo):
    name = 'combine'
    displayname = 'Combine'
    hud_name = 'combine_hud'
    startbuilding = 'build_comb_hq'
    startunit = 'unit_stalker'
    resources = ['requisition', 'power', 'scrap']
    announcer_building_under_attack = 'announcer_combine_building_under_attack'
    announcer_cp_captured = 'announcer_combine_control_point_captured'
    announcer_cp_lost = 'announcer_combine_control_point_lost'
    announcer_cp_under_attack = 'announcer_combine_control_point_under_attack'
    announcer_more_population_required = 'announcer_combine_more_population_required'
    announcer_research_completed = 'combine_unit_researchcomplete'
    announcer_unit_completed = 'announcer_combine_unit_complete'
    announcer_unit_under_attack = 'announcer_combine_unit_under_attack'
    color = Vector(0.1, 0.6, 0.9) 
    victoryparticleffect = 'pg_comb_victory'
    defeatparticleffect = 'pg_comb_defeat'
    
    # Model configuration for control point fortification
    fortifyunittypes = {
        1 : 'control_point_comb_lvl1',
        2 : 'control_point_comb_lvl2',
    }
    
    overrunhud_htmlfile = 'ui/viewport/wars/overrun_combine.html'
    
class FactionRebelsInfo(WarsFactionInfo):
    name = 'rebels'
    displayname = 'Rebels'
    hud_name = 'rebels_hud'
    startbuilding = 'build_reb_hq'
    startunit = 'unit_rebel_engineer'
    resources = ['requisition', 'scrap', 'power']
    announcer_building_under_attack = 'announcer_rebel_building_under_attack'
    announcer_cp_captured = 'announcer_rebel_control_point_captured'
    announcer_cp_lost = 'announcer_rebel_control_point_lost'
    announcer_cp_under_attack = 'announcer_rebel_control_point_under_attack'
    announcer_more_population_required = 'announcer_rebel_more_population_required'
    announcer_research_completed = 'announcer_rebel_researchcomplete'
    announcer_unit_completed = 'announcer_rebel_unit_complete'
    announcer_unit_under_attack = 'announcer_rebel_unit_under_attack'
    color = Vector(0.9, 0.6, 0.1)
    victoryparticleffect = 'pg_reb_victory'
    defeatparticleffect = 'pg_reb_defeat'
    
    # Model configuration for control point fortification
    fortifyunittypes = {
        1 : 'control_point_reb_lvl1',
        2 : 'control_point_reb_lvl2',
    }
    
    overrunhud_htmlfile = 'ui/viewport/wars/overrun_rebels.html'
    
class FactionCombineOverrunInfo(FactionCombineInfo):
    name = 'overrun_combine'
    displayname = 'Combine (Overrun)'
    startbuilding = 'overrun_build_comb_hq'
    startunit = 'overrun_unit_stalker'
    resources = ['kills']
    gamerulespattern = '^overrun$'
    
class FactionRebelsOverrunInfo(FactionRebelsInfo):
    name = 'overrun_rebels'
    displayname = 'Rebels (Overrun)'
    startbuilding = 'overrun_build_reb_hq'
    startunit = 'overrun_unit_rebel_engineer'
    resources = ['kills']
    gamerulespattern = '^overrun$'