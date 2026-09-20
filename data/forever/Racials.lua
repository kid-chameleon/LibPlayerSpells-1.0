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

local lib = LibStub('LibPlayerSpells-1.0', true)
if not lib then return end
if lib.flavor ~= 'forever' then return end
lib:__RegisterSpells('RACIAL', 16001, 1, {
	COOLDOWN = {
		    7744, -- Will of the Forsaken (Undead)
		 1259718, -- Will to Survive (Human)
		DISPEL = {
			PERSONAL = {
				[  20594] = 'AURA DISEASE POISON', -- Stoneform (Dwarf) -- NOTE: bleeds currently not tracked
				[1299026] = 'AURA CURSE', -- Shatter Curse (Orc)
			},
		},
		AURA = {
			PERSONAL = {
				 20578, -- Cannibalize (Undead)
				 20554, -- Berserking (Troll)
				 20600, -- Perception (Human)
				 20572, -- Blood Fury (Orc)
				 20580, -- Shadowmeld (Night Elf)
				 20589, -- Escape Artist (Gnome)
				 1259799, -- Elune's Light (Night Elf)
				 1260270, -- Rapid Regeneration (Troll)
				 1259812, -- Begin Eureka! (Gnome)
				 1259813,
				 1259817,
				 1259821,
				 1259823, -- End Eureka! (Gnome)
				 1259416, -- Walk on Air (Skyborne)
				 1270842, -- Begin Energized (High Order Skyborne, from Read Ley Line)
				 1259691, -- End Energized (the long one, near a ley line)
				 1259688, -- Begin Elemental Blessing (Windshaper Skyborne, from Skysight)
				 1270893, -- End Elemental Blessing (the long one, near a convergence)
			},
			HARMFUL = {
				CROWD_CTRL = {
					STUN = {
						20549, -- War Stomp (Tauren)
					},
				},
			},
		},
	},
}, {
	-- map aura to provider(s)
	[20578] = 20577, -- Cannibalize (Undead)
	[1270842] = 1259705, -- Begin Energized (from Read Ley Line)
	[1259691] = 1259705, -- End Energized
	[1259688] = 1259686, -- Begin Elemental Blessing (from Skysight)
	[1270893] = 1259686, -- End Elemental Blessing
})
