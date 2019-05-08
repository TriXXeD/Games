
ElvDB = {
	["profileKeys"] = {
		["Trixxedbank - Kazzak"] = "Trixxedbank - Kazzak",
		["Achilina - Draenor"] = "DPS",
		["Achilina - Ravencrest"] = "DPS",
		["Achillina - Thunderhorn"] = "Daemonikos - Ravencrest",
		["Trixxedbank - Tarren Mill"] = "Trixxedbank - Tarren Mill",
		["Lupalia - Ravencrest"] = "DPS",
		["Molech - Kazzak"] = "DPS",
		["Tríxxed - The Maelstrom"] = "Tríxxed - The Maelstrom",
		["Trîxxed - Ravencrest"] = "DPS",
		["Marcellinus - Ravencrest"] = "DPS",
		["Trixxedz - Thunderhorn"] = "Trixxedz - Thunderhorn",
		["Shanonymous - Tarren Mill"] = "DPS",
		["Trïxxed - Ravencrest"] = "DPS",
		["Anneshank - Draenor"] = "DPS",
		["Molokh - Ravencrest"] = "DPS",
		["Monkshood - Draenor"] = "DPS",
		["Wonderwonder - Draenor"] = "Wonderwonder - Draenor",
		["Tríxxed - Laughing Skull"] = "DPS",
		["Trixxed - Kazzak"] = "DPS",
		["Trìxxed - Ravencrest"] = "DPS",
		["Daemonikos - Ravencrest"] = "DPS",
		["Drfeargood - Ravencrest"] = "DPS",
		["Daemonikos - Draenor"] = "DPS",
		["Trixxedbank - Draenor"] = "DPS",
		["Grippiboi - Kazzak"] = "DPS",
		["Shankspeare - Kazzak"] = "DPS",
		["Trixxed - Ravencrest"] = "DPS",
		["Petergrippin - Draenor"] = "Daemonikos - Ravencrest",
		["Xbenedict - Kazzak"] = "HealingRF",
		["Chrysante - Ravencrest"] = "HealingRF",
		["Lichservent - Thunderhorn"] = "Lichservent - Thunderhorn",
		["Lycotonum - Tarren Mill"] = "DPS",
		["Quelith - Draenor"] = "DPS",
		["Odeysseus - Thunderhorn"] = "Odeysseus - Thunderhorn",
		["Palladium - Ravencrest"] = "DPS",
		["Eruditus - Ravencrest"] = "DPS",
		["Trixbankxed - Shadowsong"] = "Trixbankxed - Shadowsong",
		["Kazzía - Thunderhorn"] = "Daemonikos - Ravencrest",
		["Shankspeare - Tarren Mill"] = "DPS",
		["Trixxedosaur - Tarren Mill"] = "DPS",
		["Fausta - Ravencrest"] = "DPS",
	},
	["gold"] = {
		["Laughing Skull"] = {
			["Tríxxed"] = 4135756,
		},
		["Ravencrest"] = {
			["Lupalia"] = 1128923147,
			["Eruditus"] = 783503314,
			["Trïxxed"] = 620521486,
			["Trîxxed"] = 119801240,
			["Fausta"] = 307078988,
			["Achilina"] = 311128875,
			["Chrysante"] = 926451595,
			["Trìxxed"] = 102237547,
		},
		["Draenor"] = {
			["Achilina"] = 120595245,
			["Trixxedbank"] = 2082282897,
			["Quelith"] = 252456646,
		},
		["Kazzak"] = {
			["Trixxed"] = 2837839599,
			["Xbenedict"] = 1457202525,
		},
		["Tarren Mill"] = {
			["Trixxedosaur"] = 196051830,
			["Trixxedbank"] = 275353095,
			["Shankspeare"] = 25256,
			["Shanonymous"] = 701646,
			["Lycotonum"] = 271871363,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Xbenedict - Kazzak"] = {
					"HealingRF", -- [1]
					"HealingRF", -- [2]
					"DPS", -- [3]
					["enabled"] = true,
				},
				["Chrysante - Ravencrest"] = {
					"DPS", -- [1]
					"DPS", -- [2]
					nil, -- [3]
					"HealingRF", -- [4]
					["specGroup"] = 2,
					["enabled"] = true,
					["profile"] = "HealingRF",
				},
				["Shanonymous - Tarren Mill"] = {
					"DPS", -- [1]
					"DPS", -- [2]
					"HealingRF", -- [3]
					["enabled"] = true,
				},
				["Achilina - Ravencrest"] = {
					["profile"] = "HealingRF",
					["specGroup"] = 1,
					["enabled"] = true,
					[3] = "DPS",
				},
				["Trixxedosaur - Tarren Mill"] = {
					"DPS", -- [1]
					"DPS", -- [2]
					"DPS", -- [3]
					"HealingRF", -- [4]
					["enabled"] = true,
				},
				["Grippiboi - Kazzak"] = {
					["enabled"] = false,
				},
				["Fausta - Ravencrest"] = {
					["enabled"] = true,
					[2] = "HealingRF",
					[3] = "DPS",
					["specGroup"] = 2,
					["profile"] = "HealingRF",
				},
				["Trîxxed - Ravencrest"] = {
					"DPS", -- [1]
					"DPS", -- [2]
					"HealingRF", -- [3]
					["specGroup"] = 2,
					["enabled"] = true,
					["profile"] = "HealingRF",
				},
				["Lycotonum - Tarren Mill"] = {
					"DPS", -- [1]
					"HealingRF", -- [2]
					"DPS", -- [3]
					["enabled"] = true,
				},
			},
		},
	},
	["class"] = {
		["Laughing Skull"] = {
			["Tríxxed"] = "WARLOCK",
		},
		["Ravencrest"] = {
			["Fausta"] = "PRIEST",
		},
		["Draenor"] = {
			["Achilina"] = "WARRIOR",
			["Quelith"] = "DEMONHUNTER",
			["Trixxedbank"] = "MAGE",
		},
		["Kazzak"] = {
			["Trixxed"] = "WARLOCK",
			["Xbenedict"] = "PRIEST",
		},
		["Tarren Mill"] = {
			["Trixxedosaur"] = "DRUID",
			["Trixxedbank"] = "MAGE",
			["Shankspeare"] = "ROGUE",
			["Shanonymous"] = "SHAMAN",
			["Lycotonum"] = "MONK",
		},
	},
	["global"] = {
		["general"] = {
			["AceGUI"] = {
				["top"] = 949.01,
				["left"] = 235.01,
			},
			["UIScale"] = 0.7111,
		},
		["uiScale"] = "0.7111",
		["ignoreIncompatible"] = true,
		["userInformedNewChanges1"] = true,
		["nameplatesResetInformed"] = true,
		["uiScaleInformed"] = true,
		["unitframe"] = {
			["aurafilters"] = {
				["RaidDebuffs"] = {
					["spells"] = {
						[265129] = {
							["priority"] = 1,
						},
						["Feed on the Unworthy"] = {
							["enable"] = true,
							["priority"] = 0,
							["stackThreshold"] = 0,
						},
						[265127] = {
							["enable"] = false,
						},
					},
				},
				["Whitelist"] = {
					["spells"] = {
						["Bonecracker"] = {
							["enable"] = true,
							["priority"] = 0,
						},
					},
				},
				["Blacklist"] = {
					["spells"] = {
						["Daybreak"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Deadly Poison"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Flask of Falling Leaves"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["86172"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["53576"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Well Fed"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["88821"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Titanic Restoration"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Visions of Insanity"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Flask of the Warm Sun"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Flask of Spring Blossoms"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Unyielding Faith"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Infusion of Light"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Divine Purpose"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[25771] = {
							["enabled"] = false,
						},
						["Leeching Poison"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["146314"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Water Shield"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Lightning Shield"] = {
							["enable"] = true,
							["priority"] = 0,
						},
					},
				},
			},
			["buffwatch"] = {
				["PALADIN"] = {
					[156322] = {
						["enabled"] = false,
						["point"] = "TOPRIGHT",
						["style"] = "texturedIcon",
						["color"] = {
							["r"] = 0.282352941176471,
							["g"] = 0.819607843137255,
							["b"] = 0.125490196078431,
						},
						["xOffset"] = -15,
						["displayText"] = true,
						["textThreshold"] = 10,
						["textColor"] = {
							["g"] = 0,
							["b"] = 0.0745098039215686,
						},
					},
					[76669] = {
						["enabled"] = true,
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["id"] = 76669,
						["color"] = {
							["r"] = 1,
							["g"] = 0,
							["b"] = 0,
						},
						["xOffset"] = -30,
						["yOffset"] = 0,
					},
					[1022] = {
						["point"] = "BOTTOMLEFT",
						["color"] = {
							["g"] = 0.941176470588235,
							["r"] = 0.0666666666666667,
						},
						["displayText"] = true,
						["textColor"] = {
							["g"] = 0.854901960784314,
							["r"] = 0,
						},
					},
					[6940] = {
						["point"] = "BOTTOMLEFT",
						["color"] = {
							["r"] = 0.0705882352941177,
							["g"] = 0.0705882352941177,
							["b"] = 0.890196078431373,
						},
					},
				},
			},
			["buffwatchBackup"] = {
				["DEATHKNIGHT"] = {
					[49016] = {
					},
				},
				["WARRIOR"] = {
					[114030] = {
					},
					[3411] = {
					},
					[114029] = {
					},
				},
				["SHAMAN"] = {
					[61295] = {
					},
					[51945] = {
					},
					[974] = {
					},
				},
				["MAGE"] = {
					[111264] = {
					},
				},
				["PRIEST"] = {
					[47788] = {
					},
					[17] = {
					},
					[10060] = {
					},
					[33206] = {
					},
					[6788] = {
					},
					[139] = {
					},
					[123258] = {
					},
					[41635] = {
					},
				},
				["ROGUE"] = {
					[57934] = {
					},
				},
				["HUNTER"] = {
				},
				["PET"] = {
					[19615] = {
					},
					[136] = {
					},
				},
				["DRUID"] = {
					[8936] = {
					},
					[33763] = {
					},
					[48438] = {
					},
					[774] = {
					},
				},
				["MONK"] = {
					[124081] = {
					},
					[119611] = {
					},
					[116849] = {
					},
					[132120] = {
					},
				},
				["PALADIN"] = {
					[156322] = {
						["enabled"] = true,
						["point"] = "BOTTOMLEFT",
						["id"] = 156322,
						["displayText"] = false,
						["textThreshold"] = -1,
						["yOffset"] = 0,
						["style"] = "coloredIcon",
						["decimalThreshold"] = 5,
						["xOffset"] = 0,
						["color"] = {
							["b"] = 0.03,
							["g"] = 0.7,
							["r"] = 0.87,
						},
						["textColor"] = {
							["b"] = 1,
							["g"] = 1,
							["r"] = 1,
						},
					},
					[1044] = {
					},
					[148039] = {
					},
					[76669] = {
						["enabled"] = true,
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["id"] = 76669,
						["color"] = {
							["r"] = 1,
							["g"] = 0,
							["b"] = 0,
						},
						["xOffset"] = -30,
					},
					[6940] = {
						["point"] = "BOTTOMLEFT",
						["color"] = {
							["r"] = 0.0705882352941177,
							["g"] = 0.0705882352941177,
							["b"] = 0.890196078431373,
						},
					},
					[114039] = {
					},
					[53563] = {
					},
					[1022] = {
						["color"] = {
							["g"] = 0.941176470588235,
							["r"] = 0.0666666666666667,
						},
						["displayText"] = true,
						["point"] = "BOTTOMLEFT",
						["textColor"] = {
							["g"] = 0.854901960784314,
							["r"] = 0,
						},
					},
					[1038] = {
					},
				},
			},
			["ChannelTicks"] = {
				["Insanity"] = 3,
				["Mind Flay"] = 3,
				["Penance"] = 3,
				[47540] = 3,
			},
		},
	},
	["profiles"] = {
		["Trixxedbank - Kazzak"] = {
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Trixxed - Ravencrest"] = {
			["currentTutorial"] = 3,
		},
		["Achilina - Ravencrest"] = {
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Not - Sargeras"] = {
			["currentTutorial"] = 1,
			["bagsOffsetFixed"] = true,
			["movers"] = {
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-464",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,592",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,476",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,42",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-4",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-18",
				["ElvUF_Raid10Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,494",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-215",
				["BossButton"] = "TOP,ElvUIParent,TOP,-255,-178",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-261,4",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,225",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvAB_6"] = "TOP,ElvUIParent,TOP,0,-95",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,942,116",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,173",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-514,424",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-105,-317",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,454,-163",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-514,-268",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-282,230",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,362",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,446,-326",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,261,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,282,230",
			},
			["bags"] = {
				["itemLevelFontSize"] = 12,
				["itemLevelFont"] = "PT Sans Narrow",
				["itemLevelFontOutline"] = "NONE",
			},
			["hideTutorial"] = 1,
			["chat"] = {
				["timeStampFormat"] = "%I:%M:%S ",
				["emotionIcons"] = false,
				["tabFontOutline"] = "OUTLINE",
				["fontOutline"] = "OUTLINE",
			},
			["unitframe"] = {
				["fontSize"] = 14,
				["colors"] = {
					["transparentHealth"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "PT Sans Narrow",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["boss"] = {
						["customTexts"] = {
							[""] = {
								["font"] = "PT Sans Narrow",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["yOffset"] = 0,
								["text_format"] = "",
								["size"] = 14,
							},
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 40,
							["perrow"] = 5,
							["yOffset"] = 0,
						},
						["buffs"] = {
							["enable"] = false,
						},
						["spacing"] = 30,
					},
					["focus"] = {
						["width"] = 270,
						["debuffs"] = {
							["enable"] = false,
						},
					},
					["target"] = {
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["debuffs"] = {
							["enable"] = true,
							["playerOnly"] = true,
							["anchorPoint"] = "CENTER",
						},
					},
					["targettarget"] = {
						["width"] = 115,
					},
					["player"] = {
						["aurabar"] = {
							["enable"] = false,
						},
					},
				},
			},
			["datatexts"] = {
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 3,
				},
				["font"] = "PT Sans Narrow",
				["fontSize"] = 12,
				["fontOutline"] = "OUTLINE",
				["macrotext"] = true,
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttonsPerRow"] = 3,
				},
				["backdropSpacingConverted"] = true,
			},
			["watchframe"] = {
				["party"] = "HIDDEN",
				["raid"] = "HIDDEN",
			},
			["auras"] = {
				["fontSize"] = 12,
				["font"] = "PT Sans Narrow",
				["fontOutline"] = "OUTLINE",
			},
			["general"] = {
				["autoAcceptInvite"] = true,
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "BOTTOM",
						},
						["garrison"] = {
							["position"] = "BOTTOM",
						},
					},
				},
				["bottomPanel"] = false,
				["interruptAnnounce"] = "SAY",
			},
			["bossAuraFiltersConverted"] = true,
		},
		["HealingRF"] = {
			["currentTutorial"] = 10,
			["general"] = {
				["bottomPanel"] = false,
				["interruptAnnounce"] = "SAY",
				["valuecolor"] = {
					["b"] = 0.99,
					["g"] = 0.99,
					["r"] = 0.99,
				},
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
				["emotionIcons"] = false,
				["timeStampFormat"] = "%H:%M ",
				["scrollDownInterval"] = 120,
				["panelWidth"] = 400,
			},
			["layoutSet"] = "dpsCaster",
			["thinBorderColorSet"] = true,
			["bagSortIgnoreItemsReset"] = true,
			["bagsOffsetFixed"] = true,
			["movers"] = {
				["ElvAB_8"] = "TOP,ElvUIParent,TOP,-124,-257",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-224,283",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1110,485",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-208,-20",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-141",
				["ElvUF_Raid10Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,326",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-247,4",
				["LootFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-456,-332",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-310,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,244",
				["ElvUF_Raid25Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,187",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,301,72",
				["ElvUF_FocusCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,401,208",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-225,211",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-79,212",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-413",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1110,510",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,4",
				["ElvUF_BodyGuardMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-411,173",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,37",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-254,406",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-225,175",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,19,-371",
				["ElvAB_10"] = "TOP,ElvUIParent,TOP,-123,-185",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,184",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,102",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,276,4",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-102,-362",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,404,4",
				["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,347",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-92,-304",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,72,1076",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-225,307",
				["ElvAB_9"] = "TOP,ElvUIParent,TOP,-124,-221",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,69",
				["TooltipMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,23,-512",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1222,652",
				["BossHeaderMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,182,211",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,593,186",
				["ElvAB_7"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,233",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1110,273",
				["AlertFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-426,-356",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,20,-366",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["tooltip"] = {
				["cursorAnchor"] = true,
				["healthBar"] = {
					["height"] = 9,
					["fontSize"] = 9,
					["font"] = "ElvUI Font",
				},
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.79,
						["g"] = 0.51,
						["r"] = 0.58,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["height"] = 50,
						["verticalSpacing"] = 18,
						["width"] = 50,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 100,
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["buffs"] = {
							["sizeOverride"] = 23,
							["useFilter"] = "Blacklist",
							["xOffset"] = 140,
							["enable"] = true,
							["yOffset"] = 8,
						},
						["buffIndicator"] = {
							["size"] = 12,
						},
						["verticalSpacing"] = 10,
					},
					["assist"] = {
						["enable"] = false,
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 30,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["aurabar"] = {
							["attachTo"] = "BUFFS",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["castbar"] = {
							["height"] = 30,
							["width"] = 185,
						},
						["width"] = 185,
					},
					["raid"] = {
						["height"] = 40,
						["healPrediction"] = {
							["enable"] = true,
						},
						["rdebuffs"] = {
							["fontSize"] = 8,
							["size"] = 20,
						},
					},
					["player"] = {
						["castbar"] = {
							["width"] = 185,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
						["width"] = 185,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["actionbar1"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar1"] = {
					["paging"] = {
						["ROGUE"] = "[stance:1] 8;  [stance:2] 8; [stance:3] 8;",
						["DRUID"] = "[bonusbar:1,nostealth] 8;[bonusbar:1,stealth] 8; [bonusbar:3] 10; [bonusbar4:9]",
					},
				},
				["bar5"] = {
					["buttons"] = 8,
					["buttonsPerRow"] = 4,
				},
				["font"] = "PT Sans Narrow Bold",
				["bar7"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["mouseover"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["backdropSpacingConverted"] = true,
			},
			["abm"] = {
				["target"] = true,
				["player"] = true,
			},
			["bags"] = {
				["ignoreItems"] = "",
				["vendorGrays"] = {
					["enable"] = true,
				},
			},
			["sle"] = {
				["datatext"] = {
					["chathandle"] = true,
				},
			},
			["v11NamePlateReset"] = true,
		},
		["Trixxedbank - Tarren Mill"] = {
			["currentTutorial"] = 2,
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Lupalia - Ravencrest"] = {
			["currentTutorial"] = 1,
			["hideTutorial"] = 1,
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,407",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Molech - Kazzak"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
		},
		["Tríxxed - The Maelstrom"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Minimalistic"] = {
			["nameplate"] = {
				["debuffs"] = {
					["font"] = "Expressway",
				},
				["buffs"] = {
					["font"] = "Expressway",
				},
				["font"] = "Expressway",
			},
			["currentTutorial"] = 2,
			["general"] = {
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["b"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["r"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["b"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["r"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["font"] = "Expressway",
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1080",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_BodyGuardMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-651,-586",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["consolidatedBuffs"] = {
					["font"] = "Expressway",
				},
				["fontSize"] = 11,
				["buffs"] = {
					["maxWraps"] = 2,
				},
				["font"] = "Expressway",
			},
			["layoutSet"] = "dpsMelee",
			["unitframe"] = {
				["fontSize"] = 9,
				["fontOutline"] = "THICKOUTLINE",
				["statusbar"] = "ElvUI Blank",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["assist"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["groupsPerRowCol"] = 5,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["width"] = 140,
					},
					["bodyguard"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["castbar"] = {
							["iconSize"] = 54,
							["height"] = 35,
							["iconAttached"] = false,
							["width"] = 478,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["width"] = 189,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["numrows"] = 4,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["height"] = 59,
						["verticalSpacing"] = 0,
						["width"] = 110,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["threatStyle"] = "NONE",
						["width"] = 122,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["font"] = "Expressway",
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["BottomMiniPanel"] = "Time",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["fontSize"] = 9,
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["nameplates"] = {
				["filters"] = {
				},
			},
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["fadeTabsNoBackdrop"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 11,
				["panelBackdrop"] = "HIDEBOTH",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
			["bags"] = {
				["countFontSize"] = 9,
				["itemLevelFontSize"] = 9,
			},
		},
		["Trîxxed - Ravencrest"] = {
			["currentTutorial"] = 1,
		},
		["Marcellinus - Ravencrest"] = {
			["hideTutorial"] = 1,
			["currentTutorial"] = 1,
		},
		["Trixxedz - Thunderhorn"] = {
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Shanonymous - Tarren Mill"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["currentTutorial"] = 2,
			["hideTutorial"] = true,
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
		},
		["Trïxxed - Ravencrest"] = {
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["currentTutorial"] = 2,
		},
		["Palladium - Ravencrest"] = {
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Monkshood - Draenor"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Wonderwonder - Draenor"] = {
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Trixxed - Kazzak"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Grippiboi - Kazzak"] = {
			["currentTutorial"] = 1,
			["hideTutorial"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Trìxxed - Ravencrest"] = {
		},
		["Daemonikos - Ravencrest"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.23,
					["g"] = 0.12,
					["r"] = 0.77,
				},
				["afk"] = false,
				["bottomPanel"] = false,
				["interruptAnnounce"] = "SAY",
				["vendorGrays"] = true,
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["autoRepair"] = "GUILD",
				["experience"] = {
					["hideAtMaxLevel"] = false,
				},
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M ",
				["scrollDownInterval"] = 120,
				["emotionIcons"] = false,
				["panelWidth"] = 400,
			},
			["layoutSet"] = "dpsCaster",
			["bagSortIgnoreItemsReset"] = true,
			["bagsOffsetFixed"] = true,
			["movers"] = {
				["ElvAB_8"] = "TOP,ElvUIParent,TOP,-124,-257",
				["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,197",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,478",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,453",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-208,-20",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-182",
				["ElvUF_Raid10Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,326",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-68,4",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,257,-205",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,375,502",
				["ElvUF_TargetAuraMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-454",
				["ElvUF_Raid25Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,187",
				["ElvUF_FocusCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,375,470",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-256,326",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-298,368",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,4",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-491",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,516,277",
				["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,347",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,422,4",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,422,39",
				["ElvUF_PetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,570,-453",
				["TooltipMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,156,503",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-88",
				["ElvUF_PlayerAuraMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-476",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,45,4",
				["ElvAB_3"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-423,39",
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,402,18",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-423,74",
				["ElvAB_9"] = "TOP,ElvUIParent,TOP,-124,-221",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,499",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-307",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-423,4",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-298,296",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-102,-362",
				["ElvAB_10"] = "TOP,ElvUIParent,TOP,-123,-185",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,175,-325",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-344,-362",
				["ElvUF_BodyGuardMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-411,170",
				["ElvAB_7"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,233",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,261,-313",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,20,-366",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["tooltip"] = {
				["cursorAnchor"] = true,
				["healthBar"] = {
					["height"] = 9,
					["font"] = "PT Sans Narrow",
					["fontSize"] = 9,
				},
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.79,
						["g"] = 0.51,
						["r"] = 0.58,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["player"] = {
						["health"] = {
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
						["castbar"] = {
							["width"] = 185,
						},
						["buffs"] = {
							["enable"] = true,
							["yOffset"] = -15,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["width"] = 185,
					},
					["party"] = {
						["buffs"] = {
							["sizeOverride"] = 23,
							["useFilter"] = "Blacklist",
							["xOffset"] = 140,
							["enable"] = true,
							["yOffset"] = 8,
						},
						["buffIndicator"] = {
							["size"] = 12,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["focus"] = {
						["castbar"] = {
							["height"] = 30,
						},
					},
					["target"] = {
						["health"] = {
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["castbar"] = {
							["height"] = 30,
							["width"] = 185,
						},
						["width"] = 185,
					},
					["raid"] = {
						["height"] = 40,
					},
					["targettarget"] = {
						["width"] = 100,
					},
					["tank"] = {
						["enable"] = false,
					},
				},
			},
			["datatexts"] = {
				["actionbar1"] = false,
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar1"] = {
					["paging"] = {
						["ROGUE"] = "[stance:1] 8;  [stance:2] 8; [stance:3] 8;",
						["DRUID"] = "[bonusbar:1,nostealth] 8;[bonusbar:1,stealth] 8; [bonusbar:3] 10; [bonusbar4:9]",
					},
				},
				["bar5"] = {
					["buttons"] = 8,
					["buttonsPerRow"] = 4,
				},
				["font"] = "PT Sans Narrow Bold",
				["bar7"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["mouseover"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["backdropSpacingConverted"] = true,
			},
			["abm"] = {
				["target"] = true,
				["player"] = true,
			},
			["bags"] = {
				["ignoreItems"] = "",
			},
			["sle"] = {
				["datatext"] = {
					["chathandle"] = true,
				},
				["raidmarkers"] = {
					["enable"] = false,
				},
			},
		},
		["Drfeargood - Ravencrest"] = {
			["currentTutorial"] = 1,
			["hideTutorial"] = true,
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Fausta - Ravencrest"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Trixxedbank - Draenor"] = {
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Shankspeare - Kazzak"] = {
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["DEATHKNIGHT"] = {
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,407",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Eruditus - Ravencrest"] = {
			["currentTutorial"] = 6,
			["hideTutorial"] = true,
			["movers"] = {
			},
		},
		["Petergrippin - Draenor"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Xbenedict - Kazzak"] = {
			["currentTutorial"] = 5,
			["hideTutorial"] = true,
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Chrysante - Ravencrest"] = {
			["movers"] = {
			},
		},
		["Lichservent - Thunderhorn"] = {
			["bossAuraFiltersConverted"] = true,
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["Trixbankxed - Shadowsong"] = {
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Quelith - Draenor"] = {
			["bossAuraFiltersConverted"] = true,
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["Odeysseus - Thunderhorn"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["Lycotonum - Tarren Mill"] = {
			["currentTutorial"] = 5,
			["hideTutorial"] = true,
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Achilina - Draenor"] = {
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["bossAuraFiltersConverted"] = true,
			["currentTutorial"] = 2,
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["DPS"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
				["experience"] = {
					["hideAtMaxLevel"] = false,
				},
			},
			["currentTutorial"] = 4,
			["sle"] = {
				["datatext"] = {
					["chathandle"] = true,
				},
				["raidmarkers"] = {
					["enable"] = false,
				},
			},
			["bags"] = {
				["ignoreItems"] = "",
				["vendorGrays"] = {
					["enable"] = true,
				},
			},
			["hideTutorial"] = true,
			["chat"] = {
				["scrollDownInterval"] = 120,
				["panelWidth"] = 400,
				["emotionIcons"] = false,
				["panelColorConverted"] = true,
				["timeStampFormat"] = "%H:%M ",
			},
			["layoutSet"] = "dpsCaster",
			["thinBorderColorSet"] = true,
			["bagSortIgnoreItemsReset"] = true,
			["bagsOffsetFixed"] = true,
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-502,367",
				["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,197",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-242,283",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,458",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-208,-20",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-182",
				["ElvUF_Raid10Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,326",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-271,52",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,257,-205",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-502,399",
				["ElvUF_TargetAuraMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-454",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-452,22",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,243,307",
				["ElvUF_Raid25Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,187",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,410,19",
				["ElvUF_BodyGuardMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-411,170",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,204,224",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-606,0",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-347",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,436",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,30",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,4",
				["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,347",
				["ElvAB_10"] = "TOP,ElvUIParent,TOP,-123,-185",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-314,-357",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-88",
				["ElvAB_8"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,423,76",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-288,4",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,243,0",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,243,271",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-242,307",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-131,-205",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-286,-166",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvAB_9"] = "TOP,ElvUIParent,TOP,-124,-221",
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,19",
				["ElvUF_PlayerAuraMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-476",
				["TooltipMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,156,503",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,175,-325",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-353,-313",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-215,245",
				["ElvAB_7"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,423,4",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,199",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,261,-313",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,-48,-365",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["tooltip"] = {
				["cursorAnchor"] = true,
				["healthBar"] = {
					["font"] = "PT Sans Narrow",
					["height"] = 9,
					["fontSize"] = 9,
				},
			},
			["v11NamePlateReset"] = true,
			["unitframe"] = {
				["units"] = {
					["target"] = {
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["width"] = 185,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["castbar"] = {
							["width"] = 185,
							["height"] = 30,
						},
					},
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 100,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 40,
							["numrows"] = 1,
							["perrow"] = 4,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid"] = {
						["height"] = 40,
					},
					["player"] = {
						["castbar"] = {
							["width"] = 185,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["width"] = 185,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
						["buffs"] = {
							["yOffset"] = -15,
							["enable"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 30,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["buffs"] = {
							["sizeOverride"] = 23,
							["enable"] = true,
							["yOffset"] = 8,
							["useFilter"] = "Blacklist",
							["xOffset"] = 140,
						},
						["buffIndicator"] = {
							["size"] = 12,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.58,
						["g"] = 0.51,
						["b"] = 0.79,
					},
					["healthclass"] = true,
					["castClassColor"] = true,
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
				},
			},
			["datatexts"] = {
				["actionbar1"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 28,
				},
				["bar8"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttonsPerRow"] = 6,
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "PT Sans Narrow Bold",
				["backdropSpacingConverted"] = true,
				["bar7"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttonsPerRow"] = 6,
				},
				["bar1"] = {
					["paging"] = {
						["ROGUE"] = "[stance:1] 8;  [stance:2] 8; [stance:3] 8;",
						["DRUID"] = "[bonusbar:1,nostealth] 9;[bonusbar:1,stealth] 9; [bonusbar:3] 10; [bonusbar4:9]",
					},
					["buttonsize"] = 28,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 28,
				},
				["bar5"] = {
					["buttons"] = 8,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 28,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 28,
				},
			},
			["abm"] = {
				["player"] = true,
				["target"] = true,
			},
			["bossAuraFiltersConverted"] = true,
			["general"] = {
				["interruptAnnounce"] = "SAY",
				["valuecolor"] = {
					["r"] = 0,
					["g"] = 0.999997794628143,
					["b"] = 0.588234007358551,
				},
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["icons"] = {
						["classHall"] = {
							["position"] = "TOP",
						},
					},
				},
				["bottomPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["experience"] = {
					["hideAtMaxLevel"] = false,
				},
			},
		},
		["Daemonikos - Draenor"] = {
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["Shankspeare - Tarren Mill"] = {
			["currentTutorial"] = 1,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Trixxedosaur - Tarren Mill"] = {
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["currentTutorial"] = 2,
			["hideTutorial"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Anneshank - Draenor"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Trixxedbank - Kazzak"] = "Trixxedbank - Kazzak",
		["Dístúrbed - Thunderhorn"] = "Dístúrbed - Thunderhorn",
		["Trixxed - Ravencrest"] = "Trixxed - Ravencrest",
		["Achilina - Ravencrest"] = "Achilina - Ravencrest",
		["Achillina - Thunderhorn"] = "Achillina - Thunderhorn",
		["Trixxedbank - Tarren Mill"] = "Trixxedbank - Tarren Mill",
		["Lupalia - Ravencrest"] = "Lupalia - Ravencrest",
		["Molech - Kazzak"] = "Molech - Kazzak",
		["Tríxxed - The Maelstrom"] = "Tríxxed - The Maelstrom",
		["Trîxxed - Ravencrest"] = "Trîxxed - Ravencrest",
		["Marcellinus - Ravencrest"] = "Marcellinus - Ravencrest",
		["Trixxedz - Thunderhorn"] = "Trixxedz - Thunderhorn",
		["Shanonymous - Tarren Mill"] = "Shanonymous - Tarren Mill",
		["Trïxxed - Ravencrest"] = "Trïxxed - Ravencrest",
		["Sftyhsfey - Aerie Peak"] = "Sftyhsfey - Aerie Peak",
		["Anneshank - Draenor"] = "Anneshank - Draenor",
		["Molokh - Ravencrest"] = "Molokh - Ravencrest",
		["Monkshood - Draenor"] = "Monkshood - Draenor",
		["Wonderwonder - Draenor"] = "Wonderwonder - Draenor",
		["Lichservent - Thunderhorn"] = "Lichservent - Thunderhorn",
		["Tríxxed - Laughing Skull"] = "Tríxxed - Laughing Skull",
		["Shankspeare - Kazzak"] = "Shankspeare - Kazzak",
		["Trixxed - Kazzak"] = "Trixxed - Kazzak",
		["Grippiboi - Kazzak"] = "Grippiboi - Kazzak",
		["Trìxxed - Ravencrest"] = "Trìxxed - Ravencrest",
		["Daemonikos - Ravencrest"] = "Daemonikos - Ravencrest",
		["Drfeargood - Ravencrest"] = "Drfeargood - Ravencrest",
		["Achilina - Draenor"] = "Achilina - Draenor",
		["Trixxedbank - Draenor"] = "Trixxedbank - Draenor",
		["Teukronar - Argent Dawn"] = "Teukronar - Argent Dawn",
		["Eventimeless - Ravencrest"] = "Eventimeless - Ravencrest",
		["Petergrippin - Draenor"] = "Petergrippin - Draenor",
		["Palladium - Ravencrest"] = "Palladium - Ravencrest",
		["Xbenedict - Kazzak"] = "Xbenedict - Kazzak",
		["Chrysante - Ravencrest"] = "Chrysante - Ravencrest",
		["Eruditus - Ravencrest"] = "Eruditus - Ravencrest",
		["Lycotonum - Tarren Mill"] = "Lycotonum - Tarren Mill",
		["Quelith - Draenor"] = "Quelith - Draenor",
		["Odeysseus - Thunderhorn"] = "Odeysseus - Thunderhorn",
		["Shadefighter - Thunderhorn"] = "Shadefighter - Thunderhorn",
		["Fausta - Ravencrest"] = "Fausta - Ravencrest",
		["Trixbankxed - Shadowsong"] = "Trixbankxed - Shadowsong",
		["Kazzía - Thunderhorn"] = "Kazzía - Thunderhorn",
		["Shankspeare - Tarren Mill"] = "Shankspeare - Tarren Mill",
		["Trixxedosaur - Tarren Mill"] = "Trixxedosaur - Tarren Mill",
		["Daemonikos - Draenor"] = "Daemonikos - Draenor",
	},
	["profiles"] = {
		["Trixxedbank - Kazzak"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
		},
		["Dístúrbed - Thunderhorn"] = {
			["addonskins"] = {
				["Blizzard_WorldStateCaptureBar"] = true,
			},
		},
		["Trixxed - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["sle"] = {
				["inspectframeoptions"] = {
					["enable"] = true,
				},
				["characterframeoptions"] = {
					["enable"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.04",
			},
			["bags"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "6.9999",
		},
		["Achilina - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["sle"] = {
				["inspectframeoptions"] = {
					["enable"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["characterframeoptions"] = {
					["enable"] = true,
				},
				["install_complete"] = "3.09",
			},
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["tooltip"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["install_complete"] = "6.9999",
		},
		["Achillina - Thunderhorn"] = {
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
		},
		["Trixxedbank - Tarren Mill"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Tarren Mill"] = {
					},
				},
				["install_complete"] = "3.521",
			},
			["install_complete"] = "11.06",
		},
		["Lupalia - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
			},
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["inspectframeoptions"] = {
					["enable"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["characterframeoptions"] = {
					["enable"] = true,
				},
				["install_complete"] = "3.01",
			},
			["install_complete"] = "9.17",
		},
		["Molech - Kazzak"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
		},
		["Tríxxed - The Maelstrom"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["The Maelstrom"] = {
					},
				},
			},
		},
		["Trîxxed - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["sle"] = {
				["inspectframeoptions"] = {
					["enable"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["characterframeoptions"] = {
					["enable"] = true,
				},
				["install_complete"] = "3.04",
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
			},
			["install_complete"] = "6.9999",
		},
		["Marcellinus - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["sle"] = {
				["inspectframeoptions"] = {
					["enable"] = true,
				},
				["characterframeoptions"] = {
					["enable"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.06",
			},
			["bags"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "6.9999",
		},
		["Trixxedz - Thunderhorn"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Thunderhorn"] = {
					},
				},
			},
		},
		["Shanonymous - Tarren Mill"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Tarren Mill"] = {
					},
				},
				["install_complete"] = "3.46",
			},
			["install_complete"] = "10.82",
		},
		["Trïxxed - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
			},
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["module"] = {
					["screensaver"] = true,
				},
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.01",
			},
			["install_complete"] = "6.9999",
		},
		["Sftyhsfey - Aerie Peak"] = {
		},
		["Anneshank - Draenor"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.34",
			},
			["install_complete"] = "10.72",
		},
		["Molokh - Ravencrest"] = {
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.09",
			},
			["install_complete"] = "10.14",
		},
		["Monkshood - Draenor"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
			},
		},
		["Wonderwonder - Draenor"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
			},
		},
		["Lichservent - Thunderhorn"] = {
			["addonskins"] = {
				["Blizzard_WorldStateCaptureBar"] = true,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Thunderhorn"] = {
					},
				},
			},
		},
		["Tríxxed - Laughing Skull"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Laughing Skull"] = {
					},
				},
				["install_complete"] = "3.12",
			},
			["install_complete"] = "6.9999",
		},
		["Shankspeare - Kazzak"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "3.41",
			},
			["install_complete"] = "10.77",
		},
		["Trixxed - Kazzak"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "3.34",
			},
			["install_complete"] = "10.72",
		},
		["Grippiboi - Kazzak"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "3.34",
			},
			["install_complete"] = "10.72",
		},
		["Trìxxed - Ravencrest"] = {
			["sle"] = {
				["inspectframeoptions"] = {
					["enable"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["characterframeoptions"] = {
					["enable"] = true,
				},
				["install_complete"] = "3.06",
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["tooltip"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["install_complete"] = "6.9999",
		},
		["Daemonikos - Ravencrest"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.01",
			},
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = "8.29",
		},
		["Drfeargood - Ravencrest"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.34",
			},
			["install_complete"] = "10.72",
		},
		["Achilina - Draenor"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.12",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "10.15",
		},
		["Trixxedbank - Draenor"] = {
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.21",
			},
			["install_complete"] = "10.47",
		},
		["Teukronar - Argent Dawn"] = {
		},
		["Eventimeless - Ravencrest"] = {
			["bags"] = {
				["enable"] = false,
			},
		},
		["Petergrippin - Draenor"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
			},
		},
		["Palladium - Ravencrest"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.34",
			},
			["install_complete"] = "10.72",
		},
		["Xbenedict - Kazzak"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
				["install_complete"] = "3.421",
			},
			["install_complete"] = "10.78",
		},
		["Chrysante - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
			},
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["inspectframeoptions"] = {
					["enable"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["characterframeoptions"] = {
					["enable"] = true,
				},
				["install_complete"] = "3.09",
			},
			["install_complete"] = "7.13",
		},
		["Eruditus - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.01",
			},
			["install_complete"] = "6.9999",
		},
		["Lycotonum - Tarren Mill"] = {
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["module"] = {
					["screensaver"] = true,
				},
				["pvpreadydialogreset"] = true,
				["install_complete"] = "3.34",
				["characterGoldsSorting"] = {
					["Tarren Mill"] = {
					},
				},
			},
			["install_complete"] = "10.72",
		},
		["Quelith - Draenor"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.12",
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "10.15",
		},
		["Odeysseus - Thunderhorn"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Thunderhorn"] = {
					},
				},
			},
		},
		["Shadefighter - Thunderhorn"] = {
			["addonskins"] = {
				["Blizzard_WorldStateCaptureBar"] = true,
			},
		},
		["Fausta - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["sle"] = {
				["inspectframeoptions"] = {
					["enable"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["characterframeoptions"] = {
					["enable"] = true,
				},
				["install_complete"] = "3.06",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "6.9999",
		},
		["Trixbankxed - Shadowsong"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Shadowsong"] = {
					},
				},
			},
		},
		["Kazzía - Thunderhorn"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["install_complete"] = "3.01",
			},
			["addonskins"] = {
				["Blizzard_WorldStateCaptureBar"] = true,
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "7.13",
		},
		["Shankspeare - Tarren Mill"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Tarren Mill"] = {
					},
				},
				["install_complete"] = "3.53",
			},
			["install_complete"] = "11.10",
		},
		["Trixxedosaur - Tarren Mill"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Tarren Mill"] = {
					},
				},
				["install_complete"] = "3.511",
			},
			["install_complete"] = "10.92",
		},
		["Daemonikos - Draenor"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.21",
			},
			["install_complete"] = "10.47",
		},
	},
}
