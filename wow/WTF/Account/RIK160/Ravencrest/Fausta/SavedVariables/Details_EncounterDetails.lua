
EncounterDetailsDB = {
	["emotes"] = {
		{
			{
				0.3700000000008, -- [1]
				"Come, my minions. Deal with this traitor as he deserves!", -- [2]
				"Illidan Stormrage", -- [3]
				7, -- [4]
			}, -- [1]
			{
				7.0619999999999, -- [1]
				"I will deal with these mongrels! Strike now, friends! Strike at the Betrayer!", -- [2]
				"Akama", -- [3]
				7, -- [4]
			}, -- [2]
			{
				39.8770000000004, -- [1]
				"Is this it, mortals? Is this all the fury you can muster?", -- [2]
				"Illidan Stormrage", -- [3]
				7, -- [4]
			}, -- [3]
			{
				49.5830000000005, -- [1]
				"Their fury pales before mine, Illidan. We have some unsettled business between us.", -- [2]
				"Maiev Shadowsong", -- [3]
				7, -- [4]
			}, -- [4]
			{
				58.0930000000008, -- [1]
				"Maiev... How is it even possible?", -- [2]
				"Illidan Stormrage", -- [3]
				7, -- [4]
			}, -- [5]
			{
				64.2030000000013, -- [1]
				"My long hunt is finally over. Today, Justice will be done!", -- [2]
				"Maiev Shadowsong", -- [3]
				7, -- [4]
			}, -- [6]
			{
				73.8990000000013, -- [1]
				"It is finished. You are beaten.", -- [2]
				"Maiev Shadowsong", -- [3]
				7, -- [4]
			}, -- [7]
			{
				79.9450000000015, -- [1]
				"You have won... Maiev. But the huntress... is nothing without the hunt. You... are nothing... without me.", -- [2]
				"Illidan Stormrage", -- [3]
				7, -- [4]
			}, -- [8]
			["boss"] = "Illidan Stormrage",
		}, -- [1]
		{
			["boss"] = "Reliquary of Souls",
		}, -- [2]
		{
			["boss"] = "Reliquary of Souls",
		}, -- [3]
	},
	["encounter_spells"] = {
		[39635] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Illidan Stormrage",
		},
		[42023] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Ashtongue Elementalist",
		},
		[41187] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Ashtongue Primalist",
		},
		[41188] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Ashtongue Primalist",
		},
		[41499] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "The Illidari Council",
		},
		[40076] = {
			["school"] = 8,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Coilskar Wrangler",
		},
		[42017] = {
			["school"] = 32,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Essence of Suffering",
		},
		[39586] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ashtongue Mystic",
		},
		[41292] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Essence of Suffering",
		},
		[39588] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ashtongue Mystic",
		},
		[15284] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ashtongue Battlelord",
		},
		[42024] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Ashtongue Elementalist",
		},
		[41542] = {
			["school"] = 2,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_HEAL"] = true,
			},
			["source"] = "Enslaved Soul",
		},
		[39593] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Ashtongue Searing Totem",
		},
		[40647] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Illidan Stormrage",
		},
		[41294] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Essence of Suffering",
		},
		[41254] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Bonechewer Brawler",
		},
		[41115] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ashtongue Mystic",
		},
		[41471] = {
			["school"] = 2,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Lady Malande",
		},
		[41478] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "High Nethermancer Zerevor",
		},
		[41986] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Angered Soul Fragment",
		},
		[32588] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ashtongue Battlelord",
		},
		[39849] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Illidan Stormrage",
		},
		[39855] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Blade of Azzinoth",
		},
		[40598] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Illidan Stormrage",
		},
		[1604] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Illidari Elite",
		},
	},
}
