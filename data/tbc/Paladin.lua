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
lib:__RegisterSpells('PALADIN', 20506, 1, {
	COOLDOWN = {
		633, -- Begin Lay on Hands
		2800,
		10310,
		27154, -- End Lay on Hands
		20473, -- Begin Holy Shock (Holy)
		20929,
		20930,
		27174,
		33072, -- End Holy Shock
		24275, -- Begin Hammer of Wrath
		24274,
		24239,
		27180, -- End Hammer of Wrath
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					[20066] = 'INCAPACITATE', -- Repentance (talent)
					-- REVIEW: 31789 is the cast on the ally, 31790 the taunt on
				-- the attackers; verify in-game
				[31790] = 'TAUNT', -- Righteous Defense
					DISORIENT = {
						2878, -- Begin Turn Undead
						5627, -- End Turn Undead
						10326, -- Turn Evil
					},
					STUN = {
						853, -- Begin Hammer of Justice
						5588,
						5589,
						10308, -- End Hammer of Justice
					},
				},
				SNARE = {
					31935, -- Begin Avenger's Shield (Protection talent)
					32699,
					32700, -- End Avenger's Shield
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
				31842, -- Divine Illumination (Holy talent)
				31884, -- Avenging Wrath
				SURVIVAL = {
					498, -- Begin Divine Protection
					5573, -- End Divine Protection
					642, -- Begin Divine Shield
					1020, -- End Divine Shield
					20925, -- Begin Holy Shield (talent)
					20927,
					20928,
					27179, -- End Holy Shield
				},
			},
		},
	},
	DISPEL = {
		-- neither dispel has a cooldown in tbc
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
			20303,
			27159, -- End Judgement of the Crusader
			20184, -- Begin Judgement of Justice
			31896, -- End Judgement of Justice
			20185, -- Begin Judgement of Light
			20344,
			20345,
			20346,
			27162, -- End Judgement of Light
			20186, -- Begin Judgement of Wisdom
			20354,
			20355,
			27164, -- End Judgement of Wisdom
			31803, -- Holy Vengeance (Seal of Vengeance DoT)
			356110, -- Blood Corruption (Seal of Corruption DoT)
		},
		HELPFUL = {
			19977, -- Begin Blessing of Light
			19978,
			19979,
			27144, -- End Blessing of Light
			19740, -- Begin Blessing of Might
			19834,
			19835,
			19836,
			19837,
			19838,
			25291,
			27140, -- End Blessing of Might
			1038, -- Blessing of Salvation
			20911, -- Begin Blessing of Sanctuary
			20912,
			20913,
			20914,
			27168, -- End Blessing of Sanctuary
			19742, -- Begin Blessing of Wisdom
			19850,
			19852,
			19853,
			19854,
			25290,
			27142, -- End Blessing of Wisdom
			20217, -- Blessing of Kings
			25898, -- Greater Blessing of Kings
			25890, -- Begin Greater Blessing of Light
			27145, -- End Greater Blessing of Light
			25782, -- Begin Greater Blessing of Might
			25916,
			27141, -- End Greater Blessing of Might
			25895, -- Greater Blessing of Salvation
			25899, -- Begin Greater Blessing of Sanctuary
			27169, -- End Greater Blessing of Sanctuary
			25894, -- Begin Greater Blessing of Wisdom
			25918,
			27143, -- End Greater Blessing of Wisdom
			SURVIVAL = {
				6940, -- Begin Blessing of Sacrifice
				20729,
				27147,
				27148, -- End Blessing of Sacrifice
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
			10293,
			27149, -- End Devotion Aura
			19891, -- Begin Fire Resistance Aura
			19899,
			19900,
			27153, -- End Fire Resistance Aura
			19888, -- Begin Frost Resistance Aura
			19897,
			19898,
			27152, -- End Frost Resistance Aura
			7294, -- Begin Retribution Aura
			10298,
			10299,
			10300,
			10301,
			27150, -- End Retribution Aura
			25780, -- Righteous Fury
			20375, -- Begin Seal of Command
			20915,
			20918,
			20919,
			20920,
			27170, -- End Seal of Command
			20164, -- Begin Seal of Justice
			31895, -- End Seal of Justice
			20165, -- Begin Seal of Light
			20347,
			20348,
			20349,
			27160, -- End Seal of Light
			20154, -- Begin Seal of Righteousness
			21084,
			20287,
			20288,
			20289,
			20290,
			20291,
			20292,
			20293,
			27155, -- End Seal of Righteousness
			21082, -- Begin Seal of the Crusader
			20162,
			20305,
			20306,
			20307,
			20308,
			27158, -- End Seal of the Crusader
			20166, -- Begin Seal of Wisdom
			20356,
			20357,
			27166, -- End Seal of Wisdom
			31801, -- Seal of Vengeance
			31892, -- Seal of Blood
			348700, -- Seal of the Martyr
			348704, -- Seal of Corruption
			19876, -- Begin Shadow Resistance Aura
			19895,
			19896,
			27151, -- End Shadow Resistance Aura
			20218, -- Sanctity Aura
			32223, -- Crusader Aura
		},
	},
	-- REVIEW: left out for now: Consecration 26573+ (ground effect, no unit
	-- aura), Vindication 67/26017/26018 and Light's Grace 31834 (talent procs
	-- without an action button), Judgement of Blood 31898 / of the Martyr
	-- 348701 (instant damage, no target aura)
}, {
	-- map aura to provider(s)
	[25771] = {   -- Forbearance
		633,      -- Begin Lay on Hands
		2800,
		10310,
		27154,    -- End Lay on Hands
		642,      -- Begin Divine Shield
		1020,     -- End Divine Shield
		498,      -- Begin Divine Protection
		5573,     -- End Divine Protection
		1022,     -- Begin Blessing of Protection
		5599,
		10278,    -- End Blessing of Protection
		31884,    -- Avenging Wrath
	},
	[31790] = 31789, -- Righteous Defense
	[21183] = 21082, -- Begin Judgement of the Crusader (from Seal of the Crusader)
	[20188] = 20162,
	[20300] = 20305,
	[20301] = 20306,
	[20302] = 20307,
	[20303] = 20308,
	[27159] = 27158, -- End Judgement of the Crusader
	[20184] = 20164, -- Begin Judgement of Justice (from Seal of Justice)
	[31896] = 31895, -- End Judgement of Justice
	[20185] = 20165, -- Begin Judgement of Light (from Seal of Light)
	[20344] = 20347,
	[20345] = 20348,
	[20346] = 20349,
	[27162] = 27160, -- End Judgement of Light
	[20186] = 20166, -- Begin Judgement of Wisdom (from Seal of Wisdom)
	[20354] = 20356,
	[20355] = 20357,
	[27164] = 27166, -- End Judgement of Wisdom
	[31803] = 31801, -- Holy Vengeance (from Seal of Vengeance)
	[356110] = 348704, -- Blood Corruption (from Seal of Corruption)
}, {})
