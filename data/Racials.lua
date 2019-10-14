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
lib:__RegisterSpells('RACIAL', 11320, 1, {
	COOLDOWN = {
		 20589, -- Escape Artist (Gnome)
		DISPEL = {
			PERSONAL = {
				[ 20594] = 'DISEASE POISON', -- Stoneform (Dwarf) -- NOTE: bleeds currently not tracked
			},
		},
		AURA = {
			PERSONAL = {
				  7744, -- Will of the Forsaken (Undead)
				 20578, -- Cannibalize (Undead)
				 20554, -- Berserking (Troll - Mana)
				 26296, -- Berserking (Troll - Rage)
				 26297, -- Berserking (Troll - Energy)
				 20600, -- Perception (Human)
				 20572, -- Blood Fury (Orc attack power)
				 20508, -- Shadowmeld (Night elf)
				 20594, -- Stoneform (Dwarf)
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
	[ 20578] =  20577, -- Cannibalize (Undead)
})
