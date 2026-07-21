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
if lib.flavor ~= 'vanilla' then return end
lib:__RegisterSpells('PRIEST', 11508, 1, {
	COOLDOWN = {
		8092, -- Begin Mind Blast
		8102,
		8103,
		8104,
		8105,
		8106,
		10945,
		10946,
		10947, -- End Mind Blast
		13908, -- Begin Desperate Prayer (Human/Dwarf)
		19236,
		19238,
		19240,
		19241,
		19242,
		19243, -- End Desperate Prayer
		[15487] = 'INTERRUPT', -- Silence (Shadow talent)
		401955, -- Shadow Word: Death (SoD rune)
		401977, -- Shadowfiend (SoD rune)
		402174, -- Penance (SoD rune)
		AURA = {
			HARMFUL = {
				2944, -- Begin Devouring Plague (Undead)
				19276,
				19277,
				19278,
				19279,
				19280, -- End Devouring Plague
				CROWD_CTRL = {
					DISORIENT = {
						8122, -- Begin Psychic Scream
						8124,
						10888,
						10890, -- End Psychic Scream
					},
				},
			},
			HELPFUL = {
				6346, -- Fear Ward (Dwarf)
				401877, -- Prayer of Mending (SoD rune)
				BURST = {
					10060, -- Power Infusion (Discipline talent)
				},
				SURVIVAL = {
					402004, -- Pain Suppression (SoD rune)
					425207, -- Power Word: Barrier (SoD rune)
				},
			},
			PERSONAL = {
				586, -- Begin Fade
				9578,
				9579,
				9592,
				10941,
				10942, -- End Fade
				14751, -- Inner Focus (Discipline talent)
				13896, -- Begin Feedback (Human)
				19271,
				19273,
				19274,
				19275, -- End Feedback
				[425294] = 'POWER_REGEN SURVIVAL', -- Dispersion (SoD rune)
				SURVIVAL = {
					2651, -- Begin Elune's Grace (Night Elf)
					19289,
					19291,
					19292,
					19293, -- End Elune's Grace
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
			10894, -- End Shadow Word: Pain
			14914, -- Begin Holy Fire (no cooldown in vanilla)
			15262,
			15263,
			15264,
			15265,
			15266,
			15267,
			15261, -- End Holy Fire
			9035, -- Begin Hex of Weakness (Troll)
			19281,
			19282,
			19283,
			19284,
			19285, -- End Hex of Weakness
			2943, -- Begin Touch of Weakness debuff (Undead)
			19249,
			19251,
			19252,
			19253,
			19254, -- End Touch of Weakness debuff
			10797, -- Begin Starshards (Night Elf; channeled, no cooldown in vanilla)
			19296,
			19299,
			19302,
			19303,
			19304,
			19305, -- End Starshards
			15286, -- Vampiric Embrace (Shadow talent)
			453, -- Begin Mind Soothe
			8192,
			10953, -- End Mind Soothe
			402668, -- Vampiric Touch (SoD rune)
			413259, -- Mind Sear (SoD rune)
			425204, -- Void Plague (SoD rune)
			431655, -- Mind Spike (SoD rune)
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
				18807, -- End Mind Flay
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
			10901, -- End Power Word: Shield
			[6788] = 'INVERT_AURA', -- Weakened Soul
			139, -- Begin Renew (SoD copies interleaved)
			425268,
			6074,
			425269,
			6075,
			425270,
			6076,
			425271,
			6077,
			425272,
			6078,
			425273,
			10927,
			425274,
			10928,
			425275,
			10929,
			425276,
			25315,
			425277, -- End Renew
			1243, -- Begin Power Word: Fortitude
			1244,
			1245,
			2791,
			10937,
			10938, -- End Power Word: Fortitude
			21562, -- Begin Prayer of Fortitude
			21564, -- End Prayer of Fortitude
			14752, -- Begin Divine Spirit (Discipline talent)
			14818,
			14819,
			27841, -- End Divine Spirit
			27681, -- Prayer of Spirit
			976, -- Begin Shadow Protection
			10957,
			10958, -- End Shadow Protection
			27683, -- Prayer of Shadow Protection
		},
		PERSONAL = {
			588, -- Begin Inner Fire
			7128,
			602,
			1006,
			10951,
			10952, -- End Inner Fire
			18137, -- Begin Shadowguard (Troll)
			19308,
			19309,
			19310,
			19311,
			19312, -- End Shadowguard
			2652, -- Begin Touch of Weakness buff (Undead)
			19261,
			19262,
			19264,
			19265,
			19266, -- End Touch of Weakness buff
			15473, -- Shadowform (Shadow talent)
			2096, -- Begin Mind Vision
			10909, -- End Mind Vision
			1706, -- Levitate (self-only in vanilla)
		},
	},
	DISPEL = {
		-- no priest dispel has a cooldown in vanilla
		[527] = 'HELPFUL HARMFUL MAGIC', -- Begin Dispel Magic
		[988] = 'HELPFUL HARMFUL MAGIC', -- End Dispel Magic
		HELPFUL = {
			[528] = 'DISEASE', -- Cure Disease
			[552] = 'AURA DISEASE', -- Abolish Disease (leaves a 20s cleansing aura)
		},
	},
	-- REVIEW: left out for now: Holy Nova 15237+ (no cooldown, no unit aura),
	-- Lightwell 724+ / Lightwell Renew 7001+ (defined in the 1.15 dump but not
	-- obtainable on era/SoD), talent procs without an action button (Blessed
	-- Recovery, Spirit Tap, Focused Casting/Martyrdom, Blackout, Shadow
	-- Weaving/Shadow Vulnerability); SoD runes not yet categorized: Binding
	-- Heal 401937, Circle of Healing 401946, Eye of the Void 402789, Homunculi
	-- 402799, Increased Fortitude 436951
}, {
	-- map aura to provider(s)
	[2943] = 2652, -- Begin Touch of Weakness debuff (from Touch of Weakness buff)
	[19249] = 19261,
	[19251] = 19262,
	[19252] = 19264,
	[19253] = 19265,
	[19254] = 19266, -- End Touch of Weakness debuff
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
		10901, -- End Power Word: Shield
	},
	[401877] = 401859, -- Prayer of Mending aura (from the SoD rune cast)
}, {})
