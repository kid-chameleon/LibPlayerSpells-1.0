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
lib:__RegisterSpells('SHAMAN', 11508, 1, {
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
				408521, -- Riptide (SoD rune)
			},
			PERSONAL = {
				16166, -- Elemental Mastery (Elemental talent)
				16188, -- Nature's Swiftness (Restoration talent)
				409324, -- Ancestral Guidance (SoD rune)
				POWER_REGEN = {
					425336, -- Shamanistic Rage (SoD rune)
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			131, -- Water Breathing
			546, -- Water Walking
			408514, -- Earth Shield (SoD rune)
			408696, -- Spirit of the Alpha (SoD rune)
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
				408510, -- Water Shield (SoD rune)
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
	-- REVIEW: left out for now: totem area buffs (Strength of Earth, Grace
	-- of Air, Windfury, Flametongue, Mana Spring, Healing Stream, resistance
	-- totems, Tranquil Air) and their drop spells, weapon imbue procs
	-- (Frostbrand snare), Sentry Totem 6495, Reincarnation 20608, talent
	-- procs without an action button (Focused Casting, Ancestral Fortitude,
	-- Healing Way, Elemental Devastation, Flurry), Healing Rain 415236 (SoD
	-- ground effect)
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
