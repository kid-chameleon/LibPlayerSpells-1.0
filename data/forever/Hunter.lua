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
lib:__RegisterSpells('HUNTER', 16001, 1, {
	COOLDOWN = {
		AURA = {
			HARMFUL = {
				1543, -- Flare
				1264758, -- Begin Dismember (pet, healing reduction)
				1264927,
				1264929,
				1264930,
				1264933, -- End Dismember (pet, healing reduction)
				1265065, -- Begin Savage Rend (pet, bleed)
				1265066,
				1265067,
				1265068,
				1265069, -- End Savage Rend (pet, bleed)
				1265054, -- Begin Mine! (pet, disarm)
				1265055,
				1265056,
				1265057,
				1265058, -- End Mine! (pet, disarm)
				24423, -- Begin Demoralizing Screech (pet, attack power reduction)
				24577,
				24578,
				24579, -- End Demoralizing Screech (pet, attack power reduction)
				24640, -- Begin Scorpid Poison (pet, stacking poison)
				24583,
				24586,
				24587, -- End Scorpid Poison (pet, stacking poison)
				CROWD_CTRL = {
					ROOT = {
						1265843, -- Begin Web (pet)
						1265878,
						1265880,
						1265881,
						1265883, -- End Web (pet)
					},
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
					},
				},
				SNARE = {
					13810, -- Frost Trap Aura
					1264735, -- Begin Pinch (pet)
					1264736,
					1264739,
					1264741,
					1264742, -- End Pinch (pet)
					1265038, -- Begin Tendon Rip (pet, also a bleed)
					1265039,
					1265040,
					1265041,
					1265042, -- End Tendon Rip (pet, also a bleed)
				},
			},
			PERSONAL = {
				3045, -- Rapid Fire
				5384, -- Feign Death
				19263, -- Deterrence
			},
			HELPFUL = {
				24604, -- Begin Furious Howl (pet, party attack power)
				24605,
				24603,
				24597, -- End Furious Howl (pet, party attack power)
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
				23145, -- Begin Dive (pet)
				23147,
				23148, -- End Dive (pet)
				26064, -- Shell Shield (pet)
				1310612, -- Trickster's Dance (pet)
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
			25295, -- End Serpent Sting
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
			24118, -- Begin Lacerate (bleed)
			24119,
			24120,
			1299332, -- End Lacerate (bleed)
			1265899, -- Begin Dust Cloud (pet, stacking armor reduction)
			1265901,
			1265902,
			1265903,
			1265904, -- End Dust Cloud (pet, stacking armor reduction)
			CROWD_CTRL = {
				ROOT = {
					19185, -- Entrapment (Survival talent)
					19306, -- Begin Counterattack
					1242634,
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
		PET = {
			1539, -- Feed Pet Effect
		},
		HELPFUL = {
			13159, -- Aspect of the Pack
			20043, -- Begin Aspect of the Wild
			20190, -- End Aspect of the Wild
		},
		PERSONAL = {
			6197, -- Eagle Eye
			5118, -- Aspect of the Cheetah
			13161, -- Begin Aspect of the Beast
			1299445,
			1299446,
			1299447, -- End Aspect of the Beast
			1299448, -- Quick Strikes
			13163, -- Aspect of the Monkey
			13165, -- Begin Aspect of the Hawk
			14318,
			14319,
			14320,
			14321,
			14322,
			25296, -- End Aspect of the Hawk
			1299346, -- Begin Trueshot Aura
			1299348,
			19506,
			20905,
			20906, -- End Trueshot Aura
		},
	},
}, {
	-- map aura to provider(s)
	[1539] = 6991, -- Feed Pet Effect
	[19185] = { -- Entrapment
		13809, -- Frost Trap
		13813, -- Begin Explosive Trap
		14316,
		14317, -- End Explosive Trap
	},
	[3355] = 1499, -- Freezing Trap Effect
	[14308] = 14310,
	[14309] = 14311,
	[13797] = 13795, -- Immolation Trap Effect
	[14298] = 14302,
	[14299] = 14303,
	[14300] = 14304,
	[14301] = 14305,
	[13812] = 13813, -- Explosive Trap Effect
	[14314] = 14316,
	[14315] = 14317,
	[13810] = 13809, -- Frost Trap Aura
	[24394] = 19577, -- Intimidation (Beast Mastery/Survival)
	[19410] = 5116, -- Improved Concussive Shot
}, {})
