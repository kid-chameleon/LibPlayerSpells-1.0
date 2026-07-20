package.path = package.path .. ';./wowmock/?.lua'

local wowmock = require('wowmock')

local EXPANSIONS = { vanilla = 0, tbc = 1 }

-- unported classes live at the data root and load on every flavor; they
-- knowingly mix flavor ids and rely on the runtime soft-filtering
local ROOT_SOURCES = {
	'Druid',
	'Mage',
	'Warlock',
}

local FLAVORED_SOURCES = {
	{ path = 'vanilla/Hunter', category = 'HUNTER', interface = 11508 },
	{ path = 'vanilla/Paladin', category = 'PALADIN', interface = 11508 },
	{ path = 'vanilla/Priest', category = 'PRIEST', interface = 11508 },
	{ path = 'vanilla/Racials', category = 'RACIAL', interface = 11508 },
	{ path = 'vanilla/Rogue', category = 'ROGUE', interface = 11508 },
	{ path = 'vanilla/Shaman', category = 'SHAMAN', interface = 11508 },
	{ path = 'vanilla/Warrior', category = 'WARRIOR', interface = 11508 },
	{ path = 'tbc/Hunter', category = 'HUNTER', interface = 20506 },
	{ path = 'tbc/Paladin', category = 'PALADIN', interface = 20506 },
	{ path = 'tbc/Priest', category = 'PRIEST', interface = 20506 },
	{ path = 'tbc/Racials', category = 'RACIAL', interface = 20506 },
	{ path = 'tbc/Rogue', category = 'ROGUE', interface = 20506 },
	{ path = 'tbc/Shaman', category = 'SHAMAN', interface = 20506 },
	{ path = 'tbc/Warrior', category = 'WARRIOR', interface = 20506 },
}

-- When SPELL_DB_DIR points at the scripts/spell-db dumps, flavored files are
-- validated against the real client id sets and unknown ids fail the test.
local spellDbDir = os.getenv('SPELL_DB_DIR')
local idCache = {}
local function loadIds(flavor)
	if not idCache[flavor] then
		local path = spellDbDir .. '/' .. flavor .. '/SpellName.csv'
		local fh = assert(io.open(path, 'r'),
			'missing ' .. path .. ' - run scripts/spell-db/fetch.sh')
		local ids = {}
		fh:read('*l') -- header
		for line in fh:lines() do
			local id = line:match('^(%d+),')
			if id then
				ids[tonumber(id)] = true
			end
		end
		fh:close()
		idCache[flavor] = ids
	end
	return idCache[flavor]
end

describe('Imports', function ()
	for _, mockFlavor in next, { 'vanilla', 'tbc' } do
		describe('on ' .. mockFlavor, function ()
			local G, lib, unknown

			local function makeMock(ids)
				unknown = {}
				G = mock({
					LE_EXPANSION_LEVEL_CURRENT = EXPANSIONS[mockFlavor],
					C_Spell = {
						GetSpellInfo = function (id)
							if not ids or ids[id] then
								return { spellID = id }
							end
							table.insert(unknown, id)
						end,
					},
				})
				lib = wowmock('../LibPlayerSpells-1.0.lua', G)
				G.LibStub = function () return lib end
			end

			it('detects the flavor', function ()
				makeMock(nil)
				assert.equals(mockFlavor, lib.flavor)
				assert.equals(EXPANSIONS[mockFlavor], lib.expansion)
			end)

			for _, source in next, ROOT_SOURCES do
				it(source, function ()
					makeMock(nil)
					wowmock('../data/' .. source .. '.lua', G)
				end)
			end

			for _, source in next, FLAVORED_SOURCES do
				local fileFlavor = source.path:match('^(%w+)/')
				it(source.path, function ()
					makeMock(spellDbDir and loadIds(mockFlavor) or nil)
					wowmock('../data/' .. source.path .. '.lua', G)

					local _, patch = lib:GetVersionInfo(source.category)
					if fileFlavor == mockFlavor then
						assert.equals(source.interface, patch)
						assert.same({}, unknown)
					else
						-- the guard must have kept the file from registering
						assert.equals(0, patch)
					end
				end)
			end
		end)
	end
end)
