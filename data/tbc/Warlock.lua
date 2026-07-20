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
lib:__RegisterSpells('WARLOCK', 20506, 1, {
	COOLDOWN = {
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
					19736,
					27276,
					27277, -- End Devour Magic (felhunter)
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
			25311,
			27216, -- End Corruption
			348, -- Begin Immolate
			707,
			1094,
			2941,
			11665,
			11667,
			11668,
			25309,
			27215, -- End Immolate
			980, -- Begin Curse of Agony
			6217,
			11711,
			11712,
			11713,
			27218, -- End Curse of Agony
			603, -- Begin Curse of Doom
			30910, -- End Curse of Doom
			1010, -- Curse of Idiocy
			704, -- Begin Curse of Recklessness
			7658,
			7659,
			11717,
			27226, -- End Curse of Recklessness
			1714, -- Begin Curse of Tongues
			11719, -- End Curse of Tongues
			702, -- Begin Curse of Weakness
			1108,
			6205,
			7646,
			11707,
			11708,
			27224,
			30909, -- End Curse of Weakness
			1490, -- Begin Curse of the Elements
			11721,
			11722,
			27228, -- End Curse of the Elements
			689, -- Begin Drain Life
			699,
			709,
			7651,
			11699,
			11700,
			27219,
			27220, -- End Drain Life
			1120, -- Begin Drain Soul
			8288,
			8289,
			11675,
			27217, -- End Drain Soul
			18265, -- Begin Siphon Life (Affliction talent)
			18879,
			18880,
			18881,
			27264,
			30911, -- End Siphon Life (Affliction talent)
			17877, -- Begin Shadowburn (Destruction talent)
			18867,
			18868,
			18869,
			18870,
			18871, -- End Shadowburn (Destruction talent)
			27243, -- Seed of Corruption (Affliction talent)
			30108, -- Begin Unstable Affliction (Affliction talent)
			30404,
			30405, -- End Unstable Affliction (Affliction talent)
			31117, -- Unstable Affliction (silence backlash on dispel) -- REVIEW: applies to whoever dispels Unstable Affliction, not the warlock's target; verify in-game
			32386, -- Begin Shadow Embrace (Affliction talent proc)
			32388,
			32389,
			32390,
			32391, -- End Shadow Embrace (Affliction talent proc)
			CROWD_CTRL = {
				DISORIENT = {
					5782, -- Begin Fear
					6213,
					6215, -- End Fear
					5484, -- Begin Howl of Terror
					17928, -- End Howl of Terror
					6789, -- Begin Death Coil
					17925,
					17926,
					27223, -- End Death Coil
				},
				INCAPACITATE = {
					710, -- Begin Banish
					18647, -- End Banish
					1098, -- Begin Subjugate Demon
					11725,
					11726, -- End Subjugate Demon
				},
				STUN = {
					30283, -- Begin Shadowfury (Destruction talent)
					30413,
					30414, -- End Shadowfury (Destruction talent)
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
			11735,
			27260, -- End Demon Armor
			28176, -- Begin Fel Armor (Destruction talent)
			28189, -- End Fel Armor (Destruction talent)
			6229, -- Begin Shadow Ward
			11739,
			11740,
			28610, -- End Shadow Ward
			132, -- Detect Invisibility
			126, -- Eye of Kilrogg
			5500, -- Sense Demons
			5697, -- Unending Breath
			34936, -- Backlash (Destruction talent proc)
			30300, -- Nether Protection (Destruction talent proc)
		},
		PET = {
			755, -- Begin Health Funnel
			3698,
			3699,
			3700,
			11693,
			11694,
			11695,
			27259, -- End Health Funnel
		},
	},
	-- REVIEW: left out for now: Rain of Fire 5740+ and Hellfire 1949+
	-- (ground/self channel effects, no clean single-unit aura - same category
	-- as Consecration and Holy Nova in Paladin/Priest); Command 20575 (Orc
	-- racial passive that boosts warlock pet damage, no action button); Master
	-- Demonologist 23759-23844/35702-35706, Demonic Tactics, Demonic Aegis,
	-- Demonic Resilience, Empowered Corruption, Contagion, Improved Howl of
	-- Terror, Shadow and Flame, Mana Feed (all passive talent ranks, no action
	-- button); Summon Felsteed 5784 and Summon Dreadsteed 23161 (mount spells,
	-- not tracked); Arcane Torrent/Blood Fury racials already covered by
	-- Racials.lua; demon pet abilities for Imp/Voidwalker/Succubus/Felguard
	-- (Firebolt, Blood Pact, Torment, Suffering, Consume Shadows, Lash of
	-- Pain, Whiplash, Seduction, Sacrifice, Phase Shift, Intercept, Legion
	-- Strike, Anguish) not yet researched - only Felhunter's Spell
	-- Lock/Devour Magic are included above.
}, {
	-- map aura to provider(s)
}, {})
