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
lib:__RegisterSpells('PALADIN', 11508, 1, {
	COOLDOWN = {
		633, -- Begin Lay on Hands
		2800,
		10310, -- End Lay on Hands
		20473, -- Begin Holy Shock (Holy)
		20929,
		20930, -- End Holy Shock
		24275, -- Begin Hammer of Wrath
		24274,
		24239, -- End Hammer of Wrath
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					[20066] = 'INCAPACITATE', -- Repentance (talent)
					[407631] = 'TAUNT', -- Hand of Reckoning (SoD rune)
					DISORIENT = {
						2878,  -- Begin Turn Undead
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
				SNARE = {
					407669, -- Avenger's Shield (SoD rune)
				},
			},
			HELPFUL = {
				1044,        -- Blessing of Freedom
				[25771] = 'INVERT_AURA', -- Forbearance
				SURVIVAL = {
					1022,    -- Begin Blessing of Protection
					5599,
					10278,   -- End Blessing of Protection
				},
			},
			PERSONAL = {
				407788, -- Avenging Wrath (SoD rune)
				SURVIVAL = {
					498, -- Begin Divine Protection
					5573, -- End Divine Protection
					642, -- Begin Divine Shield
					1020, -- End Divine Shield
					20925, -- Begin Holy Shield (talent)
					20927,
					20928, -- End Holy Shield
				},
			},
		},
	},
	DISPEL = {
		-- neither dispel has a cooldown in vanilla
		HELPFUL = {
			[4987] = 'DISEASE POISON MAGIC', -- Cleanse
			[1152] = 'DISEASE POISON', -- Purify
		},
	},
	AURA = {
		HARMFUL = {
			21183, -- Begin Judgement of the Crusader
			20188,
			20300,
			20301,
			20302,
			20303, -- End Judgement of the Crusader
			20184, -- Judgement of Justice
			20185, -- Begin Judgement of Light
			20344,
			20345,
			20346, -- End Judgement of Light
			20186, -- Begin Judgement of Wisdom
			20354,
			20355, -- End Judgement of Wisdom
		},
		HELPFUL = {
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
			25898, -- Greater Blessing of Kings
			25890, -- Greater Blessing of Light
			25782, -- Begin Greater Blessing of Might
			25916, -- End Greater Blessing of Might
			25895, -- Greater Blessing of Salvation
			25899, -- Greater Blessing of Sanctuary
			25894, -- Begin Greater Blessing of Wisdom
			25918, -- End Greater Blessing of Wisdom
			407613, -- Beacon of Light (SoD rune) -- REVIEW: verify the aura sits on the beacon target
			SURVIVAL = {
				6940, -- Begin Blessing of Sacrifice
				20729, -- End Blessing of Sacrifice
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
			407627, -- Improved Righteous Fury (Hand of Reckoning SoD rune)
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
			407798, -- Seal of Martyrdom (SoD rune)
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
			425600, -- Horn of Lordaeron (SoD rune)
		},
	},
	-- REVIEW: left out for now: Consecration 26573+ (ground effect, no unit
	-- aura), Vindication 67/26017/26018 (talent proc without an action
	-- button); SoD runes not yet categorized: Divine Sacrifice 407804, Sacred
	-- Shield 412019, Flash of Light HoT 412020, Inspiration Exemplar 407880,
	-- Divine Steed 461607
}, {
	-- map aura to provider(s)
	[25771] = {   -- Forbearance
		633,      -- Begin Lay on Hands
		2800,
		10310,    -- End Lay on Hands
		642,      -- Begin Divine Shield
		1020,     -- End Divine Shield
		498,      -- Begin Divine Protection
		5573,     -- End Divine Protection
		1022,     -- Begin Blessing of Protection
		5599,
		10278,    -- End Blessing of Protection
		407788,   -- Avenging Wrath (SoD rune)
	},
	[21183] = 21082, -- Begin Judgement of the Crusader (from Seal of the Crusader)
	[20188] = 20162,
	[20300] = 20305,
	[20301] = 20306,
	[20302] = 20307,
	[20303] = 20308, -- End Judgement of the Crusader
	[20184] = 20164, -- Judgement of Justice (from Seal of Justice)
	[20185] = 20165, -- Begin Judgement of Light (from Seal of Light)
	[20344] = 20347,
	[20345] = 20348,
	[20346] = 20349, -- End Judgement of Light
	[20186] = 20166, -- Begin Judgement of Wisdom (from Seal of Wisdom)
	[20354] = 20356,
	[20355] = 20357, -- End Judgement of Wisdom
}, {})
