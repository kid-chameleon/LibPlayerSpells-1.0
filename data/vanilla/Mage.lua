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
lib:__RegisterSpells('MAGE', 11508, 1, {
	COOLDOWN = {
		1953, -- Blink
		[2139] = 'INTERRUPT', -- Counterspell
		12472, -- Cold Snap (resets Frost cooldowns)
		2136, -- Begin Fire Blast
		2137,
		2138,
		8412,
		8413,
		10197,
		10199, -- End Fire Blast
		AURA = {
			HARMFUL = {
				SNARE = {
					11113, -- Begin Blast Wave (Fire talent, dazes)
					13018,
					13019,
					13020,
					13021, -- End Blast Wave
				},
			},
			PERSONAL = {
				11426, -- Begin Ice Barrier
				13031,
				13032,
				13033, -- End Ice Barrier
				[12051] = 'POWER_REGEN', -- Evocation
				12043, -- Presence of Mind
				BURST = {
					12042, -- Arcane Power
					11129, -- Combustion (Fire talent)
					425121, -- Icy Veins (SoD rune)
				},
				SURVIVAL = {
					885, -- Begin Invisibility
					11392,
					23452,
					440505,
					1227700,
					886, -- End Invisibility
					11958, -- Ice Block
				},
			},
		},
		DISPEL = {
			[475] = 'HELPFUL CURSE', -- Remove Curse
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
			10, -- Begin Blizzard
			6141,
			8427,
			10185,
			10186,
			10187, -- End Blizzard
			11366, -- Begin Pyroblast
			12505,
			12522,
			12523,
			12524,
			12525,
			12526,
			18809, -- End Pyroblast
			5143, -- Begin Arcane Missiles
			5144,
			5145,
			8416,
			8417,
			10211,
			10212,
			25345, -- End Arcane Missiles
			22959, -- Fire Vulnerability (Improved Scorch talent, stacks to 3)
			CROWD_CTRL = {
				INCAPACITATE = {
					118, -- Begin Polymorph (Sheep)
					12824,
					12825,
					12826, -- End Polymorph (Sheep)
					28271, -- Polymorph (Turtle)
					28272, -- Polymorph (Pig)
					28270, -- Polymorph: Cow
				},
				ROOT = {
					122, -- Begin Frost Nova
					865,
					6131,
					10230, -- End Frost Nova
					12494, -- Frostbite (Frost talent proc)
				},
				STUN = {
					12355, -- Impact (Fire talent proc)
				},
			},
			SNARE = {
				2120, -- Begin Flamestrike
				2121,
				8422,
				8423,
				10215,
				10216, -- End Flamestrike
				116, -- Begin Frostbolt
				205,
				837,
				7322,
				8406,
				8407,
				8408,
				10179,
				10180,
				10181,
				25304, -- End Frostbolt
				120, -- Begin Cone of Cold
				8492,
				10159,
				10160,
				10161, -- End Cone of Cold
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
			1008, -- Begin Amplify Magic
			8455,
			10169,
			10170, -- End Amplify Magic
			604, -- Begin Dampen Magic
			8450,
			8451,
			10173,
			10174, -- End Dampen Magic
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
			6143, -- Begin Frost Ward
			8461,
			8462,
			10177,
			28609, -- End Frost Ward
			428741, -- Begin Molten Armor (SoD rune)
			428743,
			429307,
			456403, -- End Molten Armor
		},
	},
	-- REVIEW: left out for now: Scorch has no cooldown and no aura of its own
	-- in vanilla (its Fire Vulnerability stacking debuff is tracked separately
	-- as 22959), Detect Magic 2855 (no cooldown, utility only, akin to
	-- Hunter's Track spells), talent procs without an action button (Improved
	-- Fireball/Frostbolt/Fire Blast/Flamestrike/Blizzard/Frost Nova/Scorch,
	-- Arcane Subtlety, Master of Elements, Magic Absorption, and the
	-- Improved Blizzard talent's Chilled proc 12484-12486 -- the baseline slow
	-- on Frostbolt/Cone of Cold/Flamestrike is already covered above via their
	-- own spell ids, this is a bonus talent-only chill that doesn't map
	-- cleanly to one button), Dragon's Breath (only available via SoD rune
	-- 1220410/1220411 -- REVIEW: confirm whether these two ids are a real
	-- 2-entry chain or duplicate phase copies, unverified in-game).
}, {
	-- map aura to provider(s)
}, {})
