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
lib:__RegisterSpells('ROGUE', 16001, 1, {
	COOLDOWN = {
		1725, -- Distract
		1966, -- Begin Feint
		6768,
		8637,
		11303,
		25302, -- End Feint
		[1766] = 'INTERRUPT', -- Kick
		AURA = {
			HARMFUL = {
				14251, -- Riposte (disarm) -- NOTE: the lib has no DISARM crowd control type
				CROWD_CTRL = {
					[2094] = 'DISORIENT', -- Blind
					INCAPACITATE = {
						1776, -- Begin Gouge
						1777,
						8629,
						11285,
						11286, -- End Gouge
					},
				},
			},
			PERSONAL = {
				11327, -- Begin Vanish
				11329, -- End Vanish
				13877, -- Blade Flurry
				SURVIVAL = {
					5277, -- Evasion
					2983, -- Begin Sprint
					8696,
					11305, -- End Sprint
				},
				BURST = {
					13750, -- Adrenaline Rush
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			703, -- Begin Garrote
			8631,
			8632,
			8633,
			11289,
			11290, -- End Garrote
			-- combo point finishers with their own target debuff
			1943, -- Begin Rupture
			8639,
			8640,
			11273,
			11274,
			11275, -- End Rupture
			8647, -- Begin Expose Armor
			8649,
			8650,
			11197,
			11198, -- End Expose Armor
			16511, -- Hemorrhage
			CROWD_CTRL = {
				INCAPACITATE = {
					6770, -- Begin Sap
					2070,
					11297, -- End Sap
				},
				STUN = {
					408, -- Begin Kidney Shot
					8643, -- End Kidney Shot
					1833, -- Cheap Shot
				},
			},
		},
		PERSONAL = {
			1784, -- Begin Stealth
			1785,
			1786,
			1787, -- End Stealth
			5171, -- Begin Slice and Dice
			6774, -- End Slice and Dice
			1310703, -- Venom
			14278, -- Ghostly Strike
		},
	},
}, {
	-- map aura to provider(s)
	[11327] = 1856, -- Begin Vanish (the stealth buff is its own spell)
	[11329] = 1857, -- End Vanish
}, {})
