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
lib:__RegisterSpells('PRIEST', 20506, 1, {
	COOLDOWN = {
		8092, -- Begin Mind Blast
		8102,
		8103,
		8104,
		8105,
		8106,
		10945,
		10946,
		10947,
		25372,
		25375, -- End Mind Blast
		13908, -- Begin Desperate Prayer (Human/Dwarf)
		19236,
		19238,
		19240,
		19241,
		19242,
		19243,
		25437, -- End Desperate Prayer
		32379, -- Begin Shadow Word: Death
		32996, -- End Shadow Word: Death
		34433, -- Shadowfiend
		32676, -- Consume Magic (Blood Elf) -- REVIEW: verify it has a real cooldown on 2.5.6
		[15487] = 'INTERRUPT', -- Silence (Shadow talent)
		AURA = {
			HARMFUL = {
				2944, -- Begin Devouring Plague (Undead)
				19276,
				19277,
				19278,
				19279,
				19280,
				25467, -- End Devouring Plague
				10797, -- Begin Starshards (Night Elf; instant DoT with cooldown since 2.1)
				19296,
				19299,
				19302,
				19303,
				19304,
				19305,
				25446, -- End Starshards
				CROWD_CTRL = {
					DISORIENT = {
						8122, -- Begin Psychic Scream
						8124,
						10888,
						10890, -- End Psychic Scream
					},
					ROOT = {
						44041, -- Begin Chastise (Dwarf/Draenei; roots since 2.1)
						44043,
						44044,
						44045,
						44046,
						44047, -- End Chastise
					},
				},
			},
			HELPFUL = {
				6346, -- Fear Ward (Dwarf/Draenei)
				41635, -- Prayer of Mending aura (cast is 33076)
				BURST = {
					10060, -- Power Infusion (Discipline talent)
				},
				POWER_REGEN = {
					32548, -- Symbol of Hope (Draenei)
				},
				SURVIVAL = {
					33206, -- Pain Suppression (Discipline talent; castable on others since 2.3)
				},
			},
			PERSONAL = {
				586, -- Begin Fade
				9578,
				9579,
				9592,
				10941,
				10942,
				25429, -- End Fade
				14751, -- Inner Focus (Discipline talent)
				13896, -- Begin Feedback (Human)
				19271,
				19273,
				19274,
				19275,
				25441, -- End Feedback
				SURVIVAL = {
					2651, -- Elune's Grace (Night Elf)
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			589, -- Begin Shadow Word: Pain
			594,
			970,
			992,
			2767,
			10892,
			10893,
			10894,
			25367,
			25368, -- End Shadow Word: Pain
			14914, -- Begin Holy Fire (no cooldown in tbc)
			15262,
			15263,
			15264,
			15265,
			15266,
			15267,
			15261,
			25384, -- End Holy Fire
			9035, -- Begin Hex of Weakness (Troll)
			19281,
			19282,
			19283,
			19284,
			19285,
			25470, -- End Hex of Weakness
			2943, -- Begin Touch of Weakness debuff (Undead/Blood Elf)
			19249,
			19251,
			19252,
			19253,
			19254,
			25460, -- End Touch of Weakness debuff
			15286, -- Vampiric Embrace (Shadow talent)
			34914, -- Begin Vampiric Touch (Shadow talent)
			34916,
			34917, -- End Vampiric Touch
			453, -- Begin Mind Soothe
			8192,
			10953,
			25596, -- End Mind Soothe
			CROWD_CTRL = {
				DISORIENT = {
					605, -- Begin Mind Control
					10911,
					10912, -- End Mind Control
				},
				INCAPACITATE = {
					9484, -- Begin Shackle Undead
					9485,
					10955, -- End Shackle Undead
				},
			},
			SNARE = {
				15407, -- Begin Mind Flay (Shadow talent)
				17311,
				17312,
				17313,
				17314,
				18807,
				25387, -- End Mind Flay
			},
		},
		HELPFUL = {
			17, -- Begin Power Word: Shield
			592,
			600,
			3747,
			6065,
			6066,
			10898,
			10899,
			10900,
			10901,
			25217,
			25218, -- End Power Word: Shield
			[6788] = 'INVERT_AURA', -- Weakened Soul
			139, -- Begin Renew
			6074,
			6075,
			6076,
			6077,
			6078,
			10927,
			10928,
			10929,
			25315,
			25221,
			25222, -- End Renew
			1243, -- Begin Power Word: Fortitude
			1244,
			1245,
			2791,
			10937,
			10938,
			25389, -- End Power Word: Fortitude
			21562, -- Begin Prayer of Fortitude
			21564,
			25392, -- End Prayer of Fortitude
			14752, -- Begin Divine Spirit (Discipline talent)
			14818,
			14819,
			27841,
			25312, -- End Divine Spirit
			27681, -- Begin Prayer of Spirit
			32999, -- End Prayer of Spirit
			976, -- Begin Shadow Protection
			10957,
			10958,
			25433, -- End Shadow Protection
			27683, -- Begin Prayer of Shadow Protection
			39374, -- End Prayer of Shadow Protection
		},
		PERSONAL = {
			588, -- Begin Inner Fire
			7128,
			602,
			1006,
			10951,
			10952,
			25431, -- End Inner Fire
			18137, -- Begin Shadowguard (Troll)
			19308,
			19309,
			19310,
			19311,
			19312,
			25477, -- End Shadowguard
			2652, -- Begin Touch of Weakness buff (Undead/Blood Elf)
			19261,
			19262,
			19264,
			19265,
			19266,
			25461, -- End Touch of Weakness buff
			15473, -- Shadowform (Shadow talent)
			2096, -- Begin Mind Vision
			10909, -- End Mind Vision
			1706, -- Levitate (self-only in tbc)
			33151, -- Surge of Light (Holy talent proc; shown on Smite)
			34754, -- Clearcasting (Holy Concentration proc; shown on the affected heals)
		},
	},
	DISPEL = {
		-- no priest dispel has a cooldown in tbc
		[527] = 'HELPFUL HARMFUL MAGIC', -- Begin Dispel Magic
		[988] = 'HELPFUL HARMFUL MAGIC', -- End Dispel Magic
		[32375] = 'HELPFUL HARMFUL MAGIC', -- Mass Dispel
		HELPFUL = {
			[528] = 'DISEASE', -- Cure Disease
			[552] = 'AURA DISEASE', -- Abolish Disease (leaves a 20s cleansing aura)
		},
	},
	-- REVIEW: left out for now: Holy Nova 15237+ (no cooldown, no unit aura),
	-- Lightwell 724+ / Lightwell Renew 7001+ (the renew belongs to the
	-- lightwell, not the priest), Misery 33196+ (passive talent debuff),
	-- talent procs without an action button (Blessed Recovery, Blessed
	-- Resilience, Focused Will, Spirit Tap, Focused Casting/Martyrdom,
	-- Blackout, Shadow Weaving/Shadow Vulnerability, Spirit of Redemption)
}, {
	-- map aura to provider(s)
	[41635] = 33076, -- Prayer of Mending aura (from the cast)
	[2943] = 2652, -- Begin Touch of Weakness debuff (from Touch of Weakness buff)
	[19249] = 19261,
	[19251] = 19262,
	[19252] = 19264,
	[19253] = 19265,
	[19254] = 19266,
	[25460] = 25461, -- End Touch of Weakness debuff
	[6788] = { -- Weakened Soul
		17, -- Begin Power Word: Shield
		592,
		600,
		3747,
		6065,
		6066,
		10898,
		10899,
		10900,
		10901,
		25217,
		25218, -- End Power Word: Shield
	},
	[33151] = { -- Surge of Light
		585, -- Begin Smite
		591,
		598,
		984,
		1004,
		6060,
		10933,
		10934,
		25363,
		25364, -- End Smite
	},
	[34754] = { -- Clearcasting (Holy Concentration)
		2061, -- Begin Flash Heal
		9472,
		9473,
		9474,
		10915,
		10916,
		10917,
		25233,
		25235, -- End Flash Heal
		2060, -- Begin Greater Heal
		10963,
		10964,
		10965,
		25314,
		25210,
		25213, -- End Greater Heal
		32546, -- Binding Heal
	},
}, {})
