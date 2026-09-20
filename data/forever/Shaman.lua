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
lib:__RegisterSpells('SHAMAN', 16001, 1, {
	COOLDOWN = {
		INTERRUPT = {
			8042, -- Begin Earth Shock
			8044,
			8045,
			8046,
			10412,
			10413,
			10414, -- End Earth Shock
		},
		AURA = {
			HARMFUL = {
				17364, -- Stormstrike (Enhancement talent)
				8050, -- Begin Flame Shock
				8052,
				8053,
				10447,
				10448,
				29228, -- End Flame Shock
				SNARE = {
					8056, -- Begin Frost Shock
					8058,
					10472,
					10473, -- End Frost Shock
					3600, -- Earthbind
				},
			},
			HELPFUL = {
				8178, -- Grounding Totem Effect
				408521, -- Begin Riptide
				1239242,
				1239243, -- End Riptide
			},
			PERSONAL = {
				16188, -- Nature's Swiftness (Restoration talent)
				POWER_REGEN = {
					425336, -- Shamanistic Rage
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			131, -- Water Breathing
			546, -- Water Walking
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
			10432, -- End Lightning Shield
			16246, -- Clearcasting (Elemental Focus)
			POWER_REGEN = {
				408510, -- Water Shield (talent)
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
		15208, -- End Lightning Bolt
		421, -- Begin Chain Lightning
		930,
		2860,
		10605, -- End Chain Lightning
	},
}, {})
