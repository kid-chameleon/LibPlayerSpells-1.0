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
lib:__RegisterSpells('PRIEST', 80000, 1, {
		COOLDOWN = {
			2050,         -- Holy Word: Serenity (Holy)
			8092,         -- Mind Blast (Shadow)
			[15487] = 'INTERRUPT', -- Silence (Shadow)
			AURA = {
				HARMFUL = {
					14914, -- Holy Fire (Holy)
					CROWD_CTRL = {
						DISORIENT = {
							8122, -- Psychic Scream
						},
					},
				},
				HELPFUL = {
					17, -- Power Word: Shield (Discipline/Shadow)
					41635, -- Prayer of Mending (Holy)
					64844, -- Divine Hymn (Holy)
				},
				PERSONAL = {
					586, -- Fade
					15286, -- Vampiric Embrace (Shadow)
					SURVIVAL = {
						19236, -- Desperate Prayer (Discipline/Holy)
					},
				},
				PET = {
					[205364] = 'INVERT_AURA', -- Mind Control (Discipline talent)
				},
			},
		},
		AURA = {
			HARMFUL = {
				589,          -- Shadow Word: Pain (Discipline/Shadow)
				34914,        -- Vampiric Touch (Shadow)
				CROWD_CTRL = {
					[605] = 'DISORIENT', -- Mind Control
					[9484] = 'INCAPACITATE', -- Shackle Undead
				},
				SNARE = {
					15407, -- Mind Flay (Shadow)
				},
			},
			HELPFUL = {
				139,          -- Renew (Holy)
				1243,
				[187464] = 'INVERT_AURA', -- Shadow Mend (Discipline/Shadow)
			},
			PERSONAL = {
				2096, -- Mind Vision
			},
		},
		DISPEL = {
			[528] = 'HARMFUL MAGIC', -- Dispel Magic
			HELPFUL = {
				COOLDOWN = {
					[527] = 'DISEASE MAGIC', -- Purify (Discipline/Holy)
				},
			},
		},
	}, {           -- map aura to provider(s)
		[589] = {  -- Shadow Word: Pain (Discipline/Shadow)
			589,   -- Shadow Word: Pain (Discipline/Shadow)
		},
		[41635] = 33076, -- Prayer of Mending (Holy)
		[64844] = 64843, -- Divine Hymn (Holy)
		[111759] = 1706, -- Levitate
	},
	{}             -- map aura(s) to modified spell(s)
)
