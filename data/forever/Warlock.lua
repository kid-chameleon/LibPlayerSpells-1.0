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
lib:__RegisterSpells('WARLOCK', 16001, 1, {
	COOLDOWN = {
		AURA = {
			PERSONAL = {
				18288, -- Amplify Curse (Affliction talent)
				18708, -- Fel Domination (Demonology talent)
			},
		},
		INTERRUPT = {
			19244, -- Begin Spell Lock (felhunter)
			19647, -- End Spell Lock (felhunter)
		},
		DISPEL = {
			MAGIC = {
				HARMFUL = {
					19505, -- Begin Devour Magic (felhunter)
					19731,
					19734,
					19736, -- End Devour Magic (felhunter)
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			172, -- Begin Corruption
			6222,
			6223,
			7648,
			11671,
			11672,
			25311, -- End Corruption
			348, -- Begin Immolate
			707,
			1094,
			2941,
			11665,
			11667,
			11668,
			25309, -- End Immolate
			980, -- Begin Bane of Agony
			1014,
			6217,
			11711,
			11712,
			11713, -- End Bane of Agony
			603, -- Bane of Doom
			1225228, -- Bane of Havoc (5 min curse, one target)
			1316697, -- Wrack
			403501, -- Begin Haunt
			1293693,
			1293694, -- End Haunt
			440892, -- Begin Curse of the Elements
			1311676,
			1311677,
			1311680, -- End Curse of the Elements
			1010, -- Curse of Idiocy
			704, -- Begin Curse of Recklessness
			7658,
			7659,
			11717, -- End Curse of Recklessness
			1714, -- Begin Curse of Tongues
			11719, -- End Curse of Tongues
			702, -- Begin Curse of Weakness
			1108,
			6205,
			7646,
			11707,
			11708, -- End Curse of Weakness
			689, -- Begin Drain Life
			699,
			709,
			7651,
			11699,
			11700, -- End Drain Life
			1120, -- Begin Drain Soul
			8288,
			8289,
			11675, -- End Drain Soul
			5138, -- Begin Drain Mana
			6226,
			11703,
			11704, -- End Drain Mana
			18265, -- Begin Siphon Life (Affliction talent)
			18879,
			18880,
			18881, -- End Siphon Life (Affliction talent)
			17877, -- Begin Shadowburn (Destruction talent)
			18867,
			18868,
			18869,
			18870,
			18871, -- End Shadowburn (Destruction talent)
			SNARE = {
				18223, -- Curse of Exhaustion (Affliction talent)
			},
			CROWD_CTRL = {
				DISORIENT = {
					5782, -- Begin Fear
					6213,
					6215, -- End Fear
					5484, -- Begin Howl of Terror
					17928, -- End Howl of Terror
					6789, -- Begin Death Coil
					17925,
					17926, -- End Death Coil
				},
				INCAPACITATE = {
					6358, -- Seduction (succubus)
					710, -- Begin Banish
					18647, -- End Banish
					1098, -- Begin Subjugate Demon
					11725,
					11726, -- End Subjugate Demon
				},
			},
		},
		PERSONAL = {
			687, -- Begin Demon Skin
			696, -- End Demon Skin
			706, -- Begin Demon Armor
			1086,
			11733,
			11734,
			11735, -- End Demon Armor
			6229, -- Begin Shadow Ward
			11739,
			11740,
			28610, -- End Shadow Ward
			132, -- Detect Lesser Invisibility
			2970, -- Detect Invisibility
			11743, -- Detect Greater Invisibility
			126, -- Eye of Kilrogg
			5500, -- Sense Demons
			5697, -- Unending Breath
		},
		PET = {
			755, -- Begin Health Funnel
			3698,
			3699,
			3700,
			11693,
			11694,
			11695, -- End Health Funnel
		},
	},
}, {
	-- map aura to provider(s)
}, {})
