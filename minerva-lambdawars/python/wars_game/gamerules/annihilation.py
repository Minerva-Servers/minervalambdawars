from srcbase import TEAM_INVALID, TEAM_UNASSIGNED, TEAM_SPECTATOR
from playermgr import OWNER_LAST
from core.gamerules import GamerulesInfo, WarsBaseGameRules
from utils import UTIL_GetPlayers
from core.buildings.base import priobuildinglist, constructedlistpertype
from core.resources import SetResource, ResourceInfo
from wars_game.resources import ResRequisitionInfo

class Annihilation(WarsBaseGameRules):
    def CheckGameOver(self):
        if self.gameover:   # someone else quit the game already
            # check to see if we should change levels now
            if self.intermissionendtime < gpGlobals.curtime:
                self.ChangeToGamelobby()  # intermission is over
            return True
        return False
        
    def MainThink(self):
        super().MainThink()
        if self.gameover:
            return
          
        # Check winning conditions (only one player or team left alive)
        # Only check the gamelobby players
        counts = set()
        for data in self.gameplayers:
            if self.IsPlayerDefeated(data):
                continue
            ownernumber = data['ownernumber']

            # add antlion
            countunitsantcolony = len([b for b in constructedlistpertype[ownernumber]['build_ant_colony'] if b.IsAlive()])
            countunitsantminicolony = len([b for b in constructedlistpertype[ownernumber]['build_ant_minicolony'] if b.IsAlive()])
            countunits = countunitsantcolony + countunitsantminicolony

            # add combine
            countunitscombgar = len([b for b in constructedlistpertype[ownernumber]['build_comb_garrison'] if b.IsAlive()])
            countunitscombhq = len([b for b in constructedlistpertype[ownernumber]['build_comb_hq'] if b.IsAlive()])
            countunitscombmech = len([b for b in constructedlistpertype[ownernumber]['build_comb_mech_factory'] if b.IsAlive()])
            countunitscombspecops = len([b for b in constructedlistpertype[ownernumber]['build_comb_specialops'] if b.IsAlive()])
            countunitscombsynth = len([b for b in constructedlistpertype[ownernumber]['build_comb_synthfactory'] if b.IsAlive()])
            countunitscombvehicle = len([b for b in constructedlistpertype[ownernumber]['build_comb_vehiclebay'] if b.IsAlive()])
            countunits = countunits + countunitscombgar + countunitscombhq + countunitscombmech + countunitscombspecops + countunitscombsynth + countunitscombvehicle

            # add rebel
            countunitsrebbar = len([b for b in constructedlistpertype[ownernumber]['build_reb_barracks'] if b.IsAlive()])
            countunitsrebhq = len([b for b in constructedlistpertype[ownernumber]['build_reb_hq'] if b.IsAlive()])
            countunitsrebscrapyard = len([b for b in constructedlistpertype[ownernumber]['build_reb_junkyard'] if b.IsAlive()])
            countunitsrebspecops = len([b for b in constructedlistpertype[ownernumber]['build_reb_specialops'] if b.IsAlive()])
            countunitsrebvortden = len([b for b in constructedlistpertype[ownernumber]['build_reb_vortigauntden'] if b.IsAlive()])
            countunits = countunits + countunitsrebbar + countunitsrebhq + countunitsrebscrapyard + countunitsrebspecops + countunitsrebvortden

            # add race x
            countunits_racex_hq = len([b for b in constructedlistpertype[ownernumber]['build_racex_hq'] if b.IsAlive()])
            #countunits_racex_garrison = len([b for b in constructedlistpertype[ownernumber]['build_racex_garrison'] if b.IsAlive()])
            countunits = countunits + countunits_racex_hq #+ countunits_racex_garrison

            if not countunits:
                self.PlayerDefeated(data)
                continue
            if data['team'] is not TEAM_INVALID and data['team'] is not TEAM_UNASSIGNED and data['team'] is not TEAM_SPECTATOR:
                counts.add(data['team'])
            else:
                counts.add(data) 
                
        if len(counts) == 1:
            # We got a winner!
            winners, losers = self.CalculateWinnersAndLosers(list(counts)[0])
            self.EndGame(winners, losers)
            
    def StartGame(self):
        super().StartGame()
        
        for data in self.gameplayers:
            SetResource(data['ownernumber'], self.GetMainResource(), 100)
            
    def ClientUpdateEndGameStats(self, playersteamid, stats, winners, losers):
        ''' Update Annihilation game mode Steam stats. '''
        super().ClientUpdateEndGameStats(playersteamid, stats, winners, losers)
    
        stats.annihilation_games += 1
        if self.GetPlayerGameData(steamid=playersteamid, gameplayers=winners) != None:
            stats.annihilation_wins += 1


class AnnihilationInfo(GamerulesInfo):
    name = 'annihilation'
    displayname = '#Annihilation_Name'
    description = '#Annihilation_Description'
    cls = Annihilation
    supportcpu = True
    mappattern = '^hlw_.*$'
    factionpattern = '^(rebels|combine|antlions|zombies|racex)$'
    minplayers = 2
    allowallsameteam = False
    huds = GamerulesInfo.huds + [
        'core.hud.HudPlayerNames',
    ]
    unit_limits = {
        'unit_combine_apc': 2,
        'unit_combine_helicopter': 1,
        'unit_buggy': 2,
    }
