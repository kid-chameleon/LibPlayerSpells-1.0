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
lib:__RegisterSpells('WARRIOR', 11320, 1, {
	COOLDOWN = {
			845, -- Cleave (Arms talent)
		   5308, -- Execute (Fury)
		  [6552] = 'INTERRUPT', -- Pummel
		AURA = {
			HARMFUL = {
				[  1160] = 'SURVIVAL', -- Demoralizing Shout (Protection)
				CROWD_CTRL = {
					[ 355] = 'TAUNT', -- Taunt
					[5246] = 'DISORIENT', -- Intimidating Shout
					STUN = {
						12809, -- Concussive Blow
					},
				},
				SNARE = {
					6343, -- Thunder Clap (Protection)
				},
			},
			PERSONAL = {
				7384, -- Overpower (Arms)
				18499, -- Berserker Rage
				23881, -- Begin Bloodthirst
				23892,
				23893,
				23894, -- End Bloodthirst
				BURST = {
					 1719, -- Recklessness (Fury)
				    12328, -- Death Wish (Fury)
				},
				SURVIVAL = {
					871, -- Shield Wall (Protection)
					12975, -- Last Stand (Protection)
				},
			},
		},
		POWER_REGEN = {
			 23881, -- Bloodthirst (Fury)
			 23922, -- Shield Slam (Protection)
		},
	},
	AURA = {
		HARMFUL = {
			772, -- Rend (Arms talent)
			SNARE = {
				 1715, -- Hamstring (Arms)
				12323, -- Piercing Howl (Fury)
			},
		},
		HELPFUL = {
			[6673] = 'RAIDBUFF', -- Battle Shout
		},
		PERSONAL = {
			5302, -- Revenge (Protection)
		},
	},
}, {
	-- Map aura to provider(s)
	[  5302] =   6572, -- Revenge (Protection)
	[ 85739] = 190411, -- Whirlwind (Fury)
	[105771] = { -- Charge
		   100, -- Charge (Arms/Fury)
		198304, -- Intercept (Protection)
	},
	[132404] =   2565, -- Shield Block (Protection)
	[184362] = 184361, -- Enrage (Fury)
})
