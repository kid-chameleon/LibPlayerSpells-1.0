--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2018 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0. If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub('LibPlayerSpells-1.0')
if not lib then return end
if lib.flavor ~= 'tbc' then return end
lib:__RegisterSpells('WARRIOR', 20506, 1, {
	COOLDOWN = {
		100, -- Begin Charge
		6178,
		11578, -- End Charge
		20252, -- Begin Intercept
		20616,
		20617,
		25272,
		25275, -- End Intercept
		7384, -- Begin Overpower
		7887,
		11584,
		11585, -- End Overpower
		6572, -- Begin Revenge
		6574,
		7379,
		11600,
		11601,
		25288,
		25269,
		30357, -- End Revenge
		23881, -- Begin Bloodthirst (Fury talent)
		23892,
		23893,
		23894,
		25251,
		30335, -- End Bloodthirst
		23922, -- Begin Shield Slam (Protection talent)
		23923,
		23924,
		23925,
		25258,
		30356, -- End Shield Slam
		1680, -- Whirlwind
		INTERRUPT = {
			6552, -- Begin Pummel
			6554, -- End Pummel
			72, -- Begin Shield Bash
			1671,
			1672,
			29704, -- End Shield Bash
		},
		AURA = {
			HARMFUL = {
				676, -- Disarm -- NOTE: the lib has no DISARM crowd control type
				12294, -- Begin Mortal Strike (Arms talent, healing reduction)
				21551,
				21552,
				21553,
				25248,
				30330, -- End Mortal Strike
				-- attack speed slow only, so no SNARE
				6343, -- Begin Thunder Clap
				8198,
				8204,
				8205,
				11580,
				11581,
				25264, -- End Thunder Clap
				CROWD_CTRL = {
					DISORIENT = {
						5246, -- Intimidating Shout (cower on the target)
						20511, -- Intimidating Shout (flee on nearby enemies)
					},
					STUN = {
						7922, -- Charge Stun
						20253, -- Begin Intercept Stun
						20614,
						20615,
						25273,
						25274, -- End Intercept Stun
						12798, -- Revenge Stun (Improved Revenge)
						12809, -- Concussion Blow (Protection talent)
					},
					TAUNT = {
						355, -- Taunt
						1161, -- Challenging Shout
						694, -- Begin Mocking Blow
						7400,
						7402,
						20559,
						20560,
						25266, -- End Mocking Blow
					},
				},
			},
			HELPFUL = {
				3411, -- Intervene
			},
			PERSONAL = {
				18499, -- Berserker Rage
				2565, -- Shield Block
				12328, -- Sweeping Strikes (Arms talent)
				BURST = {
					1719, -- Recklessness
					12292, -- Death Wish (Fury talent)
					20230, -- Retaliation
				},
				SURVIVAL = {
					871, -- Shield Wall
					12975, -- Last Stand (Protection talent)
					23920, -- Spell Reflection
				},
			},
		},
		POWER_REGEN = {
			2687, -- Bloodrage
		},
	},
	AURA = {
		HARMFUL = {
			772, -- Begin Rend
			6546,
			6547,
			6548,
			11572,
			11573,
			11574,
			25208, -- End Rend
			7386, -- Begin Sunder Armor
			7405,
			8380,
			11596,
			11597,
			25225, -- End Sunder Armor
			SNARE = {
				1715, -- Begin Hamstring
				7372,
				7373,
				25212, -- End Hamstring
				12323, -- Piercing Howl (Fury talent)
			},
		},
		HELPFUL = {
			RAIDBUFF = {
				6673, -- Begin Battle Shout
				5242,
				6192,
				11549,
				11550,
				11551,
				25289,
				2048, -- End Battle Shout
				469, -- Commanding Shout
			},
		},
		PERSONAL = {
			23885, -- Begin Bloodthirst (heal-on-hit buff)
			23886,
			23887,
			23888,
			25252,
			30339, -- End Bloodthirst
			29131, -- Bloodrage (rage over time)
			30029, -- Begin Rampage (Fury talent, stacking buff)
			30031,
			30033, -- End Rampage
		},
	},
	-- NOTE: Death Wish and Sweeping Strikes swapped spell ids between vanilla
	-- (12328/12292) and tbc (12292/12328)
	-- REVIEW: left out for now: Execute 5308+ and Cleave 845+ (no cooldown,
	-- no aura), stances 2457/71/2458 (tracked via the stance API, not auras),
	-- Devastate 20243/30016/30022 (applies the Sunder Armor aura), Victory
	-- Rush 34428 and Victorious State 32215 (infinite-duration hidden state),
	-- talent procs without an action button (Enrage, Flurry, Deep Wounds,
	-- Second Wind 29841/29842, Blood Frenzy)
}, {
	-- map aura to provider(s)
	[7922] = { -- Charge Stun
		100, -- Begin Charge
		6178,
		11578, -- End Charge
	},
	[20253] = 20252, -- Begin Intercept Stun (from Intercept)
	[20614] = 20616,
	[20615] = 20617,
	[25273] = 25272,
	[25274] = 25275, -- End Intercept Stun
	[12798] = { -- Revenge Stun (Improved Revenge)
		6572, -- Begin Revenge
		6574,
		7379,
		11600,
		11601,
		25288,
		25269,
		30357, -- End Revenge
	},
	[20511] = 5246, -- Intimidating Shout (flee) from the cast on the target
	[23885] = 23881, -- Begin Bloodthirst heal-on-hit buff (from the strike)
	[23886] = 23892,
	[23887] = 23893,
	[23888] = 23894,
	[25252] = 25251,
	[30339] = 30335, -- End Bloodthirst
	[29131] = 2687, -- Bloodrage (rage over time from the cast)
	[30029] = 29801, -- Begin Rampage (buff from the strike)
	[30031] = 30030,
	[30033] = 30032, -- End Rampage
}, {})
