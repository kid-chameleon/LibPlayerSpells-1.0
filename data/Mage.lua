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
lib:__RegisterSpells('MAGE', 11340, 2, {
	COOLDOWN = {
		   1953, -- Blink
		[  2139] = 'INTERRUPT', -- Counterspell
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					ROOT = {
						122, -- Frost Nova
					},
				},
			},
			HELPFUL = {
			},
			PERSONAL = {
				  11426, -- Ice Barrier (Frost)
				[ 12051] = 'POWER_REGEN', -- Evocation (Arcane)
				[ 41425] = 'INVERT_AURA', -- Hypothermia
				BURST = {
					 12042, -- Arcane Power (Arcane)
					 12472, -- Icy Veins (Frost)
				},
				SURVIVAL = {
					    66, -- Invisibility (Fading)
					 32612, -- Invisibility
					 45438, -- Ice Block
				},
			},
			DISPEL = {
				[  475] = 'HELPFUL CURSE', -- Remove Curse
				[30449] = 'HARMFUL MAGIC', -- Spellsteal NOTE: has cooldown with Kleptomania (honor talent)
			},
		},
	},
	AURA = {
		HARMFUL = {
			133, -- Begin Fireball
			143,
			145,
			3140,
			8400,
			8401,
			8402,
			10148,
			10149,
			10150,
			10151,
			25306, -- End Fireball
			CROWD_CTRL = {
				INCAPACITATE = {
					   118, -- Begin Polymorph (Sheep)
					 12824,
					 12825,
					 12826, -- End Polymorph (Sheep)
					 28270, -- Polymorph (Cow)
					 28271, -- Polymorph (Turtle)
					 28272, -- Polymorph (Pig)
				},
			},
			SNARE = {
				  2120, -- Flamestrike (Fire)
				  116, -- Begin Frostbolt
				  205,
				  837,
				  7322,
				  8406,
				  8407,
				  8408,
				  10180,
				  10181,
				  25304, -- End Frostbolt
				31589, -- Slow (Arcane)
			},
		},
		HELPFUL = {
			130, -- Slow Fall
			1459, -- Begin Arcane Intellect
			1460,
			1461,
			10156,
			10157, -- End Arcane Intellect
			23028, -- Arcane Brilliance
		},
		PERSONAL = {
			1463, -- Begin Mana Shield
			8494,
			8495,
			10191,
			10192,
			10193, -- End Mana Shield
			6117, -- Begin Mage Armor
			22782,
			22783, -- End Mage Armor
			7302, -- Begin Ice Armor
			7320,
			10219,
			10220, -- End Ice Armor
			168, -- Begin Frost Armor
			7300,
			7301, -- End Frost Armor
			543, -- Begin Fire Ward
			8457,
			8458,
			10223,
			10225, -- End Fire Ward
		}
	},
})
