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
lib:__RegisterSpells('ROGUE', 11508, 1, {
	COOLDOWN = {
		1725, -- Distract
		[1766] = 'INTERRUPT', -- Kick
		AURA = {
			HARMFUL = {
				CROWD_CTRL = {
					[2094] = 'DISORIENT', -- Blind
					INCAPACITATE = {
						1776, -- Begin Gouge
						1777,
						8629,
						11285,
						11286, -- End Gouge
					},
				},
				435467, -- Begin Dismantle (SoD rune)
				439164,
				442206, -- End Dismantle -- NOTE: the lib has no DISARM crowd control type
				424799, -- Shiv (SoD rune) -- REVIEW: verify DISPEL HARMFUL ENRAGE still applies to the SoD id
			},
			PERSONAL = {
				1856, -- Begin Vanish
				1857, -- End Vanish
				13877, -- Blade Flurry
				406722, -- Shadowstep (SoD rune, movement speed buff; cast ids differ, see provider map)
				SURVIVAL = {
					1966, -- Begin Feint
					6768,
					8637,
					11303,
					25302, -- End Feint
					5277, -- Evasion
					462873, -- Cloak of Shadows (SoD rune)
					2983, -- Begin Sprint
					8696,
					11305, -- End Sprint
				},
				BURST = {
					13750, -- Adrenaline Rush
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			703, -- Begin Garrote
			8631,
			8632,
			8633,
			11289,
			11290, -- End Garrote
			-- combo point finishers with their own target debuff
			1943, -- Begin Rupture
			8639,
			8640,
			11273,
			11274,
			11275, -- End Rupture
			8647, -- Begin Expose Armor
			8649,
			8650,
			11197,
			11198, -- End Expose Armor
			16511, -- Begin Hemorrhage
			17347,
			17348, -- End Hemorrhage
			-- SoD runes below: cooldown status could not be confirmed from the
			-- dump (no SpellCooldowns table), so they are listed as plain,
			-- non-cooldown auras; REVIEW if any actually belong under COOLDOWN
			398196, -- Quick Draw (SoD rune, snare)
			424785, -- Saber Slash (SoD rune, bleed)
			CROWD_CTRL = {
				INCAPACITATE = {
					6770, -- Begin Sap
					2070,
					11297, -- End Sap
				},
				STUN = {
					408, -- Begin Kidney Shot
					8643, -- End Kidney Shot
					1833, -- Cheap Shot
				},
			},
		},
		PERSONAL = {
			1784, -- Begin Stealth
			1785,
			1786,
			1787, -- End Stealth
			5171, -- Begin Slice and Dice
			6774, -- End Slice and Dice
			14278, -- Ghostly Strike
			424919, -- Main Gauche (SoD rune, off-hand strike + parry buff)
			438040, -- Redirect (SoD rune)
			400012, -- Blade Dance (SoD rune, combo finisher)
			399963, -- Envenom (SoD rune, combo finisher)
		},
	},
	-- REVIEW: left out for now: poisons (Deadly, Instant, Wound, Crippling,
	-- Mind-numbing) are weapon enchants, not auras, so they are handled in
	-- the rules layer like Shaman's imbues; Eviscerate/Sinister
	-- Strike/Backstab/Ambush (pure damage, no aura); Cold Blood 14177,
	-- Riposte 14251, Premeditation 14183, Preparation 14185 (no duration'd
	-- aura in the dump - reactive/instant effects without a tracked buff);
	-- Find Weakness (tbc-only talent proc without an action button; only
	-- ported to tbc since it doesn't exist pre-TBC anyway); Garrote's
	-- silence proc could not be identified for vanilla (retail's id 1330 is
	-- an unrelated spell here, "Bloodlust III"; see tbc/Rogue.lua for the
	-- retail-matching id) - possibly hardcoded rather than modeled as
	-- separate spell data pre-TBC.
}, {
	-- map aura to provider(s)
	[406722] = { -- Shadowstep (SoD rune) movement buff, from the cast
		400029,
		400037,
		406754,
		1231386,
	},
}, {})
