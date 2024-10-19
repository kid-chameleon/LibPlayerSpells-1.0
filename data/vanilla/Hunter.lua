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
lib:__RegisterSpells('HUNTER', 11508, 1, {
	COOLDOWN = {
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
						24133, -- End Wyvern Sting
					},
				},
				SNARE = {
					13810, -- Frost Trap Aura
				},
			},
			PERSONAL = {
				3045, -- Rapid Fire
				5384, -- Feign Death
				19263, -- Deterrence
			},
			PET = {
				136, -- Begin Mend Pet
				3111,
				3661,
				3662,
				13542,
				13543,
				13544, -- End Mend Pet
				19577, -- Intimidation (Beast Mastery/Survival)
				24450, -- Begin Prowl (cat)
				24452,
				24453, -- End Prowl (cat)
				23099, -- Begin Dash (Ferocity/Cunning pet)
				23109,
				23110, -- End Dash (Ferocity/Cunning pet)
				19574, -- Bestial Wrath
			},
		},
	},
	AURA = {
		HARMFUL = {
			1462, -- Beast Lore -- NOTE: HELPFUL on player controlled pets
			1515, -- Tame Beast
			3043, -- Begin Scorpid Sting
			14275,
			14276,
			14277, -- End Scorpid Sting
			1978, -- Begin Serpent Sting
			13549,
			13550,
			13551,
			13552,
			13553,
			13554,
			13555,
			25295, -- End Serpent Sting
			425736, -- Serpent Spread
			3034, -- Begin Viper Sting
			14279,
			14280, -- End Viper Sting
			2974, -- Begin Wing Clip
			14267,
			14268, -- End Wing Clip
			13797, -- Begin Immolation Trap Effect
			14298,
			14299,
			14300,
			14301, -- End Immolation Trap Effect
			13812, -- Begin Explosive Trap Effect
			14314,
			14315, -- End Explosive Trap Effect
			CROWD_CTRL = {
				ROOT = {
					19306, -- Begin Counterattack
					20909,
					20910, -- End Counterattack
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
			20190, -- End Aspect of the Wild
			409583, -- Aspect of the Lion
		},
		PERSONAL = {
			3045, -- Rapid Fire
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
			25296, -- End Aspect of the Hawk
			415423, -- Aspect of the Viper
			19506, -- Begin Trueshot Aura
			20905,
			20906, -- End Trueshot Aura
			409396, -- Kill Command
			409580, -- Aspect of the Lion
			469145, -- Aspect of the Falcon
		},
	},
}, {
	-- map aura to provider(s); traps list the base trap plus the SoD
	-- Trap Launcher variant, rank by rank
	[3355] = { 1499, 409510 }, -- Freezing Trap Effect
	[14308] = { 14310, 409512 },
	[14309] = { 14311, 409519 },
	[13797] = { 13795, 409521 }, -- Immolation Trap Effect
	[14298] = { 14302, 409524 },
	[14299] = { 14303, 409526 },
	[14300] = { 14304, 409528 },
	[14301] = { 14305, 409530 },
	[13812] = { 13813, 409532 }, -- Explosive Trap Effect
	[14314] = { 14316, 409534 },
	[14315] = { 14317, 409535 },
	[13810] = { 13809, 409520 }, -- Frost Trap Aura
	[409396] = 409379, -- Kill Command (SoD rune)
	[24394] = 19577, -- Intimidation (Beast Mastery/Survival)
	[19410] = 5116, -- Improved Concussive Shot
	[425736] = { -- Serpent Spread (SoD)
		13555,
		25295, -- End Serpent Sting
	},
}, {})
