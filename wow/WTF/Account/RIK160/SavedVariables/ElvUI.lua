
ElvDB = {
	["profileKeys"] = {
		["Eruditus - Ravencrest"] = "DPS",
		["Tríxxed - Laughing Skull"] = "DPS",
		["Achilina - Ravencrest"] = "DPS",
		["Trìxxed - Ravencrest"] = "DPS",
		["Achillina - Thunderhorn"] = "Daemonikos - Ravencrest",
		["Trixxedbank - Draenor"] = "DPS",
		["Lupalia - Ravencrest"] = "DPS",
		["Achilina - Draenor"] = "DPS",
		["Fausta - Ravencrest"] = "HealingRF",
		["Wonderwonder - Draenor"] = "Wonderwonder - Draenor",
		["Trîxxed - Ravencrest"] = "HealingRF",
		["Chrysante - Ravencrest"] = "HealingRF",
		["Marcellinus - Ravencrest"] = "DPS",
		["Daemonikos - Draenor"] = "DPS",
		["Quelith - Draenor"] = "DPS",
		["Odeysseus - Thunderhorn"] = "Odeysseus - Thunderhorn",
		["Trïxxed - Ravencrest"] = "DPS",
		["Daemonikos - Ravencrest"] = "DPS",
		["Petergrippin - Draenor"] = "Daemonikos - Ravencrest",
		["Kazzía - Thunderhorn"] = "Daemonikos - Ravencrest",
		["Lichservent - Thunderhorn"] = "Lichservent - Thunderhorn",
		["Trixxed - Ravencrest"] = "DPS",
		["Molokh - Ravencrest"] = "DPS",
	},
	["gold"] = {
		["Laughing Skull"] = {
			["Tríxxed"] = 40593934,
		},
		["Ravencrest"] = {
			["Lupalia"] = 393529941,
			["Trîxxed"] = 112562537,
			["Achilina"] = 156385860,
			["Molokh"] = 0,
			["Trìxxed"] = 130862569,
			["Daemonikos"] = 2049418748,
			["Eruditus"] = 618269768,
			["Trïxxed"] = 456797688,
			["Eventimeless"] = 134885,
			["Marcellinus"] = 24461134,
			["Chrysante"] = 318939778,
			["Fausta"] = 192717862,
			["Trixxed"] = 74286518,
		},
		["Draenor"] = {
			["Wonderwonder"] = 100000,
			["Trixxedbank"] = 10685563605,
			["Petergrippin"] = 2000,
			["Achilina"] = 1105559193,
			["Quelith"] = 243976377,
			["Daemonikos"] = 36828944454,
		},
		["Aerie Peak"] = {
			["Sftyhsfey"] = 0,
		},
		["Thunderhorn"] = {
			["Achillina"] = 9735735,
			["Lichservent"] = 464813,
			["Dístúrbed"] = 2546,
			["Kazzía"] = 18451566,
			["Odeysseus"] = 84480,
			["Shadefighter"] = 2084522,
		},
		["Argent Dawn"] = {
			["Teukronar"] = 3565,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Achilina - Ravencrest"] = {
					["profile"] = "HealingRF",
					["specGroup"] = 1,
					["enabled"] = true,
					[3] = "DPS",
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
					["profile"] = "HealingRF",
					["specGroup"] = 2,
					["enabled"] = true,
					[3] = "HealingRF",
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
			},
		},
	},
	["global"] = {
		["uiScale"] = "0.71111111111111",
		["ignoreIncompatible"] = true,
		["userInformedNewChanges1"] = true,
		["unitframe"] = {
			["aurafilters"] = {
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
					[6788] = {
					},
					[33206] = {
					},
					[139] = {
					},
					[123258] = {
					},
					[10060] = {
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
					[33763] = {
					},
					[8936] = {
					},
					[774] = {
					},
					[48438] = {
					},
				},
				["MONK"] = {
					[132120] = {
					},
					[124081] = {
					},
					[116849] = {
					},
					[119611] = {
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
			},
		},
	},
	["profiles"] = {
		["Eruditus - Ravencrest"] = {
			["currentTutorial"] = 6,
			["hideTutorial"] = true,
			["movers"] = {
			},
		},
		["Achilina - Ravencrest"] = {
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
		["Not - Sargeras"] = {
			["currentTutorial"] = 1,
			["general"] = {
				["autoAcceptInvite"] = true,
				["interruptAnnounce"] = "SAY",
				["bottomPanel"] = false,
				["minimap"] = {
					["icons"] = {
						["garrison"] = {
							["position"] = "BOTTOM",
						},
						["classHall"] = {
							["position"] = "BOTTOM",
						},
					},
				},
			},
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
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,454,-163",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-514,424",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-105,-317",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-282,230",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-514,-268",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,173",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,362",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,446,-326",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,261,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,282,230",
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = 1,
			["auras"] = {
				["fontSize"] = 12,
				["font"] = "PT Sans Narrow",
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
					["player"] = {
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["width"] = 270,
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
							["yOffset"] = 0,
							["perrow"] = 5,
						},
						["buffs"] = {
							["enable"] = false,
						},
						["spacing"] = 30,
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
				["fontSize"] = 12,
				["fontOutline"] = "OUTLINE",
				["bar2"] = {
					["enabled"] = true,
				},
				["macrotext"] = true,
				["font"] = "PT Sans Narrow",
				["bar5"] = {
					["buttonsPerRow"] = 3,
				},
				["backdropSpacingConverted"] = true,
			},
			["watchframe"] = {
				["party"] = "HIDDEN",
				["raid"] = "HIDDEN",
			},
			["chat"] = {
				["timeStampFormat"] = "%I:%M:%S ",
				["tabFontOutline"] = "OUTLINE",
				["emotionIcons"] = false,
				["fontOutline"] = "OUTLINE",
			},
			["bagsOffsetFixed"] = true,
			["bags"] = {
				["itemLevelFont"] = "PT Sans Narrow",
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "NONE",
			},
		},
		["HealingRF"] = {
			["currentTutorial"] = 10,
			["general"] = {
				["vendorGrays"] = true,
				["bottomPanel"] = false,
				["interruptAnnounce"] = "SAY",
				["valuecolor"] = {
					["b"] = 0.87,
					["g"] = 0.44,
					["r"] = 0,
				},
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["autoRepair"] = "GUILD",
				["afk"] = false,
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
			["thinBorderColorSet"] = true,
			["bagSortIgnoreItemsReset"] = true,
			["bagsOffsetFixed"] = true,
			["movers"] = {
				["ElvAB_8"] = "TOP,ElvUIParent,TOP,-124,-257",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,478",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1093,575",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-208,-20",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-141",
				["ElvUF_Raid10Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,326",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-279,22",
				["LootFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-456,-332",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,375,502",
				["ElvUF_Raid25Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,187",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-428,22",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,403",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-259,367",
				["ElvUF_FocusCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,375,470",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-491",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1093,600",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,4",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,37",
				["ElvUF_BodyGuardMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-411,173",
				["ElvUF_PetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,568,-489",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-102,-362",
				["ElvAB_10"] = "TOP,ElvUIParent,TOP,-123,-185",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,184",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,102",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,276,4",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,69",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,460,4",
				["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,347",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-92,-304",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,72,1076",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,499",
				["ElvAB_9"] = "TOP,ElvUIParent,TOP,-124,-221",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-301,334",
				["TooltipMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,156,503",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,175,-325",
				["BossHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,169,-232",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,516,277",
				["ElvAB_7"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,233",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1179,347",
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
					["player"] = {
						["castbar"] = {
							["width"] = 185,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-max-percent]",
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
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["health"] = {
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
					["focus"] = {
						["castbar"] = {
							["height"] = 30,
						},
					},
					["assist"] = {
						["enable"] = false,
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
			},
		},
		["Trìxxed - Ravencrest"] = {
		},
		["Trixxed - Ravencrest"] = {
			["currentTutorial"] = 3,
		},
		["Trixxedbank - Draenor"] = {
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
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
		["Lupalia - Ravencrest"] = {
			["currentTutorial"] = 1,
			["hideTutorial"] = 1,
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,407",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["DEATHKNIGHT"] = {
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,407",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Achilina - Draenor"] = {
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
			["bossAuraFiltersConverted"] = true,
			["currentTutorial"] = 2,
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
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
				["font"] = "Expressway",
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
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
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["ElvUF_BodyGuardMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-651,-586",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
			},
			["bags"] = {
				["countFontSize"] = 9,
				["itemLevelFontSize"] = 9,
			},
			["hideTutorial"] = true,
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
			["bossAuraFiltersConverted"] = true,
			["unitframe"] = {
				["fontSize"] = 9,
				["fontOutline"] = "THICKOUTLINE",
				["font"] = "Expressway",
				["statusbar"] = "ElvUI Blank",
				["smoothbars"] = true,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["anchorPoint"] = "BOTTOM",
							["numrows"] = 4,
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
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["height"] = 59,
						["verticalSpacing"] = 0,
						["width"] = 110,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
							["enable"] = true,
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
					["assist"] = {
						["enable"] = false,
					},
					["bodyguard"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["castbar"] = {
							["height"] = 35,
							["iconSize"] = 54,
							["iconAttached"] = false,
							["width"] = 478,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 80,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
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
							["enable"] = true,
							["height"] = 17,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["threatStyle"] = "NONE",
						["width"] = 189,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
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
					["arena"] = {
						["spacing"] = 26,
						["castbar"] = {
							["width"] = 246,
						},
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
							["position"] = "TOP",
							["yOffset"] = -2,
						},
						["height"] = 50,
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
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["headerFontSize"] = 11,
				["fontSize"] = 11,
				["smallTextFontSize"] = 11,
			},
			["auras"] = {
				["consolidatedBuffs"] = {
					["font"] = "Expressway",
				},
				["fontSize"] = 11,
				["font"] = "Expressway",
				["buffs"] = {
					["maxWraps"] = 2,
				},
			},
			["layoutSet"] = "dpsMelee",
		},
		["Chrysante - Ravencrest"] = {
			["movers"] = {
			},
		},
		["Trîxxed - Ravencrest"] = {
			["currentTutorial"] = 1,
		},
		["Petergrippin - Draenor"] = {
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
		["Marcellinus - Ravencrest"] = {
			["hideTutorial"] = 1,
			["currentTutorial"] = 1,
		},
		["Quelith - Draenor"] = {
			["bossAuraFiltersConverted"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["Odeysseus - Thunderhorn"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["Trïxxed - Ravencrest"] = {
			["currentTutorial"] = 2,
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
		["Daemonikos - Ravencrest"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["vendorGrays"] = true,
				["afk"] = false,
				["experience"] = {
					["hideAtMaxLevel"] = false,
				},
				["interruptAnnounce"] = "SAY",
				["valuecolor"] = {
					["b"] = 0.23,
					["g"] = 0.12,
					["r"] = 0.77,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["autoRepair"] = "GUILD",
				["bottomPanel"] = false,
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
					["tank"] = {
						["enable"] = false,
					},
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
			["general"] = {
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
				["valuecolor"] = {
					["r"] = 1,
					["g"] = 0.96,
					["b"] = 0.41,
				},
				["vendorGrays"] = true,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["experience"] = {
					["hideAtMaxLevel"] = false,
				},
				["interruptAnnounce"] = "SAY",
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["scrollDownInterval"] = 120,
				["panelWidth"] = 400,
				["emotionIcons"] = false,
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
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-606,0",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,233",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-215,245",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-347",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,435",
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
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,19",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,243,271",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-242,307",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-131,-205",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-286,-166",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvAB_9"] = "TOP,ElvUIParent,TOP,-124,-221",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,243,0",
				["ElvUF_PlayerAuraMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-476",
				["TooltipMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,156,503",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,175,-325",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-353,-313",
				["ElvUF_BodyGuardMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-411,170",
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
			["bags"] = {
				["ignoreItems"] = "",
			},
			["unitframe"] = {
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["width"] = 100,
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 40,
							["perrow"] = 4,
						},
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
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
						["buffs"] = {
							["yOffset"] = -15,
							["enable"] = true,
						},
					},
					["focus"] = {
						["castbar"] = {
							["height"] = 30,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["height"] = 40,
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
					["target"] = {
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
						},
						["castbar"] = {
							["width"] = 185,
							["height"] = 30,
						},
						["width"] = 185,
						["health"] = {
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
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
				["time24"] = true,
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
					["buttonsPerRow"] = 6,
					["mouseover"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 28,
				},
				["bar1"] = {
					["paging"] = {
						["ROGUE"] = "[stance:1] 8;  [stance:2] 8; [stance:3] 8;",
						["DRUID"] = "[bonusbar:1,nostealth] 9;[bonusbar:1,stealth] 9; [bonusbar:3] 10; [bonusbar4:9]",
					},
					["buttonsize"] = 28,
				},
				["bar5"] = {
					["buttons"] = 8,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 28,
				},
				["font"] = "PT Sans Narrow Bold",
				["bar7"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["mouseover"] = true,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 28,
				},
				["backdropSpacingConverted"] = true,
			},
			["abm"] = {
				["player"] = true,
				["target"] = true,
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
		["Daemonikos - Draenor"] = {
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
		["Lichservent - Thunderhorn"] = {
			["bossAuraFiltersConverted"] = true,
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
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
		["Wonderwonder - Draenor"] = {
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
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
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Dístúrbed - Thunderhorn"] = "Dístúrbed - Thunderhorn",
		["Trixxed - Ravencrest"] = "Trixxed - Ravencrest",
		["Tríxxed - Laughing Skull"] = "Tríxxed - Laughing Skull",
		["Achilina - Draenor"] = "Achilina - Draenor",
		["Wonderwonder - Draenor"] = "Wonderwonder - Draenor",
		["Achilina - Ravencrest"] = "Achilina - Ravencrest",
		["Trìxxed - Ravencrest"] = "Trìxxed - Ravencrest",
		["Achillina - Thunderhorn"] = "Achillina - Thunderhorn",
		["Daemonikos - Ravencrest"] = "Daemonikos - Ravencrest",
		["Teukronar - Argent Dawn"] = "Teukronar - Argent Dawn",
		["Trixxedbank - Draenor"] = "Trixxedbank - Draenor",
		["Lupalia - Ravencrest"] = "Lupalia - Ravencrest",
		["Eventimeless - Ravencrest"] = "Eventimeless - Ravencrest",
		["Petergrippin - Draenor"] = "Petergrippin - Draenor",
		["Eruditus - Ravencrest"] = "Eruditus - Ravencrest",
		["Shadefighter - Thunderhorn"] = "Shadefighter - Thunderhorn",
		["Trîxxed - Ravencrest"] = "Trîxxed - Ravencrest",
		["Marcellinus - Ravencrest"] = "Marcellinus - Ravencrest",
		["Daemonikos - Draenor"] = "Daemonikos - Draenor",
		["Quelith - Draenor"] = "Quelith - Draenor",
		["Odeysseus - Thunderhorn"] = "Odeysseus - Thunderhorn",
		["Trïxxed - Ravencrest"] = "Trïxxed - Ravencrest",
		["Chrysante - Ravencrest"] = "Chrysante - Ravencrest",
		["Sftyhsfey - Aerie Peak"] = "Sftyhsfey - Aerie Peak",
		["Kazzía - Thunderhorn"] = "Kazzía - Thunderhorn",
		["Lichservent - Thunderhorn"] = "Lichservent - Thunderhorn",
		["Fausta - Ravencrest"] = "Fausta - Ravencrest",
		["Molokh - Ravencrest"] = "Molokh - Ravencrest",
	},
	["profiles"] = {
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
		["Tríxxed - Laughing Skull"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Laughing Skull"] = {
					},
				},
				["install_complete"] = "3.12",
			},
			["install_complete"] = "6.9999",
		},
		["Achilina - Draenor"] = {
			["sle"] = {
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
		["Wonderwonder - Draenor"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
			},
		},
		["Achilina - Ravencrest"] = {
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
				["install_complete"] = "3.09",
			},
			["bags"] = {
				["enable"] = false,
			},
			["tooltip"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "6.9999",
		},
		["Trìxxed - Ravencrest"] = {
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
			["tooltip"] = {
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
		["Achillina - Thunderhorn"] = {
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
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
		["Teukronar - Argent Dawn"] = {
		},
		["Trixxedbank - Draenor"] = {
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
		["Lupalia - Ravencrest"] = {
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
				["install_complete"] = "3.01",
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
			},
			["bags"] = {
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
			["install_complete"] = "9.17",
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
		["Eruditus - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.01",
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
		["Shadefighter - Thunderhorn"] = {
			["addonskins"] = {
				["Blizzard_WorldStateCaptureBar"] = true,
			},
		},
		["Trîxxed - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
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
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
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
		["Quelith - Draenor"] = {
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.12",
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
		["Trïxxed - Ravencrest"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["sle"] = {
				["module"] = {
					["screensaver"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.01",
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
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "6.9999",
		},
		["Chrysante - Ravencrest"] = {
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
				["install_complete"] = "3.09",
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "7.13",
		},
		["Sftyhsfey - Aerie Peak"] = {
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
		["Lichservent - Thunderhorn"] = {
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
				["characterframeoptions"] = {
					["enable"] = true,
				},
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
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
	},
}
