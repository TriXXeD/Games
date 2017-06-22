
EncounterDetailsDB = {
	["emotes"] = {
		{
			["boss"] = "Illidan Stormrage",
		}, -- [1]
		{
			{
				37.5540000000001, -- [1]
				"Is this it, mortals? Is this all the fury you can muster?", -- [2]
				"Illidan Stormrage", -- [3]
				7, -- [4]
			}, -- [1]
			{
				47.262999999999, -- [1]
				"Their fury pales before mine, Illidan. We have some unsettled business between us.", -- [2]
				"Maiev Shadowsong", -- [3]
				7, -- [4]
			}, -- [2]
			{
				55.8099999999995, -- [1]
				"Maiev... How is it even possible?", -- [2]
				"Illidan Stormrage", -- [3]
				7, -- [4]
			}, -- [3]
			{
				61.8870000000006, -- [1]
				"My long hunt is finally over. Today, Justice will be done!", -- [2]
				"Maiev Shadowsong", -- [3]
				7, -- [4]
			}, -- [4]
			{
				71.589, -- [1]
				"It is finished. You are beaten.", -- [2]
				"Maiev Shadowsong", -- [3]
				7, -- [4]
			}, -- [5]
			{
				77.6790000000001, -- [1]
				"You have won... Maiev. But the huntress... is nothing without the hunt. You... are nothing... without me.", -- [2]
				"Illidan Stormrage", -- [3]
				7, -- [4]
			}, -- [6]
			["boss"] = "Illidan Stormrage",
		}, -- [2]
		{
			{
				0.193999999999505, -- [1]
				"Common... such a crude language. Bandal!", -- [2]
				"High Nethermancer Zerevor", -- [3]
				7, -- [4]
			}, -- [1]
			{
				1.71500000000015, -- [1]
				"You got... lucky.", -- [2]
				"Veras Darkshadow", -- [3]
				7, -- [4]
			}, -- [2]
			{
				1.71500000000015, -- [1]
				"Destiny... awaits.", -- [2]
				"Lady Malande", -- [3]
				7, -- [4]
			}, -- [3]
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
		[1604] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Essence of Suffering",
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
		[41469] = {
			["school"] = 2,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Gathios the Shatterer",
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
		[41350] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Essence of Desire",
		},
		[39584] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ashtongue Primalist",
		},
		[39835] = {
			["school"] = 1,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "High Warlord Naj'entus",
		},
		[39855] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Blade of Azzinoth",
		},
		[41294] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Essence of Suffering",
		},
		[39869] = {
			["school"] = 4,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Flame of Azzinoth",
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
		[41483] = {
			["school"] = 64,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "High Nethermancer Zerevor",
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
		[39849] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Illidan Stormrage",
		},
		[41471] = {
			["school"] = 2,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Lady Malande",
		},
		[41115] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ashtongue Mystic",
		},
		[32911] = {
			["school"] = 8,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Summoned Windfury Totem",
		},
		[41542] = {
			["school"] = 2,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_HEAL"] = true,
			},
			["source"] = "Enslaved Soul",
		},
		[41986] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Angered Soul Fragment",
		},
		[40076] = {
			["school"] = 8,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Coilskar Wrangler",
		},
		[41337] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Essence of Anger",
		},
		[41183] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Ashtongue Stormcaller",
		},
		[41184] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Ashtongue Stormcaller",
		},
		[34970] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Ashtongue Battlelord",
		},
	},
}
