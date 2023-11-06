import random
from core.units import UnitInfo
from core.abilities import AbilityBase

class ShockTrooperInfo(UnitInfo):
    name = 'unit_shocktrooper'
    cls_name = 'unit_shocktrooper'
    health = 500 # Adjust health as needed
    modelname = 'models/vj_hlr/opfor/strooper.mdl' # Set the appropriate model path
    hulltype = 'HULL_HUMAN' # You can use this hull type if applicable
    costs = [('requisition', 5)] # Adjust the costs as needed
    buildtime = 10 # Adjust build time as needed
    weapons = ['weapon_shockroach', 'weapon_sporepod'] # List of weapons for the Shock Trooper

    def init(self):
        super().init()
        self.sound_interval = random.uniform(20.0, 60.0) # Adjust the interval as needed
        self.next_sound_time = self.curtime + self.sound_interval
        self.sound_names = [
            'sound/units/shockroach/shock_idle1.wav',
            'sound/units/shockroach/shock_idle2.wav',
            'sound/units/shockroach/shock_idle3.wav',
            'sound/units/shocktrooper/shocktrooper_st_alert1.wav',
            'sound/units/shocktrooper/shocktrooper_st_alert2.wav',
            'sound/units/shocktrooper/shocktrooper_st_alert3.wav',
            'sound/units/shocktrooper/shocktrooper_st_alert4.wav',
            'sound/units/shocktrooper/shocktrooper_st_answer1.wav',
            'sound/units/shocktrooper/shocktrooper_st_answer2.wav',
            'sound/units/shocktrooper/shocktrooper_st_combat1.wav',
            'sound/units/shocktrooper/shocktrooper_st_combat2.wav',
            'sound/units/shocktrooper/shocktrooper_st_cover.wav',
            'sound/units/shocktrooper/shocktrooper_st_grenadethrow.wav',
            'sound/units/shocktrooper/shocktrooper_st_idle.wav',
            'sound/units/shocktrooper/shocktrooper_st_question1.wav',
            'sound/units/shocktrooper/shocktrooper_st_question2.wav',
            'sound/units/shocktrooper/shocktrooper_st_runfromgrenade.wav',
        ]  # Add the paths to your desired sound files
        self.precache_sounds()
        self.shockroach_delay = 0.6
        self.shockroach_damage = 25

    def precache_sounds(self):
        for sound_name in self.sound_names:
            self.PrecacheScriptSound(sound_name)

    def update(self):
        super().update()
        if self.curtime >= self.next_sound_time:
            self.play_random_sound()
            self.next_sound_time = self.curtime + self.sound_interval

    def play_random_sound(self):
        if self.sound_names:
            self.EmitSound(sound_name)

    # Define your custom methods for weapons and attacks here, e.g., Shock Roach and Spore Pod attacks

    def attack_with_shockroach(self, target):
        if not self.CanAttack():
            return

        # Play a sound or visual effect for the Shock Roach attack if desired
        # For now, we'll just play a sound
        self.play_attack_sound()

        # Create a timer to deal damage after the specified delay
        self.CreateTimer(self.shockroach_delay, self.do_shockroach_damage, target)

    def do_shockroach_damage(self, target):
        if not target:
            return

        # Calculate the damage and apply it to the target
        self.AttackDamage(self.shockroach_damage, target, AbilityBase.DMG_SHOCKROACH)

    def play_attack_sound(self):
        self.EmitSound("sound/units/shockroach/shock_fire.wav")