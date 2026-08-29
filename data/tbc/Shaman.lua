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
lib:__RegisterSpells('SHAMAN', 20506, 1, {
	COOLDOWN = {
		INTERRUPT = {
			8042, -- Begin Earth Shock
			8044,
			8045,
			8046,
			10412,
			10413,
			10414,
			25454, -- End Earth Shock
		},
		AURA = {
			HARMFUL = {
				17364, -- Stormstrike (Enhancement talent)
				8050, -- Begin Flame Shock
				8052,
				8053,
				10447,
				10448,
				29228,
				25457, -- End Flame Shock
				SNARE = {
					8056, -- Begin Frost Shock
					8058,
					10472,
					10473,
					25464, -- End Frost Shock
					3600, -- Earthbind
				},
			},
			HELPFUL = {
				8178, -- Grounding Totem Effect
				[57724] = 'INVERT_AURA', -- Sated (from Bloodlust)
				[57723] = 'INVERT_AURA', -- Exhaustion (from Heroism)
				BURST = {
					2825, -- Bloodlust (Horde)
					32182, -- Heroism (Alliance)
				},
			},
			PERSONAL = {
				16166, -- Elemental Mastery (Elemental talent)
				16188, -- Nature's Swiftness (Restoration talent)
				POWER_REGEN = {
					30823, -- Shamanistic Rage (Enhancement talent)
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			131, -- Water Breathing
			546, -- Water Walking
			974, -- Begin Earth Shield (Restoration talent)
			32593,
			32594, -- End Earth Shield
			30708, -- Totem of Wrath (Elemental talent)
		},
		PERSONAL = {
			2645, -- Ghost Wolf
			6196, -- Far Sight
			324, -- Begin Lightning Shield
			325,
			905,
			945,
			8134,
			10431,
			10432,
			25469,
			25472, -- End Lightning Shield
			16246, -- Clearcasting (Elemental Focus)
			43339, -- Shamanistic Focus (Enhancement talent)
			POWER_REGEN = {
				24398, -- Begin Water Shield
				33736, -- End Water Shield
			},
		},
	},
	DISPEL = {
		HARMFUL = {
			MAGIC = {
				370, -- Begin Purge
				8012, -- End Purge
			},
		},
		HELPFUL = {
			[526]  = 'POISON', -- Cure Poison
			[2870] = 'DISEASE', -- Cure Disease
		},
	},
}, {
	-- map aura to provider(s)
	[3600] = 2484, -- Earthbind <- Earthbind Totem
	[8178] = 8177, -- Grounding Totem Effect <- Grounding Totem
	[30708] = 30706, -- Totem of Wrath (buff) <- Totem of Wrath (totem)
	[57724] = 2825, -- Sated <- Bloodlust
	[57723] = 32182, -- Exhaustion <- Heroism
	[16246] = { -- Clearcasting (Elemental Focus)
		403, -- Begin Lightning Bolt
		529,
		548,
		915,
		943,
		6041,
		10391,
		10392,
		15207,
		15208,
		25448,
		25449, -- End Lightning Bolt
		421, -- Begin Chain Lightning
		930,
		2860,
		10605,
		25439,
		25442, -- End Chain Lightning
	},
	[43339] = { -- Shamanistic Focus
		8042, -- Begin Earth Shock
		8044,
		8045,
		8046,
		10412,
		10413,
		10414,
		25454, -- End Earth Shock
		8050, -- Begin Flame Shock
		8052,
		8053,
		10447,
		10448,
		29228,
		25457, -- End Flame Shock
		8056, -- Begin Frost Shock
		8058,
		10472,
		10473,
		25464, -- End Frost Shock
	},
}, {})
