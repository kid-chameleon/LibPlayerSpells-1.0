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
lib:__RegisterSpells('DRUID', 16001, 1, {
	COOLDOWN = {
		20484, -- Begin Rebirth
		20739,
		20742,
		20747,
		20748, -- End Rebirth
		16979, -- Feral Charge (Bear)
		1238122, -- Feral Charge
		407995, -- Begin Mangle (bare cooldown, its debuff is not modeled)
		1238069,
		1238070,
		1238073, -- End Mangle
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					TAUNT = {
						5209, -- Challenging Roar
					},
					ROOT = {
						19675, -- Feral Charge Effect
						19975, -- Begin Entangling Roots (from Nature's Grasp)
						19974,
						19973,
						19972,
						19971,
						19970, -- End Entangling Roots (from Nature's Grasp)
					},
				},
			},
			HELPFUL = {
				740, -- Begin Tranquility
				8918,
				9862,
				9863, -- End Tranquility
				[29166] = 'POWER_REGEN', -- Innervate
			},
			PERSONAL = {
				16689, -- Begin Nature's Grasp
				16810,
				16811,
				16812,
				16813,
				17329, -- End Nature's Grasp
				16188, -- Begin Nature's Swiftness
				17116, -- End Nature's Swiftness
				1850, -- Begin Dash
				9821, -- End Dash
				22842, -- Frenzied Regeneration
				[5229] = 'POWER_REGEN', -- Enrage (Bear)
				POWER_REGEN = {
					[5217] = 'BURST', -- Tiger's Fury
				},
				SURVIVAL = {
					22812, -- Barkskin
					417141, -- Berserk
				},
			},
		},
	},
	DISPEL = {
		HELPFUL = {
			[2893] = 'AURA POISON', -- Abolish Poison
		},
	},
	AURA = {
		HARMFUL = {
			99, -- Begin Demoralizing Roar
			1735,
			9490,
			9747,
			9898, -- End Demoralizing Roar
			770, -- Begin Faerie Fire
			778,
			9749,
			9907, -- End Faerie Fire
			8921, -- Begin Moonfire
			8924,
			8925,
			8926,
			8927,
			8928,
			8929,
			9833,
			9834,
			9835, -- End Moonfire
			5570, -- Begin Insect Swarm
			24974,
			24975,
			24976,
			24977, -- End Insect Swarm
			16914, -- Begin Hurricane
			17401,
			17402, -- End Hurricane
			1822, -- Begin Rake
			1823,
			1824,
			9904, -- End Rake
			1079, -- Begin Rip
			9492,
			9493,
			9752,
			9894,
			9896, -- End Rip
			9007, -- Begin Pounce Bleed
			9824,
			9826, -- End Pounce Bleed
			2908, -- Begin Soothe Animal (reduces beast aggro range, not a dispel)
			8955,
			9901, -- End Soothe Animal
			414644, -- Begin Lacerate
			1235826,
			1235827, -- End Lacerate
			CROWD_CTRL = {
				TAUNT = {
					6795, -- Growl
				},
				INCAPACITATE = {
					2637, -- Begin Hibernate
					18657,
					18658, -- End Hibernate
				},
				ROOT = {
					339, -- Begin Entangling Roots
					1062,
					5195,
					5196,
					9852,
					9853, -- End Entangling Roots
				},
				STUN = {
					5211, -- Begin Bash
					6798,
					8983, -- End Bash
					9005, -- Begin Pounce
					9823,
					9827, -- End Pounce
				},
			},
		},
		HELPFUL = {
			774, -- Begin Rejuvenation
			1058,
			1430,
			2090,
			2091,
			3627,
			8910,
			9839,
			9840,
			9841,
			25299, -- End Rejuvenation
			8936, -- Begin Regrowth
			8938,
			8939,
			8940,
			8941,
			9750,
			9856,
			9857,
			9858, -- End Regrowth
			1126, -- Begin Mark of the Wild
			5232,
			6756,
			5234,
			8907,
			9884,
			9885,
			21849, -- Begin Gift of the Wild
			21850, -- End Gift of the Wild / Mark of the Wild
			467, -- Begin Thorns
			782,
			1075,
			8914,
			9756,
			9910, -- End Thorns
			408120, -- Begin Wild Growth
			1238214,
			1238215, -- End Wild Growth
		},
		PERSONAL = {
			5215, -- Begin Prowl
			6783,
			9913, -- End Prowl
		},
	},
}, {
	-- map aura to provider(s)
	[19975] = 16689, -- Begin Entangling Roots (from Nature's Grasp)
	[19974] = 16810,
	[19973] = 16811,
	[19972] = 16812,
	[19971] = 16813,
	[19970] = 17329, -- End Entangling Roots (from Nature's Grasp)
	[19675] = { 16979, 1238122 }, -- Feral Charge Effect (from either Feral Charge)
	[9007] = 9005, -- Begin Pounce Bleed (from Pounce)
	[9824] = 9823,
	[9826] = 9827, -- End Pounce Bleed
}, {})
