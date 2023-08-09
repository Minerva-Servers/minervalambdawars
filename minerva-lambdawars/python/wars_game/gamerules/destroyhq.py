from srcbase import TEAM_INVALID, TEAM_UNASSIGNED, TEAM_SPECTATOR
from core.gamerules import GamerulesInfo, WarsBaseGameRules
from core.buildings.base import constructedlistpertype
from core.resources import SetResource

class DestroyHQ(WarsBaseGameRules):
    def __init__(self):
        super().__init__()

    def CheckGameOver(self):
        if self.gameover:
            if self.intermissionendtime < gpGlobals.curtime:
                self.ChangeToGamelobby()
            return True
        return False

    def MainThink(self):
        super().MainThink()
        if self.gameover:
            return

        counts = set()
        for data in self.gameplayers:
            if self.IsPlayerDefeated(data):
                continue
            ownernumber = data['ownernumber']

            building_types = ['build_comb_hq', 'build_reb_hq', 'build_comb_garrison', 'build_reb_barracks', 
                            'build_comb_mech_factory', 'build_reb_specialops', 'build_comb_specialops', 
                            'build_reb_vortigauntden', 'build_comb_synthfactory', 'build_reb_junkyard',
                            'minervawars_build_comb_hq',
                            'minervawars_build_reb_hq']
            
            countunits = sum(len([b for b in constructedlistpertype[ownernumber][b_type] if b.IsAlive()]) for b_type in building_types)
            
            if not countunits:
                self.PlayerDefeated(data)
                continue
            if data['team'] not in (TEAM_INVALID, TEAM_UNASSIGNED, TEAM_SPECTATOR):
                counts.add(data['team'])
            else:
                counts.add(data)

        if len(counts) == 1:
            winners, losers = self.CalculateWinnersAndLosers(list(counts)[0])
            self.EndGame(winners, losers)

    def StartGame(self):
        super().StartGame()

        for data in self.gameplayers:
            SetResource(data['ownernumber'], self.GetMainResource(), 100)

    def ClientUpdateEndGameStats(self, playersteamid, stats, winners, losers):
        super().ClientUpdateEndGameStats(playersteamid, stats, winners, losers)

        stats.destroyhq_games += 1
        if self.GetPlayerGameData(steamid=playersteamid, gameplayers=winners) is not None:
            stats.destroyhq_wins += 1

class DestroyHQInfo(GamerulesInfo):
    name = 'destroyhq'
    displayname = '#Destroy_HQ_Name'
    description = '#Destroy_HQ_Description'
    cls = DestroyHQ
    supportcpu = True
    mappattern = '^hlw_.*$'
    factionpattern = '^destroyhq_.*$'
    minplayers = 2
    allowallsameteam = False
    huds = GamerulesInfo.huds + [
        'core.hud.HudPlayerNames',
    ]
    unit_limits = {
        'unit_rebel_flamer': 30,
        'unit_rebel_winchester': 20,
        'unit_rebel_heavy': 15,
        'unit_rebel_rpg': 12,
        'unit_rebel_veteran': 12,
        'unit_rebel_tau': 12,
        'unit_vortigaunt': 8,
        'unit_rebel_saboteur': 8,
        'unit_dog': 5,
        'unit_combine_elite': 12,
        'unit_combine_sniper': 12,
        'unit_combine_heavy': 12,
        'unit_hunter': 8,
        'unit_crab_synth': 5,
        'unit_strider': 4,
        'unit_scanner': 6,
        'unit_clawscanner': 4,
        'build_reb_detectiontower': 3,
        'build_reb_teleporter': 1,
        'build_reb_barreltrap': 2,
        'build_comb_headcrabcanisterlauncher': 4,
        'build_comb_mortar': 2,
    }

class MinervaWarsInfo(DestroyHQInfo):
    name = 'minervawars'
    displayname = 'Minerva Wars'
    description = 'A Rewritted Lambda Wars Destroy HQ, balanced to perfection.'
    factionpattern = '^minervawars_.*$'
    unit_limits = {
        'unit_dog': 2,
        'unit_strider': 2,
    }