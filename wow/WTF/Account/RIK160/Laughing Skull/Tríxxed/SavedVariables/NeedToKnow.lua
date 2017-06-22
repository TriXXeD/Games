
NeedToKnow_Settings = nil
NeedToKnow_CharSettings = {
	["Locked"] = true,
	["Specs"] = {
		"G23", -- [1]
		"G8", -- [2]
	},
	["Profiles"] = {
		["G1"] = {
			["nGroups"] = 4,
			["BarTexture"] = "Duke2",
			["name"] = "Tríxxed-Laughing Skull.2",
			["Groups"] = {
				{
					["Position"] = {
						"CENTER", -- [1]
						"CENTER", -- [2]
						-344.7655334472656, -- [3]
						-189.1155700683594, -- [4]
					},
					["Scale"] = 0.999998927116394,
					["Bars"] = {
						{
							["show_icon"] = true,
							["AuraName"] = "Molten Core",
							["TimeFormat"] = "Fmt_Float",
						}, -- [1]
						{
							["TimeFormat"] = "Fmt_Float",
							["show_icon"] = true,
						}, -- [2]
						{
							["TimeFormat"] = "Fmt_Float",
							["show_icon"] = true,
						}, -- [3]
					},
					["FixedDuration"] = "0",
					["Width"] = 227.3335969169833,
				}, -- [1]
				{
					["Bars"] = {
						{
							["AuraName"] = "Shadowflame",
							["BuffOrDebuff"] = "HARMFUL",
							["show_icon"] = true,
							["TimeFormat"] = "Fmt_Float",
							["Unit"] = "target",
						}, -- [1]
						{
							["AuraName"] = "Corruption",
							["BuffOrDebuff"] = "HARMFUL",
							["show_icon"] = true,
							["TimeFormat"] = "Fmt_Float",
							["Unit"] = "target",
						}, -- [2]
						{
							["AuraName"] = "Curse of Elements",
							["BuffOrDebuff"] = "HARMFUL",
							["show_icon"] = true,
							["TimeFormat"] = "Fmt_Float",
							["Unit"] = "target",
						}, -- [3]
					},
					["FixedDuration"] = "0",
					["Position"] = {
						"CENTER", -- [1]
						"CENTER", -- [2]
						174.8932800292969, -- [3]
						-186.2776947021484, -- [4]
					},
				}, -- [2]
				{
					["Enabled"] = false,
					["FixedDuration"] = "0",
					["Position"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						-300, -- [4]
					},
				}, -- [3]
				{
					["Enabled"] = false,
					["FixedDuration"] = "0",
					["Position"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						-400, -- [4]
					},
				}, -- [4]
			},
		},
		["G23"] = {
			["nGroups"] = 4,
			["name"] = "Tríxxed-Laughing Skull.1",
			["Groups"] = {
				{
					["Bars"] = {
						nil, -- [1]
						{
							["AuraName"] = "Soul Swap",
							["BarColor"] = {
								["g"] = 0.5372549019607843,
								["r"] = 0.00392156862745098,
							},
						}, -- [2]
						{
							["TimeFormat"] = "Fmt_Float",
							["show_icon"] = true,
							["AuraName"] = "Shadow Trance",
							["BarColor"] = {
								["r"] = 0.3215686274509804,
								["g"] = 0,
								["b"] = 0.2549019607843137,
							},
						}, -- [3]
					},
					["FixedDuration"] = "0",
					["Position"] = {
						"CENTER", -- [1]
						"CENTER", -- [2]
						-388.5255737304688, -- [3]
						-185.8330383300781, -- [4]
					},
				}, -- [1]
				{
					["NumberBars"] = 5,
					["Bars"] = {
						{
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["r"] = 0.1137254901960784,
								["b"] = 0.06274509803921569,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["show_icon"] = true,
							["AuraName"] = "Haunt",
							["Unit"] = "target",
						}, -- [1]
						{
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["r"] = 1,
								["g"] = 0.396078431372549,
								["b"] = 0.03137254901960784,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["show_icon"] = true,
							["AuraName"] = "Unstable Affliction",
							["Unit"] = "target",
						}, -- [2]
						{
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["g"] = 0.02352941176470588,
								["b"] = 0,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["show_icon"] = true,
							["AuraName"] = "Corruption",
							["Unit"] = "target",
						}, -- [3]
						{
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["r"] = 0.9882352941176471,
								["g"] = 1,
								["b"] = 0.3215686274509804,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["show_icon"] = true,
							["AuraName"] = "Agony",
							["Unit"] = "target",
						}, -- [4]
						{
							["show_all_stacks"] = true,
							["OnlyMine"] = false,
							["AuraName"] = "Curse of the Elements",
							["BuffOrDebuff"] = "HARMFUL",
							["show_icon"] = true,
							["BarColor"] = {
								["r"] = 0.8274509803921568,
								["g"] = 0,
								["b"] = 0.792156862745098,
							},
							["Unit"] = "target",
						}, -- [5]
					},
					["FixedDuration"] = "0",
					["Position"] = {
						"CENTER", -- [1]
						"CENTER", -- [2]
						172.7046661376953, -- [3]
						-144.7054595947266, -- [4]
					},
				}, -- [2]
				{
					["Enabled"] = false,
					["FixedDuration"] = "0",
					["Position"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						-300, -- [4]
					},
				}, -- [3]
				{
					["Enabled"] = false,
					["FixedDuration"] = "0",
					["Position"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						-400, -- [4]
					},
				}, -- [4]
			},
		},
		["G8"] = {
			["nGroups"] = 4,
			["FontSize"] = 12,
			["BarTexture"] = "Duke2",
			["bUncompressed"] = true,
			["BarSpacing"] = 3,
			["Groups"] = {
				{
					["Enabled"] = true,
					["NumberBars"] = 3,
					["Position"] = {
						"CENTER", -- [1]
						"CENTER", -- [2]
						-305.4606323242188, -- [3]
						-221.3075103759766, -- [4]
					},
					["Scale"] = 0.8888891935348511,
					["Bars"] = {
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Molten Core",
							["Unit"] = "player",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = true,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["blink_enabled"] = false,
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_mypip"] = false,
						}, -- [1]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Dark Soul: Knowledge",
							["Unit"] = "player",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = true,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["blink_enabled"] = false,
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_mypip"] = false,
						}, -- [2]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "",
							["Unit"] = "player",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = true,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["blink_enabled"] = false,
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_mypip"] = false,
						}, -- [3]
					},
					["FixedDuration"] = "0",
					["Width"] = 156.0576586764676,
				}, -- [1]
				{
					["Enabled"] = true,
					["NumberBars"] = 4,
					["Position"] = {
						"CENTER", -- [1]
						"CENTER", -- [2]
						202.8463897705078, -- [3]
						-192.2691040039063, -- [4]
					},
					["Scale"] = 0.8888885378837585,
					["Bars"] = {
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Shadowflame",
							["Unit"] = "target",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = true,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["blink_enabled"] = false,
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HARMFUL",
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_mypip"] = false,
						}, -- [1]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Corruption",
							["Unit"] = "target",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = true,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["blink_enabled"] = false,
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HARMFUL",
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_mypip"] = false,
						}, -- [2]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Curse of the Elements",
							["Unit"] = "target",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = true,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["blink_enabled"] = false,
							["TimeFormat"] = "Fmt_Float",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HARMFUL",
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_mypip"] = false,
						}, -- [3]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Doom",
							["Unit"] = "target",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = true,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["blink_enabled"] = false,
							["TimeFormat"] = "Fmt_TwoUnits",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HARMFUL",
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_mypip"] = false,
						}, -- [4]
					},
					["FixedDuration"] = "0",
					["Width"] = 194.2115618882908,
				}, -- [2]
				{
					["Enabled"] = false,
					["NumberBars"] = 3,
					["Position"] = {
						"TOPLEFT", -- [1]
						"TOPLEFT", -- [2]
						100, -- [3]
						-300, -- [4]
					},
					["Scale"] = 1,
					["Bars"] = {
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "",
							["Unit"] = "player",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = false,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["show_all_stacks"] = false,
							["TimeFormat"] = "Fmt_SingleUnit",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["BuffOrDebuff"] = "HELPFUL",
							["show_ttn1"] = false,
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["blink_enabled"] = false,
							["show_mypip"] = false,
						}, -- [1]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "",
							["Unit"] = "player",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = false,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["show_all_stacks"] = false,
							["TimeFormat"] = "Fmt_SingleUnit",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["BuffOrDebuff"] = "HELPFUL",
							["show_ttn1"] = false,
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["blink_enabled"] = false,
							["show_mypip"] = false,
						}, -- [2]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "",
							["Unit"] = "player",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = false,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["show_all_stacks"] = false,
							["TimeFormat"] = "Fmt_SingleUnit",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["BuffOrDebuff"] = "HELPFUL",
							["show_ttn1"] = false,
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["blink_enabled"] = false,
							["show_mypip"] = false,
						}, -- [3]
					},
					["FixedDuration"] = "0",
					["Width"] = 270,
				}, -- [3]
				{
					["Enabled"] = false,
					["NumberBars"] = 3,
					["Position"] = {
						"TOPLEFT", -- [1]
						"TOPLEFT", -- [2]
						100, -- [3]
						-400, -- [4]
					},
					["Scale"] = 1,
					["Bars"] = {
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "",
							["Unit"] = "player",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = false,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["show_all_stacks"] = false,
							["TimeFormat"] = "Fmt_SingleUnit",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["BuffOrDebuff"] = "HELPFUL",
							["show_ttn1"] = false,
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["blink_enabled"] = false,
							["show_mypip"] = false,
						}, -- [1]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "",
							["Unit"] = "player",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = false,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["show_all_stacks"] = false,
							["TimeFormat"] = "Fmt_SingleUnit",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["BuffOrDebuff"] = "HELPFUL",
							["show_ttn1"] = false,
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["blink_enabled"] = false,
							["show_mypip"] = false,
						}, -- [2]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "",
							["Unit"] = "player",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = false,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["r"] = 0.9,
								["g"] = 0.1,
								["b"] = 0.1,
							},
							["usable_duration"] = 0,
							["vct_extra"] = 0,
							["vct_spell"] = "",
							["show_text"] = true,
							["show_ttn2"] = false,
							["show_time"] = true,
							["show_text_user"] = "",
							["Enabled"] = true,
							["append_cd"] = true,
							["show_spark"] = true,
							["show_all_stacks"] = false,
							["TimeFormat"] = "Fmt_SingleUnit",
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0.6,
							},
							["show_charges"] = true,
							["vct_color"] = {
								["a"] = 0.3,
								["r"] = 0.6,
								["g"] = 0.6,
								["b"] = 0,
							},
							["buffcd_reset_spells"] = "",
							["BuffOrDebuff"] = "HELPFUL",
							["show_ttn1"] = false,
							["blink_boss"] = false,
							["show_ttn3"] = false,
							["blink_enabled"] = false,
							["show_mypip"] = false,
						}, -- [3]
					},
					["FixedDuration"] = "0",
					["Width"] = 270,
				}, -- [4]
			},
			["BkgdColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["name"] = "DemoLock",
			["BarPadding"] = 3,
			["FontOutline"] = 0,
			["BarFont"] = "Calibri v0.9",
		},
	},
}
