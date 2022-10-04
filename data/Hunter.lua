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
lib:__RegisterSpells('HUNTER', 30400, 2, {
	COOLDOWN = {
		53351, -- Begin Kill Shot
		61005,
		61006, -- End Kill Shot
		AURA = {
			HARMFUL = {
				1543, -- Flare
				CROWD_CTRL = {
					TAUNT = {
						20736, -- Distracting Shot
					},
					STUN = {
						19410, -- Improved Concussive Shot
						24394, -- Intimidation
					},
					DISORIENT = {
						19503, -- Scatter Shot
					},
					INCAPACITATE = {
						3355, -- Freezing Trap
						1513, -- Begin Scare Beast
						14326,
						14327, -- End Scare Beast
						19386, -- Begin Wyvern Sting
						24132,
						24133, -- End Wyvern Sting
					},
				},
				SNARE = {
					5116, -- Concussive Shot (Marksmanship)
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
				13544,
				27046,
				48989,
				48990, -- End Mend Pet
				19577, -- Intimidation (Beast Mastery/Survival)
				24450, -- Prowl (cat)
				23019, -- Dash (Ferocity/Cunning pet)
				19574, -- Bestial Wrath
				34026, -- Kill Command
			},
		},
		DISPEL = {
			[19801] = 'HARMFUL MAGIC ENRAGE', -- Tranquilizing Shot
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
			13554,
			27016,
			49000,
			49001, -- End Serpent Sting
			5116, -- Concussive Shot
			3034, -- Viper Sting
			2974, -- Wing Clip
			19434, -- Begin Aimed Shot
			20900,
			20901,
			20902,
			20903,
			20904,
			27065,
			49049,
			49050, -- End Aimed Shot
			53301, -- Begin Explosive Shot
			60051,
			60052,
			60053, -- End Explosive Shot
			3674, -- Begin Black Arrow
			63668,
			63669,
			63670,
			63671,
			63672, -- End Black Arrow
			UNIQUE_AURA = {
				1130, -- Begin Hunter's Mark
				14323,
				14324,
				14325,
				53338, --  End Hunter's Mark
			},
		},
		HELPFUL = {
			13159, -- Aspect of the Pack
			20043, -- Begin Aspect of the Wild
			20190,
			27045,
			49071, -- End Aspect of the Wild
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
			25296,
			14321,
			27044, -- End Aspect of the Hawk
			34074, -- Aspect of the Viper
			61846, -- Begin Aspect of the Dragonhawk
			61847, -- End Aspect of the Dragonhawk
			19506, -- Trueshot Aura
			34477, -- Misdirection
		},
	},
}, {
	-- map aura to provider(s)
	[3355] = { -- Freezing Trap
		1499, -- Freezing Trap
		14310,
	},
	[24394] = 19577, -- Intimidation (Beast Mastery/Survival)
	[132951] = 1543, -- Flare
	[19410] = 5116, -- Improved Concussive Shot
}, {})
