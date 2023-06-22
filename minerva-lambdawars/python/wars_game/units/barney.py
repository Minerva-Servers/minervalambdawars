from core.units import UnitInfo

class BarneyInfo(UnitInfo):
    name = 'unit_barney'
    cls_name = 'unit_citizen'
    health = 500
    modelname = 'models/barney.mdl'
    hulltype = 'HULL_HUMAN'
    costs = [('requisition', 5)] # List of costs required to start producing this unit
    buildtime = 5 # Build time in seconds when being produced at a building
    weapons = ['weapon_shotgun'] # List of weapons. The last weapon in the list is the default active weapon