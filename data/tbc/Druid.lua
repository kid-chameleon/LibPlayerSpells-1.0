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
lib:__RegisterSpells('DRUID', 20506, 1, {
	COOLDOWN = {
		20484, -- Begin Rebirth
		20739,
		20742,
		20747,
		20748,
		26994, -- End Rebirth
		16979, -- Feral Charge (Bear)
		33831, -- Force of Nature
		33876, -- Begin Mangle (Cat)
		33982,
		33983, -- End Mangle (Cat)
		33878, -- Begin Mangle (Bear)
		33986,
		33987, -- End Mangle (Bear)
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					TAUNT = {
						5209, -- Challenging Roar
					},
					ROOT = {
						19675, -- Feral Charge Effect
					},
					STUN = {
						22570, -- Maim
					},
					DISORIENT = {
						33786, -- Cyclone
					},
				},
			},
			HELPFUL = {
				740, -- Begin Tranquility
				8918,
				9862,
				9863,
				26983, -- End Tranquility
				[29166] = 'POWER_REGEN', -- Innervate
			},
			PERSONAL = {
				16689, -- Begin Nature's Grasp
				16810,
				16811,
				16812,
				16813,
				17329,
				27009, -- End Nature's Grasp
				16188, -- Begin Nature's Swiftness
				17116, -- End Nature's Swiftness
				1850, -- Begin Dash
				9821,
				33357, -- End Dash
				22842, -- Begin Frenzied Regeneration
				22895,
				22896,
				26999, -- End Frenzied Regeneration
				[5229] = 'POWER_REGEN', -- Enrage (Bear)
				POWER_REGEN = {
					[5217] = 'BURST', -- Begin Tiger's Fury
					[6793] = 'BURST',
					[9845] = 'BURST',
					[9846] = 'BURST', -- End Tiger's Fury
				},
				SURVIVAL = {
					22812, -- Barkskin
				},
			},
		},
	},
	DISPEL = {
		HELPFUL = {
			[2893] = 'AURA POISON', -- Abolish Poison
		},
	},
	-- no druid interrupt in tbc (Skull Bash is Wrath+)
	AURA = {
		HARMFUL = {
			99, -- Begin Demoralizing Roar
			1735,
			9490,
			9747,
			9898,
			26998, -- End Demoralizing Roar
			770, -- Begin Faerie Fire
			778,
			9749,
			9907,
			26993, -- End Faerie Fire
			16857, -- Begin Faerie Fire (Feral)
			17390,
			17391,
			17392,
			27011, -- End Faerie Fire (Feral)
			8921, -- Begin Moonfire
			8924,
			8925,
			8926,
			8927,
			8928,
			8929,
			9833,
			9834,
			9835,
			26987,
			26988, -- End Moonfire
			5570, -- Begin Insect Swarm
			24974,
			24975,
			24976,
			24977,
			27013, -- End Insect Swarm
			16914, -- Begin Hurricane
			17401,
			17402,
			27012, -- End Hurricane
			1822, -- Begin Rake
			1823,
			1824,
			9904,
			27003, -- End Rake
			1079, -- Begin Rip
			9492,
			9493,
			9752,
			9894,
			9896,
			27008, -- End Rip
			9007, -- Begin Pounce Bleed
			9824,
			9826,
			27007, -- End Pounce Bleed
			2908, -- Begin Soothe Animal (reduces beast aggro range, not a dispel)
			8955,
			9901,
			26995, -- End Soothe Animal
			33745, -- Lacerate
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
					9853,
					26989, -- End Entangling Roots
				},
				STUN = {
					5211, -- Begin Bash
					6798,
					8983, -- End Bash
					9005, -- Begin Pounce
					9823,
					9827,
					27006, -- End Pounce
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
			25299,
			26981,
			26982, -- End Rejuvenation
			8936, -- Begin Regrowth
			8938,
			8939,
			8940,
			8941,
			9750,
			9856,
			9857,
			9858,
			26980, -- End Regrowth
			33763, -- Lifebloom
			1126, -- Begin Mark of the Wild
			5232,
			6756,
			5234,
			8907,
			9884,
			9885,
			26990,
			21849, -- Begin Gift of the Wild
			21850,
			26991, -- End Gift of the Wild / Mark of the Wild
			467, -- Begin Thorns
			782,
			1075,
			8914,
			9756,
			9910,
			26992, -- End Thorns
		},
		PERSONAL = {
			5215, -- Begin Prowl
			6783,
			9913, -- End Prowl
		},
	},
	-- REVIEW: left out for now: Starfire/Wrath/Claw/Ravage/Swipe/Ferocious Bite
	-- (pure damage, no cooldown, no aura), forms (Bear/Dire Bear/Cat/Aquatic/
	-- Travel/Moonkin/Flight/Swift Flight/Tree of Life -- tracked via the
	-- shapeshift/stance API, not auras, same as Warrior stances), Leader of
	-- the Pack and Moonkin Aura (passive, no action button), Track Humanoids
	-- (utility, akin to Hunter's Track spells), talent procs without an
	-- action button (Natural Shapeshifter, Empowered Rejuvenation/Touch,
	-- Dreamstate, Living Spirit, Lunar Guidance, Focused Starlight,
	-- Predatory Instincts, Primal Tenacity, Survival of the Fittest,
	-- Tranquil Spirit, Wrath of Cenarius, Balance of Power, Improved Faerie
	-- Fire/Leader of the Pack). Force of Nature (33831) is a bare cooldown
	-- only -- no self buff tracked for the treant summons.
}, {
	-- map aura to provider(s)
	[19675] = 16979, -- Feral Charge Effect (from Feral Charge)
}, {})
