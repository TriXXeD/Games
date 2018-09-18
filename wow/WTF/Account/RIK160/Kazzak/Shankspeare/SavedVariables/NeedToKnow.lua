
NeedToKnow_Settings = nil
NeedToKnow_CharSettings = {
	["Locked"] = true,
	["Specs"] = {
		"G36", -- [1]
		"G35", -- [2]
	},
	["Profiles"] = {
		["G35"] = {
			["nGroups"] = 4,
			["name"] = "Lupalia-Ravencrest.2",
			["BarPadding"] = 2.728366374969482,
			["BarSpacing"] = 1.551977872848511,
			["Groups"] = {
				{
					["NumberBars"] = 8,
					["Position"] = {
						nil, -- [1]
						"BOTTOMLEFT", -- [2]
						942.1535215564443, -- [3]
						341.2713113957555, -- [4]
					},
					["Scale"] = 1.277778625488281,
					["Bars"] = {
						{
							["BarColor"] = {
								["b"] = 0.094117647058824,
								["g"] = 0,
								["r"] = 0.97254901960784,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["TimeFormat"] = "Fmt_Float",
							["AuraName"] = "Hemorrhage",
							["Unit"] = "target",
						}, -- [1]
						{
							["BarColor"] = {
								["b"] = 0.1450980392156863,
								["g"] = 0.02745098039215686,
								["r"] = 0.6901960784313725,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["TimeFormat"] = "Fmt_Float",
							["AuraName"] = "Rupture",
							["Unit"] = "target",
						}, -- [2]
						{
							["BarColor"] = {
								["b"] = 0.3764705882352941,
								["g"] = 0.7254901960784314,
								["r"] = 0.9725490196078431,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["TimeFormat"] = "Fmt_Float",
							["AuraName"] = "Kidney Shot",
							["Unit"] = "target",
						}, -- [3]
						{
							["BarColor"] = {
								["b"] = 0.9725490196078431,
								["g"] = 0.6392156862745098,
								["r"] = 0.4784313725490196,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["TimeFormat"] = "Fmt_Float",
							["AuraName"] = "Cheap Shot",
							["Unit"] = "target",
						}, -- [4]
						{
							["TimeFormat"] = "Fmt_Float",
							["BuffOrDebuff"] = "HARMFUL",
							["BarColor"] = {
								["b"] = 0.31372549019608,
								["g"] = 0,
								["r"] = 0.97254901960784,
							},
							["AuraName"] = "Garrote",
							["Unit"] = "target",
						}, -- [5]
						{
							["TimeFormat"] = "Fmt_Float",
							["BuffOrDebuff"] = "HARMFUL",
							["BarColor"] = {
								["b"] = 0.9725490196078431,
								["g"] = 0.3294117647058824,
								["r"] = 0,
							},
							["AuraName"] = "Garrote - Silence",
							["Unit"] = "target",
						}, -- [6]
						{
							["BarColor"] = {
								["g"] = 0.5372549019607843,
								["b"] = 0.2078431372549019,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["TimeFormat"] = "Fmt_Float",
							["AuraName"] = "Gouge",
							["Unit"] = "target",
						}, -- [7]
						{
							["BarColor"] = {
								["b"] = 0.203921568627451,
								["g"] = 0.9058823529411765,
								["r"] = 0.9294117647058824,
							},
							["BuffOrDebuff"] = "HARMFUL",
							["TimeFormat"] = "Fmt_Float",
							["AuraName"] = "Dismantle",
							["Unit"] = "target",
						}, -- [8]
					},
					["FixedDuration"] = "0",
					["Width"] = 142.8093863305458,
				}, -- [1]
				{
					["NumberBars"] = 11,
					["Position"] = {
						"CENTER", -- [1]
						"CENTER", -- [2]
						-350.0174550222255, -- [3]
						-131.9124591360599, -- [4]
					},
					["Scale"] = 1.222222805023193,
					["Bars"] = {
						{
							["BarColor"] = {
								["r"] = 0.007843137254901961,
								["b"] = 0.05098039215686274,
							},
							["AuraName"] = "Recuperate",
							["TimeFormat"] = "Fmt_Float",
						}, -- [1]
						{
							["BarColor"] = {
								["r"] = 0.5529411764705883,
								["g"] = 0.3294117647058824,
								["b"] = 0.08627450980392157,
							},
							["AuraName"] = "Surge of Conquest",
							["TimeFormat"] = "Fmt_Float",
						}, -- [2]
						{
							["TimeFormat"] = "Fmt_Float",
							["AuraName"] = "Slice and Dice",
							["BarColor"] = {
								["b"] = 0.12941176470588,
								["g"] = 0.94901960784314,
								["r"] = 0.84313725490196,
							},
						}, -- [3]
						{
							["BarColor"] = {
								["g"] = 0,
								["b"] = 0.4980392156862745,
							},
							["AuraName"] = "Shadow Blades",
							["TimeFormat"] = "Fmt_Float",
						}, -- [4]
						{
							["BarColor"] = {
								["r"] = 0.2117647058823529,
								["g"] = 0,
								["b"] = 0.4431372549019608,
							},
							["AuraName"] = "Shadow Dance",
							["TimeFormat"] = "Fmt_Float",
						}, -- [5]
						{
							["BarColor"] = {
								["g"] = 0.2470588235294118,
								["b"] = 0.5882352941176471,
							},
							["AuraName"] = "Cloak of Shadows",
							["TimeFormat"] = "Fmt_Float",
						}, -- [6]
						{
							["BarColor"] = {
								["g"] = 0.1490196078431373,
								["b"] = 0.04313725490196078,
							},
							["AuraName"] = "Combat Readiness",
							["TimeFormat"] = "Fmt_Float",
						}, -- [7]
						{
							["BarColor"] = {
								["r"] = 0.9372549019607843,
								["g"] = 0.7019607843137254,
								["b"] = 0.9215686274509803,
							},
							["AuraName"] = "Evasion",
							["TimeFormat"] = "Fmt_Float",
						}, -- [8]
						{
							["BarColor"] = {
								["r"] = 1,
								["g"] = 0.1098039215686275,
								["b"] = 0,
							},
							["AuraName"] = "Sprint",
							["TimeFormat"] = "Fmt_Float",
						}, -- [9]
						{
							["AuraName"] = "Feint",
							["BarColor"] = {
								["b"] = 0.76862745098039,
								["g"] = 0.81960784313725,
								["r"] = 0.24705882352941,
							},
						}, -- [10]
						{
							["Enabled"] = false,
							["AuraName"] = "Feint",
							["BarColor"] = {
								["b"] = 0.76862745098039,
								["g"] = 0.81960784313725,
								["r"] = 0.24705882352941,
							},
						}, -- [11]
					},
					["FixedDuration"] = "0",
					["Width"] = 151.9859245732694,
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
		["G36"] = {
			["nGroups"] = 4,
			["FontSize"] = 12,
			["BarTexture"] = "BantoBar",
			["BarFont"] = "Calibri v0.9",
			["FontOutline"] = 0,
			["BarSpacing"] = 3,
			["BkgdColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["name"] = "Lupalia-Ravencrest.1",
			["BarPadding"] = 3,
			["Groups"] = {
				{
					["Enabled"] = true,
					["NumberBars"] = 3,
					["Position"] = {
						"CENTER", -- [1]
						"CENTER", -- [2]
						-512.1497802734375, -- [3]
						-178.1752319335938, -- [4]
					},
					["Scale"] = 1,
					["Bars"] = {
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Slice And Dice",
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.02352941176470588,
								["g"] = 0.7372549019607844,
								["r"] = 0.7490196078431373,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
						}, -- [1]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Recuperate",
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.1450980392156863,
								["g"] = 0.5215686274509804,
								["r"] = 0.1411764705882353,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
						}, -- [2]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Shadow Blades",
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["r"] = 0.392156862745098,
								["g"] = 0,
								["b"] = 0.2784313725490196,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
						}, -- [3]
					},
					["FixedDuration"] = "0",
					["Width"] = 270,
				}, -- [1]
				{
					["Enabled"] = true,
					["NumberBars"] = 3,
					["Position"] = {
						"CENTER", -- [1]
						"CENTER", -- [2]
						166.1410827636719, -- [3]
						-188.4656219482422, -- [4]
					},
					["Scale"] = 1,
					["Bars"] = {
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Revealing Strike",
							["Unit"] = "target",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = false,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.27843137254902,
								["g"] = 0.4,
								["r"] = 0.52156862745098,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HARMFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
						}, -- [1]
						{
							["buffcd_duration"] = 0,
							["append_usable"] = false,
							["AuraName"] = "Rupture",
							["Unit"] = "target",
							["blink_label"] = "",
							["OnlyMine"] = true,
							["vct_enabled"] = false,
							["show_icon"] = false,
							["show_count"] = true,
							["bDetectExtends"] = false,
							["blink_ooc"] = true,
							["MissingBlink"] = {
								["a"] = 0.5,
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.11372549019608,
								["g"] = 0.12156862745098,
								["r"] = 0.6,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HARMFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.6,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
						}, -- [3]
					},
					["FixedDuration"] = "0",
					["Width"] = 270,
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.6,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.6,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.6,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.6,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.6,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
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
								["b"] = 0.1,
								["g"] = 0.1,
								["r"] = 0.9,
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
							["show_mypip"] = false,
							["blink_enabled"] = false,
							["BarColor"] = {
								["a"] = 1,
								["b"] = 0.6,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["TimeFormat"] = "Fmt_SingleUnit",
							["blink_boss"] = false,
							["vct_color"] = {
								["a"] = 0.3,
								["b"] = 0,
								["g"] = 0.6,
								["r"] = 0.6,
							},
							["buffcd_reset_spells"] = "",
							["show_ttn1"] = false,
							["BuffOrDebuff"] = "HELPFUL",
							["show_charges"] = true,
							["show_ttn3"] = false,
							["show_all_stacks"] = false,
							["show_spark"] = true,
						}, -- [3]
					},
					["FixedDuration"] = "0",
					["Width"] = 270,
				}, -- [4]
			},
			["bUncompressed"] = true,
		},
	},
}
