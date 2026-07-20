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
lib:__RegisterSpells('ROGUE', 20506, 1, {
	COOLDOWN = {
		1725, -- Distract
		[1766] = 'INTERRUPT', -- Kick
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					[2094] = 'DISORIENT', -- Blind
					INCAPACITATE = {
						1776, -- Begin Gouge
						1777,
						8629,
						11285,
						11286,
						38764, -- End Gouge
					},
				},
				1330, -- Garrote - Silence (see provider map)
				[5938] = 'DISPEL HARMFUL ENRAGE', -- Shiv
			},
			PERSONAL = {
				1856, -- Begin Vanish
				1857,
				26889, -- End Vanish
				13877, -- Blade Flurry
				36554, -- Shadowstep
				SURVIVAL = {
					1966, -- Begin Feint
					6768,
					8637,
					11303,
					25302,
					27448, -- End Feint
					5277, -- Begin Evasion
					26669, -- End Evasion
					31224, -- Cloak of Shadows
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
			11290,
			26839,
			26884, -- End Garrote
			-- combo point finishers with their own target debuff
			1943, -- Begin Rupture
			8639,
			8640,
			11273,
			11274,
			11275,
			26867, -- End Rupture
			8647, -- Begin Expose Armor
			8649,
			8650,
			11197,
			11198,
			26866, -- End Expose Armor
			16511, -- Begin Hemorrhage
			17347,
			17348,
			26864, -- End Hemorrhage
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
			SNARE = {
				26679, -- Deadly Throw -- REVIEW: verify this is available pre-Wrath
			},
		},
		PERSONAL = {
			1784, -- Begin Stealth
			1785,
			1786,
			1787, -- End Stealth
			5171, -- Begin Slice and Dice
			6774, -- End Slice and Dice
			14278, -- Ghostly Strike
		},
	},
	-- REVIEW: left out for now: poisons (Deadly, Instant, Wound, Crippling,
	-- Mind-numbing) are weapon enchants, not auras, so they are handled in
	-- the rules layer like Shaman's imbues; Eviscerate/Sinister
	-- Strike/Backstab/Ambush/Envenom 32645 (pure damage, no aura effect in
	-- the dump); Cold Blood 14177, Riposte 14251, Premeditation 14183,
	-- Preparation 14185 (no duration'd aura in the dump - reactive/instant
	-- effects without a tracked buff); Find Weakness 31234-31238 (talent
	-- proc without an action button).
}, {
	-- map aura to provider(s)
	[1330] = 703, -- Garrote - Silence <- Garrote
}, {})
