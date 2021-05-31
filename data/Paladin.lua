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
lib:__RegisterSpells('PALADIN', 11305, 1, {
	COOLDOWN = {
		    633, -- Lay on Hands
		  20473, -- Holy Shock (Holy)
		  24275, -- Hammer of Wrath (Retribution talent)
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					[ 20066] = 'INCAPACITATE', -- Repentance (talent)
					DISORIENT = {
						2878, -- Begin Turn Undead
						5627,
						10326, -- End Turn Undead
					},
					STUN = {
						853, -- Begin Hammer of Justice
						5588,
						5589,
						10308, -- End Hammer of Justice
					},
				},
			},
			HELPFUL = {
				   1044, -- Blessing of Freedom
				[ 25771] = 'INVERT_AURA', -- Forbearance
				SURVIVAL = {
					  1022, -- Begin Blessing of Protection
					  5599,
					  10278, -- End Blessing of Protection
				},
			},
			PERSONAL = {
				--[199448] = 'INVERT_AURA', -- Blessing of Sacrifice (Holy honor talent) -- NOTE: from Ultimate Sacrifice
				SURVIVAL = {
					498, -- Divine Protection (Holy)
					642, -- Divine Shield
					20925, -- Begin Holy Shield
					20927,
					20928, -- End Holy Shield
				},
			},
		},
		DISPEL = {
			HELPFUL = {
				[  4987] = 'DISEASE POISON MAGIC', -- Cleanse (Holy)
				[ 1152 ] = 'DISEASE POISON', -- Purify
			},
		},
	},
	AURA = {
		HARMFUL = {
			21183, -- Begin Judgement of the Crusader
		},
		HELPFUL = {
			1044, -- Blessing of Freedom
			19977, -- Begin Blessing of Light
			19978,
			19979, -- End Blessing of Light
			19740, -- Begin Blessing of Might
			19834,
			19835,
			19836,
			19837,
			19838,
			25291, -- End Blessing of Might
			1038, -- Blessing of Salvation
			20911, -- Begin Blessing of Sanctuary
			20912,
			20913,
			20914, -- End Blessing of Sanctuary
			19742, -- Begin Blessing of Wisdom
			19850,
			19852,
			19853,
			19854,
			25290, -- End Blessing of Wisdom
			20217, -- Blessing of Kings
			SURVIVAL = {
				6940,  -- Blessing of Sacrifice (Holy/Protection)
				20729, -- Blessing of Sacrifice
			},
		},
		PERSONAL = {
			19746, -- Concentration Aura
			465, -- Begin Devotion aura
			10290,
			643,
			10291,
			1032,
			10292,
			10293, -- End Devotion Aura
			19891, -- Begin Fire Resistance Aura
			19899,
			19900, -- End Fire Resistance Aura
			19888, -- Begin Frost Resistance Aura
			19897,
			19898, -- End Frost Resistance Aura
			7294, -- Begin Retribution Aura
			10298,
			10299,
			10300,
			10301, -- End Retribution Aura
			25780, -- Righteous Fury
			20375, -- Begin Seal of Command
			20915,
			20918,
			20919,
			20920, -- End Seal of Command
			20164, -- Seal of Justice
			20165, -- Begin Seal of Light
			20347,
			20348,
			20349, -- End Seal of Light
			20154, -- Begin Seal of Righteousness
			21084,
			20287,
			20288,
			20289,
			20290,
			20291,
			20292,
			20293, -- End Seal of Righteousness
			21082, -- Begin Seal of the Crusader
			20162,
			20305,
			20306,
			20307,
			20308, -- End Seal of the Crusader
			20166, -- Begin Seal of Wisdom
			20356,
			20357, -- End Seal of Wisdom
			19876, -- Begin Shadow Resistance Aura
			19895,
			19896, -- End Shadow Resistance Aura
			20218, -- Sanctity Aura
		},
	},
}, {
	-- map aura to provider(s)
	[ 25771] = { -- Forbearance
		   633, -- Lay on Hands
		   642, -- Divine Shield
		  1020, -- Divine Shield
		   498, -- Divine Protection
		  5573, -- Divine Protection
		  1022, -- Blessing of Protection
	},
	[ 20183] = 20164, -- Judgement (Seal of Justice)
	[ 21183] = 21082, -- Begin Judgement of the Crus
}, {})
