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
lib:__RegisterSpells('HUNTER', 20506, 1, {
	COOLDOWN = {
		34600, -- Snake Trap -- REVIEW: no direct aura on enemies (the snakes apply their own poisons), so nothing importable; kept for completeness
		AURA = {
			HARMFUL = {
				1543, -- Flare
				CROWD_CTRL = {
					STUN = {
						19410, -- Improved Concussive Shot
						24394, -- Intimidation
					},
					DISORIENT = {
						19503, -- Scatter Shot
					},
					INCAPACITATE = {
						3355, -- Begin Freezing Trap Effect
						14308,
						14309, -- End Freezing Trap Effect
						1513, -- Begin Scare Beast
						14326,
						14327, -- End Scare Beast
						19386, -- Begin Wyvern Sting
						24132,
						24133,
						27068, -- End Wyvern Sting
					},
				},
				SNARE = {
					13810, -- Frost Trap Aura
				},
				INTERRUPT = {
					34490, -- Silencing Shot
				},
			},
			PERSONAL = {
				3045, -- Rapid Fire
				5384, -- Feign Death
				19263, -- Deterrence
				34471, -- The Beast Within -- REVIEW: 34471 is the buff, 34692 the talent; verify buff id in-game
			},
			PET = {
				136, -- Begin Mend Pet
				3111,
				3661,
				3662,
				13542,
				13543,
				13544,
				27046, -- End Mend Pet
				19577, -- Intimidation (Beast Mastery)
				24450, -- Begin Prowl (cat)
				24452,
				24453, -- End Prowl (cat)
				23099, -- Begin Dash (Ferocity/Cunning pet)
				23109,
				23110, -- End Dash (Ferocity/Cunning pet)
				19574, -- Bestial Wrath
			},
		},
		DISPEL = {
			HARMFUL = {
				MAGIC = {
					14285, -- Begin Arcane Shot
					14286,
					14287,
					27019, -- End Arcane Shot
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			1462, -- Beast Lore -- NOTE: HELPFUL on player controlled pets
			1515, -- Tame Beast
			3043, -- Scorpid Sting
			1978, -- Begin Serpent Sting
			13549,
			13550,
			13551,
			13552,
			13553,
			13554,
			13555,
			25295,
			27016, -- End Serpent Sting
			3034, -- Begin Viper Sting
			14279,
			14280,
			27018, -- End Viper Sting
			2974, -- Begin Wing Clip
			14267,
			14268, -- End Wing Clip
			13797, -- Begin Immolation Trap Effect
			14298,
			14299,
			14300,
			14301,
			27024, -- End Immolation Trap Effect
			13812, -- Begin Explosive Trap Effect
			14314,
			14315,
			27026, -- End Explosive Trap Effect
			27065, -- Aimed Shot -- REVIEW: only Rank 7 applies the 10s healing reduction per the client db
			CROWD_CTRL = {
				ROOT = {
					19306, -- Begin Counterattack
					20909,
					20910,
					27067, -- End Counterattack
				},
			},
			SNARE = {
				5116, -- Concussive Shot
			},
			UNIQUE_AURA = {
				1130, -- Begin Hunter's Mark
				14323,
				14324,
				14325, --  End Hunter's Mark
			},
		},
		HELPFUL = {
			13159, -- Aspect of the Pack
			20043, -- Begin Aspect of the Wild
			20190,
			27045, -- End Aspect of the Wild
			34477, -- Misdirection -- REVIEW: verify which unit carries 34477 (35079 is the redirect window aura)
		},
		PERSONAL = {
			6197, -- Eagle Eye
			5118, -- Aspect of the Cheetah
			13161, -- Aspect of the Beast
			13163, -- Aspect of the Monkey
			13165, -- Begin Aspect of the Hawk
			14318,
			14319,
			14320,
			14321,
			14322,
			25296,
			27044, -- End Aspect of the Hawk
			34074, -- Aspect of the Viper
			19506, -- Begin Trueshot Aura
			20905,
			20906,
			27066, -- End Trueshot Aura
		},
	},
	-- REVIEW: talent procs with no action button left out: Concussive Barrage
	-- 35101, Expose Weakness 34501, Master Tactician 34833-34837, Rapid
	-- Killing 35098/35099; Volley channel auras 1510/14294/14295/27022 too
}, {
	-- map aura to provider(s), rank by rank for the traps
	[3355] = 1499, -- Freezing Trap Effect
	[14308] = 14310,
	[14309] = 14311,
	[13797] = 13795, -- Immolation Trap Effect
	[14298] = 14302,
	[14299] = 14303,
	[14300] = 14304,
	[14301] = 14305,
	[27024] = 27023,
	[13812] = 13813, -- Explosive Trap Effect
	[14314] = 14316,
	[14315] = 14317,
	[27026] = 27025,
	[13810] = 13809, -- Frost Trap Aura
	[24394] = 19577, -- Intimidation (Beast Mastery)
	[19410] = 5116, -- Improved Concussive Shot
	[34471] = 19574, -- The Beast Within procs off Bestial Wrath
}, {})
