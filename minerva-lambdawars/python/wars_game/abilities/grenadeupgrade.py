from core.abilities import AbilityUpgrade

class GrenadeUnlockAbility(AbilityUpgrade):
    image_name = 'vgui/abilities/ability_grenade_upgrade'
    buildtime = 27.0

    def Completed(self):
        player = self.player

        if player:
            player.grenadeBoostUnlocked = True

class RebelGrenadeUnlockAbility(GrenadeUnlockAbility):            
    name = 'rebel_grenade_upgrade'
    displayname = '#AbilityGrenadeUpgrade_Name'
    description = '#AbilityGrenadeUpgrade_Description'
    costs = [('requisition', 30), ('scrap', 30)]

class CombineGrenadeUnlockAbility(GrenadeUnlockAbility):            
    name = 'combine_grenade_upgrade'
    displayname = '#AbilityGrenadeUpgrade_Name'
    description = '#AbilityGrenadeUpgrade_Description'
    costs = [('requisition', 30), ('power', 30)]