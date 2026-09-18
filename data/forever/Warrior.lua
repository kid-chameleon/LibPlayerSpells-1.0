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
if lib.flavor ~= 'forever' then return end
lib:__RegisterSpells('WARRIOR', 16001, 1, {
	COOLDOWN = {
		100, -- Begin Charge
		6178,
		11578, -- End Charge
		20252, -- Begin Intercept
		20616,
		20617, -- End Intercept
		7384, -- Begin Overpower
		7887,
		11584,
		11585, -- End Overpower
		6572, -- Begin Revenge
		6574,
		7379,
		11600,
		11601,
		25288, -- End Revenge
		23881, -- Begin Bloodthirst (Fury talent)
		23892,
		23893,
		23894, -- End Bloodthirst
		23922, -- Begin Shield Slam (Protection talent)
		23923,
		23924,
		23925, -- End Shield Slam
		1680, -- Whirlwind
		INTERRUPT = {
			6552, -- Begin Pummel
			6554, -- End Pummel
			72, -- Begin Shield Bash
			1671,
			1672, -- End Shield Bash
		},
		AURA = {
			HARMFUL = {
				676, -- Disarm -- NOTE: the lib has no DISARM crowd control type
				12294, -- Begin Mortal Strike (Arms talent, healing reduction)
				21551,
				21552,
				21553, -- End Mortal Strike
				-- attack speed slow only, so no SNARE
				6343, -- Begin Thunder Clap
				8198,
				8204,
				8205,
				11580,
				11581, -- End Thunder Clap
				CROWD_CTRL = {
					DISORIENT = {
						5246, -- Intimidating Shout (cower on the target)
						20511, -- Intimidating Shout (flee on nearby enemies)
					},
					STUN = {
						7922, -- Charge Stun
						20253, -- Begin Intercept Stun
						20614,
						20615, -- End Intercept Stun
						12809, -- Concussion Blow (Protection talent)
					},
					TAUNT = {
						355, -- Taunt
						1161, -- Challenging Shout
						694, -- Begin Mocking Blow
						7400,
						7402,
						20559,
						20560, -- End Mocking Blow
					},
				},
			},
			PERSONAL = {
				18499, -- Berserker Rage
				2565, -- Shield Block
				12292, -- Sweeping Strikes (Arms talent)
				BURST = {
					1719, -- Recklessness
					12328, -- Death Wish (Fury talent)
					20230, -- Retaliation
				},
				SURVIVAL = {
					871, -- Shield Wall
					12976, -- Last Stand (Protection talent)
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
			11574, -- End Rend
			7386, -- Begin Sunder Armor
			7405,
			8380,
			11596,
			11597, -- End Sunder Armor
			1160, -- Begin Demoralizing Shout
			6190,
			11554,
			11555,
			11556, -- End Demoralizing Shout
			SNARE = {
				1715, -- Begin Hamstring
				7372,
				7373, -- End Hamstring
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
				25289, -- End Battle Shout
			},
		},
		PERSONAL = {
			29131, -- Bloodrage (rage over time)
		},
	},
}, {
	-- map aura to provider(s)
	[7922] = { -- Charge Stun
		100, -- Begin Charge
		6178,
		11578, -- End Charge
	},
	[20253] = 20252, -- Begin Intercept Stun (from Intercept)
	[20614] = 20616,
	[20615] = 20617, -- End Intercept Stun
	[20511] = 5246, -- Intimidating Shout (flee) from the cast on the target
	[29131] = 2687, -- Bloodrage (rage over time from the cast)
	[12976] = 12975, -- Last Stand (the health buff is its own spell)
}, {})
