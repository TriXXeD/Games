
ElvDB = {
	["profileKeys"] = {
		["Trixxedbank - Kazzak"] = "Trixxedbank - Kazzak",
		["Achilina - Draenor"] = "DPS",
		["Achilina - Ravencrest"] = "DPS",
		["Achillina - Thunderhorn"] = "Daemonikos - Ravencrest",
		["Lupalia - Ravencrest"] = "DPS",
		["Molech - Kazzak"] = "DPS",
		["Tríxxed - The Maelstrom"] = "Tríxxed - The Maelstrom",
		["Trîxxed - Ravencrest"] = "DPS",
		["Marcellinus - Ravencrest"] = "DPS",
		["Trixxedz - Thunderhorn"] = "Trixxedz - Thunderhorn",
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
		["Trixxedbank - Draenor"] = "DPS",
		["Shankspeare - Kazzak"] = "DPS",
		["Trixxed - Ravencrest"] = "DPS",
		["Eruditus - Ravencrest"] = "DPS",
		["Xbenedict - Kazzak"] = "HealingRF",
		["Chrysante - Ravencrest"] = "HealingRF",
		["Palladium - Ravencrest"] = "DPS",
		["Trixbankxed - Shadowsong"] = "Trixbankxed - Shadowsong",
		["Quelith - Draenor"] = "DPS",
		["Odeysseus - Thunderhorn"] = "Odeysseus - Thunderhorn",
		["Lycotonum - Tarren Mill"] = "DPS",
		["Lichservent - Thunderhorn"] = "Lichservent - Thunderhorn",
		["Petergrippin - Draenor"] = "Daemonikos - Ravencrest",
		["Kazzía - Thunderhorn"] = "Daemonikos - Ravencrest",
		["Fausta - Ravencrest"] = "DPS",
		["Grippiboi - Kazzak"] = "DPS",
		["Daemonikos - Draenor"] = "DPS",
	},
	["gold"] = {
		["Draenor"] = {
			["Trixxedbank"] = 16512962897,
		},
		["Kazzak"] = {
			["Xbenedict"] = 52571906,
			["Trixxed"] = 5747582675,
		},
		["Tarren Mill"] = {
			["Lycotonum"] = 31977537,
		},
		["Ravencrest"] = {
			["Eruditus"] = 783503314,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Achilina - Ravencrest"] = {
					["profile"] = "HealingRF",
					[3] = "DPS",
					["enabled"] = true,
					["specGroup"] = 1,
				},
				["Xbenedict - Kazzak"] = {
					"HealingRF", -- [1]
					"HealingRF", -- [2]
					"DPS", -- [3]
					["enabled"] = true,
				},
				["Grippiboi - Kazzak"] = {
					["enabled"] = false,
				},
				["Trîxxed - Ravencrest"] = {
					"DPS", -- [1]
					"DPS", -- [2]
					"HealingRF", -- [3]
					["specGroup"] = 2,
					["profile"] = "HealingRF",
					["enabled"] = true,
				},
				["Fausta - Ravencrest"] = {
					["enabled"] = true,
					[2] = "HealingRF",
					[3] = "DPS",
					["specGroup"] = 2,
					["profile"] = "HealingRF",
				},
				["Chrysante - Ravencrest"] = {
					"DPS", -- [1]
					"DPS", -- [2]
					nil, -- [3]
					"HealingRF", -- [4]
					["specGroup"] = 2,
					["profile"] = "HealingRF",
					["enabled"] = true,
				},
			},
		},
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["Boss"] = {
					["actions"] = {
						["frameLevel"] = 0,
						["color"] = {
							["borderColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["nameColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["health"] = false,
							["power"] = false,
							["healthColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["name"] = false,
							["border"] = false,
							["powerColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["nameOnly"] = false,
						["alpha"] = -1,
						["flash"] = {
							["speed"] = 4,
							["enable"] = false,
							["color"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["hide"] = false,
						["texture"] = {
							["enable"] = false,
							["texture"] = "ElvUI Norm",
						},
					},
					["triggers"] = {
						["debuffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["instanceType"] = {
							["party"] = false,
							["scenario"] = false,
							["pvp"] = false,
							["raid"] = false,
							["arena"] = false,
							["none"] = false,
						},
						["inCombatUnit"] = false,
						["class"] = {
						},
						["powerThreshold"] = false,
						["maxlevel"] = 0,
						["overHealthThreshold"] = 0,
						["nameplateType"] = {
							["healer"] = false,
							["neutral"] = false,
							["friendlyPlayer"] = false,
							["enemyPlayer"] = false,
							["friendlyNPC"] = false,
						},
						["underHealthThreshold"] = 0,
						["reactionType"] = {
							["enabled"] = false,
							["reputation"] = false,
							["friendly"] = false,
							["revered"] = false,
							["honored"] = false,
							["hostile"] = false,
							["unfriendly"] = false,
							["exalted"] = false,
							["neutral"] = false,
							["hated"] = false,
						},
						["buffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["inCombat"] = false,
						["healthThreshold"] = false,
						["names"] = {
						},
						["isTarget"] = false,
						["priority"] = 1,
						["outOfCombat"] = false,
						["targetMe"] = false,
						["classification"] = {
							["elite"] = false,
							["normal"] = false,
							["trivial"] = false,
							["minus"] = false,
							["worldboss"] = false,
							["rareelite"] = false,
							["rare"] = false,
						},
						["underPowerThreshold"] = 0,
						["talent"] = {
							["tier7enabled"] = false,
							["tier7"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier2enabled"] = false,
							["tier1"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["enabled"] = false,
							["type"] = "normal",
							["tier2"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4enabled"] = false,
							["tier3"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier5enabled"] = false,
							["tier5"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier1enabled"] = false,
							["requireAll"] = false,
							["tier6enabled"] = false,
							["tier3enabled"] = false,
							["tier6"] = {
								["missing"] = false,
								["column"] = 0,
							},
						},
						["minlevel"] = 0,
						["outOfCombatUnit"] = false,
						["powerUsePlayer"] = false,
						["healthUsePlayer"] = false,
						["questBoss"] = false,
						["overPowerThreshold"] = 0,
						["role"] = {
							["tank"] = false,
							["damager"] = false,
							["healer"] = false,
						},
						["cooldowns"] = {
							["mustHaveAll"] = false,
							["names"] = {
							},
						},
						["casting"] = {
							["spells"] = {
							},
							["interruptible"] = false,
						},
						["instanceDifficulty"] = {
							["dungeon"] = {
								["normal"] = false,
								["mythic+"] = false,
								["heroic"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
							["raid"] = {
								["normal"] = false,
								["legacy25normal"] = false,
								["heroic"] = false,
								["legacy10normal"] = false,
								["legacy10heroic"] = false,
								["legacy25heroic"] = false,
								["lfr"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
						},
						["notTarget"] = false,
					},
				},
			},
		},
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
						["style"] = "texturedIcon",
						["point"] = "TOPRIGHT",
						["xOffset"] = -15,
						["color"] = {
							["b"] = 0.125490196078431,
							["g"] = 0.819607843137255,
							["r"] = 0.282352941176471,
						},
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
							["b"] = 0,
							["g"] = 0,
							["r"] = 1,
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
							["b"] = 0.890196078431373,
							["g"] = 0.0705882352941177,
							["r"] = 0.0705882352941177,
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
					[41635] = {
					},
					[33206] = {
					},
					[10060] = {
					},
					[6788] = {
					},
					[123258] = {
					},
					[139] = {
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
							["r"] = 0.87,
							["g"] = 0.7,
							["b"] = 0.03,
						},
						["textColor"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
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
						["xOffset"] = -30,
						["color"] = {
							["b"] = 0,
							["g"] = 0,
							["r"] = 1,
						},
					},
					[6940] = {
						["point"] = "BOTTOMLEFT",
						["color"] = {
							["b"] = 0.890196078431373,
							["g"] = 0.0705882352941177,
							["r"] = 0.0705882352941177,
						},
					},
					[114039] = {
					},
					[53563] = {
					},
					[1038] = {
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
					[48438] = {
					},
					[33763] = {
					},
					[774] = {
					},
					[8936] = {
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
				["ROGUE"] = {
					[57934] = {
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
		["Trixxedbank - Kazzak"] = {
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
		["Trixxed - Ravencrest"] = {
			["currentTutorial"] = 3,
		},
		["Achilina - Ravencrest"] = {
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
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,282,230",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,261,4",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-105,-317",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,942,116",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,543,173",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-514,424",
				["ElvAB_6"] = "TOP,ElvUIParent,TOP,0,-95",
				["ElvUF_BodyGuardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,454,-163",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-514,-268",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-282,230",
				["ElvUF_Raid25Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,362",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,446,-326",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,225",
			},
			["bags"] = {
				["itemLevelFont"] = "PT Sans Narrow",
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "NONE",
			},
			["hideTutorial"] = 1,
			["chat"] = {
				["timeStampFormat"] = "%I:%M:%S ",
				["tabFontOutline"] = "OUTLINE",
				["emotionIcons"] = false,
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
								["size"] = 14,
								["text_format"] = "",
								["yOffset"] = 0,
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
				["raid"] = "HIDDEN",
				["party"] = "HIDDEN",
			},
			["bossAuraFiltersConverted"] = true,
			["general"] = {
				["autoAcceptInvite"] = true,
				["interruptAnnounce"] = "SAY",
				["bottomPanel"] = false,
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
			},
			["auras"] = {
				["fontSize"] = 12,
				["font"] = "PT Sans Narrow",
				["fontOutline"] = "OUTLINE",
			},
		},
		["HealingRF"] = {
			["currentTutorial"] = 10,
			["general"] = {
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["bottomPanel"] = false,
				["valuecolor"] = {
					["r"] = 0.99,
					["g"] = 0.99,
					["b"] = 0.99,
				},
				["vendorGrays"] = true,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["interruptAnnounce"] = "SAY",
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M ",
				["scrollDownInterval"] = 120,
				["panelWidth"] = 400,
				["emotionIcons"] = false,
				["panelColorConverted"] = true,
			},
			["layoutSet"] = "dpsCaster",
			["thinBorderColorSet"] = true,
			["bagSortIgnoreItemsReset"] = true,
			["bagsOffsetFixed"] = true,
			["movers"] = {
				["ElvAB_8"] = "TOP,ElvUIParent,TOP,-124,-257",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-225,425",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1110,485",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-208,-20",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-141",
				["ElvUF_Raid10Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,326",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-279,22",
				["LootFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-456,-332",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,399",
				["ElvUF_Raid25Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,187",
				["ElvUF_TargetAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,301,72",
				["ElvUF_FocusCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,363",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-183,281",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-225,348",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1110,273",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-413",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1110,510",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,592,316",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,4",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,37",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-198,522",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-225,318",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,135",
				["TooltipMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,156,503",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,184",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,102",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,276,4",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-102,-362",
				["ElvAB_9"] = "TOP,ElvUIParent,TOP,-124,-221",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-225,442",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-92,-304",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,72,1076",
				["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,347",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,460,4",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,69",
				["ElvAB_10"] = "TOP,ElvUIParent,TOP,-123,-185",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,175,-325",
				["BossHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,169,-232",
				["ElvUF_BodyGuardMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-411,173",
				["ElvAB_7"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,233",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["AlertFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-426,-356",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,20,-366",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["tooltip"] = {
				["cursorAnchor"] = true,
				["healthBar"] = {
					["fontSize"] = 9,
					["height"] = 9,
					["font"] = "ElvUI Font",
				},
			},
			["sle"] = {
				["datatext"] = {
					["chathandle"] = true,
				},
			},
			["unitframe"] = {
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["width"] = 100,
					},
					["party"] = {
						["buffs"] = {
							["sizeOverride"] = 23,
							["xOffset"] = 140,
							["yOffset"] = 8,
							["useFilter"] = "Blacklist",
							["enable"] = true,
						},
						["buffIndicator"] = {
							["size"] = 12,
						},
						["verticalSpacing"] = 10,
					},
					["focus"] = {
						["castbar"] = {
							["height"] = 30,
						},
					},
					["target"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["castbar"] = {
							["width"] = 185,
							["height"] = 30,
						},
						["aurabar"] = {
							["attachTo"] = "BUFFS",
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
					["raid"] = {
						["height"] = 40,
					},
					["player"] = {
						["castbar"] = {
							["width"] = 185,
						},
						["width"] = 185,
						["health"] = {
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
					},
					["assist"] = {
						["enable"] = false,
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
				},
				["fontOutline"] = "OUTLINE",
				["bar1"] = {
					["paging"] = {
						["ROGUE"] = "[stance:1] 8;  [stance:2] 8; [stance:3] 8;",
						["DRUID"] = "[bonusbar:1,nostealth] 8;[bonusbar:1,stealth] 8; [bonusbar:3] 10; [bonusbar4:9]",
					},
				},
				["bar7"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttonsPerRow"] = 6,
				},
				["backdropSpacingConverted"] = true,
				["font"] = "PT Sans Narrow Bold",
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 8,
					["buttonsPerRow"] = 4,
				},
				["bar6"] = {
					["enabled"] = true,
				},
			},
			["abm"] = {
				["player"] = true,
				["target"] = true,
			},
			["bags"] = {
				["ignoreItems"] = "",
			},
		},
		["Lupalia - Ravencrest"] = {
			["currentTutorial"] = 1,
			["hideTutorial"] = 1,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,407",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Molech - Kazzak"] = {
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
		["Tríxxed - The Maelstrom"] = {
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
		["Minimalistic"] = {
			["nameplate"] = {
				["debuffs"] = {
					["font"] = "Expressway",
				},
				["font"] = "Expressway",
				["buffs"] = {
					["font"] = "Expressway",
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["font"] = "Expressway",
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
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
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1080",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["ElvUF_BodyGuardMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-651,-586",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
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
			["bags"] = {
				["countFontSize"] = 9,
				["itemLevelFontSize"] = 9,
			},
			["unitframe"] = {
				["fontSize"] = 9,
				["fontOutline"] = "THICKOUTLINE",
				["statusbar"] = "ElvUI Blank",
				["font"] = "Expressway",
				["smoothbars"] = true,
				["units"] = {
					["tank"] = {
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
							["position"] = "TOP",
							["yOffset"] = -2,
						},
						["height"] = 50,
						["width"] = 122,
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
						["castbar"] = {
							["iconSize"] = 54,
							["height"] = 35,
							["iconAttached"] = false,
							["width"] = 478,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["bodyguard"] = {
						["enable"] = false,
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
						["rdebuffs"] = {
							["font"] = "Expressway",
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
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
					},
					["arena"] = {
						["spacing"] = 26,
						["castbar"] = {
							["width"] = 246,
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
						["width"] = 140,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["groupsPerRowCol"] = 5,
					},
					["assist"] = {
						["enable"] = false,
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
			["layoutSet"] = "dpsMelee",
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
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Trïxxed - Ravencrest"] = {
			["currentTutorial"] = 2,
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
		["Palladium - Ravencrest"] = {
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
		["Monkshood - Draenor"] = {
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
		["Wonderwonder - Draenor"] = {
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
		["Trixxed - Kazzak"] = {
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
				["bottomPanel"] = false,
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
				["experience"] = {
					["hideAtMaxLevel"] = false,
				},
				["interruptAnnounce"] = "SAY",
				["vendorGrays"] = true,
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["valuecolor"] = {
					["r"] = 0.77,
					["g"] = 0.12,
					["b"] = 0.23,
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
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-298,368",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-256,326",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,422,4",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-491",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_BodyGuardMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-411,170",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,422,39",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,4",
				["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,347",
				["ElvUF_PetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,570,-453",
				["ElvAB_10"] = "TOP,ElvUIParent,TOP,-123,-185",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-88",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-102,-362",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,45,4",
				["ElvAB_3"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-423,39",
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,402,18",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-298,296",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-423,4",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,499",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-157,-307",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-239",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvAB_9"] = "TOP,ElvUIParent,TOP,-124,-221",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-423,74",
				["ElvUF_PlayerAuraMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-476",
				["TooltipMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,156,503",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,175,-325",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-344,-362",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,516,277",
				["ElvAB_7"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,233",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
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
						["r"] = 0.58,
						["g"] = 0.51,
						["b"] = 0.79,
					},
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
						["width"] = 185,
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["buffIndicator"] = {
							["size"] = 12,
						},
						["buffs"] = {
							["sizeOverride"] = 23,
							["useFilter"] = "Blacklist",
							["xOffset"] = 140,
							["enable"] = true,
							["yOffset"] = 8,
						},
					},
					["target"] = {
						["health"] = {
							["text_format"] = "[healthcolor][health:current-max-percent]",
						},
						["smartAuraDisplay"] = "SHOW_DEBUFFS_ON_FRIENDLIES",
						["width"] = 185,
						["buffs"] = {
							["playerOnly"] = {
								["friendly"] = true,
							},
						},
						["castbar"] = {
							["height"] = 30,
							["width"] = 185,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
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
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar1"] = {
					["paging"] = {
						["DRUID"] = "[bonusbar:1,nostealth] 8;[bonusbar:1,stealth] 8; [bonusbar:3] 10; [bonusbar4:9]",
						["ROGUE"] = "[stance:1] 8;  [stance:2] 8; [stance:3] 8;",
					},
				},
				["bar5"] = {
					["buttonsPerRow"] = 4,
					["buttons"] = 8,
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
			},
		},
		["Drfeargood - Ravencrest"] = {
			["currentTutorial"] = 1,
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
		["Trixxedbank - Draenor"] = {
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
		["Shankspeare - Kazzak"] = {
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
		["DEATHKNIGHT"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,407",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Daemonikos - Draenor"] = {
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
		["Achilina - Draenor"] = {
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
			["bossAuraFiltersConverted"] = true,
			["currentTutorial"] = 2,
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
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
		},
		["Chrysante - Ravencrest"] = {
			["movers"] = {
			},
		},
		["Odeysseus - Thunderhorn"] = {
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
		["DPS"] = {
			["databars"] = {
				["experience"] = {
					["hideAtMaxLevel"] = false,
				},
				["reputation"] = {
					["enable"] = true,
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
			},
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
				["ElvUF_Raid25Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,187",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,204,224",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-452,22",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,199",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,410,19",
				["ElvUF_BodyGuardMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-411,170",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,243,307",
				["TotemBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-606,0",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-347",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,435",
				["ElvUF_FocusAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-422,4",
				["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,347",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,30",
				["TooltipMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,156,503",
				["ElvUF_PlayerAuraMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-476",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-88",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,243,0",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-288,4",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,400,19",
				["ElvAB_9"] = "TOP,ElvUIParent,TOP,-124,-221",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,60",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-242,307",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-131,-205",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-286,-166",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,243,271",
				["ElvAB_8"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,423,76",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-314,-357",
				["ElvAB_10"] = "TOP,ElvUIParent,TOP,-123,-185",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,175,-325",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-353,-313",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-215,245",
				["ElvAB_7"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,423,4",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,261,-313",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,-48,-365",
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
					["targettarget"] = {
						["width"] = 100,
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
							["useFilter"] = "Blacklist",
							["enable"] = true,
							["xOffset"] = 140,
							["yOffset"] = 8,
						},
						["buffIndicator"] = {
							["size"] = 12,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 40,
							["perrow"] = 4,
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
					["buttonsPerRow"] = 12,
					["buttonsize"] = 28,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 28,
				},
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
				["bar8"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["mouseover"] = true,
				},
				["bar5"] = {
					["buttonsPerRow"] = 4,
					["buttonsize"] = 28,
					["buttons"] = 8,
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
			["general"] = {
				["interruptAnnounce"] = "SAY",
				["vendorGrays"] = true,
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
					["b"] = 0.99,
					["g"] = 0.99,
					["r"] = 0.99,
				},
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["experience"] = {
					["hideAtMaxLevel"] = false,
				},
			},
			["bossAuraFiltersConverted"] = true,
		},
		["Quelith - Draenor"] = {
			["bossAuraFiltersConverted"] = true,
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
		["Lycotonum - Tarren Mill"] = {
			["currentTutorial"] = 5,
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
		["Trixbankxed - Shadowsong"] = {
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
		["Lichservent - Thunderhorn"] = {
			["bossAuraFiltersConverted"] = true,
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
		["Petergrippin - Draenor"] = {
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
		["Eruditus - Ravencrest"] = {
			["currentTutorial"] = 6,
			["hideTutorial"] = true,
			["movers"] = {
			},
		},
		["Anneshank - Draenor"] = {
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
		["Fausta - Ravencrest"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Grippiboi - Kazzak"] = {
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
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Trixxedbank - Kazzak"] = "Trixxedbank - Kazzak",
		["Dístúrbed - Thunderhorn"] = "Dístúrbed - Thunderhorn",
		["Trixxed - Ravencrest"] = "Trixxed - Ravencrest",
		["Achilina - Ravencrest"] = "Achilina - Ravencrest",
		["Achillina - Thunderhorn"] = "Achillina - Thunderhorn",
		["Lupalia - Ravencrest"] = "Lupalia - Ravencrest",
		["Molech - Kazzak"] = "Molech - Kazzak",
		["Tríxxed - The Maelstrom"] = "Tríxxed - The Maelstrom",
		["Trîxxed - Ravencrest"] = "Trîxxed - Ravencrest",
		["Marcellinus - Ravencrest"] = "Marcellinus - Ravencrest",
		["Trixxedz - Thunderhorn"] = "Trixxedz - Thunderhorn",
		["Trïxxed - Ravencrest"] = "Trïxxed - Ravencrest",
		["Sftyhsfey - Aerie Peak"] = "Sftyhsfey - Aerie Peak",
		["Anneshank - Draenor"] = "Anneshank - Draenor",
		["Molokh - Ravencrest"] = "Molokh - Ravencrest",
		["Monkshood - Draenor"] = "Monkshood - Draenor",
		["Wonderwonder - Draenor"] = "Wonderwonder - Draenor",
		["Tríxxed - Laughing Skull"] = "Tríxxed - Laughing Skull",
		["Trixxed - Kazzak"] = "Trixxed - Kazzak",
		["Shankspeare - Kazzak"] = "Shankspeare - Kazzak",
		["Trìxxed - Ravencrest"] = "Trìxxed - Ravencrest",
		["Daemonikos - Ravencrest"] = "Daemonikos - Ravencrest",
		["Drfeargood - Ravencrest"] = "Drfeargood - Ravencrest",
		["Achilina - Draenor"] = "Achilina - Draenor",
		["Trixxedbank - Draenor"] = "Trixxedbank - Draenor",
		["Teukronar - Argent Dawn"] = "Teukronar - Argent Dawn",
		["Eventimeless - Ravencrest"] = "Eventimeless - Ravencrest",
		["Fausta - Ravencrest"] = "Fausta - Ravencrest",
		["Xbenedict - Kazzak"] = "Xbenedict - Kazzak",
		["Shadefighter - Thunderhorn"] = "Shadefighter - Thunderhorn",
		["Chrysante - Ravencrest"] = "Chrysante - Ravencrest",
		["Trixbankxed - Shadowsong"] = "Trixbankxed - Shadowsong",
		["Eruditus - Ravencrest"] = "Eruditus - Ravencrest",
		["Quelith - Draenor"] = "Quelith - Draenor",
		["Lycotonum - Tarren Mill"] = "Lycotonum - Tarren Mill",
		["Odeysseus - Thunderhorn"] = "Odeysseus - Thunderhorn",
		["Palladium - Ravencrest"] = "Palladium - Ravencrest",
		["Petergrippin - Draenor"] = "Petergrippin - Draenor",
		["Kazzía - Thunderhorn"] = "Kazzía - Thunderhorn",
		["Daemonikos - Draenor"] = "Daemonikos - Draenor",
		["Lichservent - Thunderhorn"] = "Lichservent - Thunderhorn",
		["Grippiboi - Kazzak"] = "Grippiboi - Kazzak",
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
			["bags"] = {
				["enable"] = false,
			},
			["tooltip"] = {
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
		["Lupalia - Ravencrest"] = {
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
				["install_complete"] = "3.01",
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
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
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
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
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
		["Trïxxed - Ravencrest"] = {
			["nameplate"] = {
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
			["addonskins"] = {
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
			["sle"] = {
				["characterGoldsSorting"] = {
					["Ravencrest"] = {
					},
				},
				["install_complete"] = "3.09",
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
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
		["Tríxxed - Laughing Skull"] = {
			["nameplate"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Laughing Skull"] = {
					},
				},
				["install_complete"] = "3.12",
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["install_complete"] = "6.9999",
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
			["bags"] = {
				["enable"] = false,
			},
			["tooltip"] = {
				["enable"] = false,
			},
			["install_complete"] = "6.9999",
		},
		["Daemonikos - Ravencrest"] = {
			["addonskins"] = {
				["EmbedSystemDual"] = true,
			},
			["sle"] = {
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
		["Xbenedict - Kazzak"] = {
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["install_complete"] = "3.421",
				["characterGoldsSorting"] = {
					["Kazzak"] = {
					},
				},
			},
			["install_complete"] = "10.78",
		},
		["Shadefighter - Thunderhorn"] = {
			["addonskins"] = {
				["Blizzard_WorldStateCaptureBar"] = true,
			},
		},
		["Chrysante - Ravencrest"] = {
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
			["bags"] = {
				["enable"] = false,
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
			},
			["install_complete"] = "7.13",
		},
		["Trixbankxed - Shadowsong"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Shadowsong"] = {
					},
				},
			},
		},
		["Eruditus - Ravencrest"] = {
			["nameplate"] = {
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
		["Quelith - Draenor"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
				["install_complete"] = "3.12",
			},
			["install_complete"] = "10.15",
		},
		["Lycotonum - Tarren Mill"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["module"] = {
					["screensaver"] = true,
				},
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Tarren Mill"] = {
					},
				},
				["install_complete"] = "3.34",
			},
			["install_complete"] = "10.72",
		},
		["Odeysseus - Thunderhorn"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Thunderhorn"] = {
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
		["Petergrippin - Draenor"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Draenor"] = {
					},
				},
			},
		},
		["Kazzía - Thunderhorn"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["addonskins"] = {
				["Blizzard_WorldStateCaptureBar"] = true,
				["EmbedIsHidden"] = true,
				["EmbedSystemDual"] = true,
			},
			["sle"] = {
				["install_complete"] = "3.01",
			},
			["install_complete"] = "7.13",
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
	},
}
