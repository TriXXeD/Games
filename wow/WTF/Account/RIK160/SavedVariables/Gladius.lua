
Gladius2DB = {
	["profileKeys"] = {
		["Eruditus - Ravencrest"] = "Eruditus - Ravencrest",
		["Monkshood - Draenor"] = "Monkshood - Draenor",
		["Achilina - Draenor"] = "Achilina - Draenor",
		["Trixxed - Ravencrest"] = "Trixxed - Ravencrest",
		["Anneshank - Draenor"] = "Anneshank - Draenor",
		["Tríxxed - Laughing Skull"] = "Achilina - Ravencrest",
		["Achillina - Thunderhorn"] = "Achillina - Thunderhorn",
		["Trixbankxed - Shadowsong"] = "Trixbankxed - Shadowsong",
		["Achilina - Ravencrest"] = "Achilina - Ravencrest",
		["Trìxxed - Ravencrest"] = "Trìxxed - Ravencrest",
		["Daemonikos - Ravencrest"] = "Daemonikos - Ravencrest",
		["Grippiboi - Kazzak"] = "Grippiboi - Kazzak",
		["Teukronar - Argent Dawn"] = "Teukronar - Argent Dawn",
		["Trixxedbank - Draenor"] = "Trixxedbank - Draenor",
		["Lupalia - Ravencrest"] = "Lupalia - Ravencrest",
		["Marcellinus - Ravencrest"] = "Marcellinus - Ravencrest",
		["Tríxxed - The Maelstrom"] = "Tríxxed - The Maelstrom",
		["Lycotonum - Tarren Mill"] = "Lycotonum - Tarren Mill",
		["Shadefighter - Thunderhorn"] = "Shadefighter - Thunderhorn",
		["Chrysante - Ravencrest"] = "Chrysante - Ravencrest",
		["Trixxedz - Thunderhorn"] = "Trixxedz - Thunderhorn",
		["Daemonikos - Draenor"] = "Daemonikos - Draenor",
		["Quelith - Draenor"] = "Quelith - Draenor",
		["Odeysseus - Thunderhorn"] = "Odeysseus - Thunderhorn",
		["Trïxxed - Ravencrest"] = "Trïxxed - Ravencrest",
		["Trîxxed - Ravencrest"] = "Trîxxed - Ravencrest",
		["Petergrippin - Draenor"] = "Petergrippin - Draenor",
		["Kazzía - Thunderhorn"] = "Kazzía - Thunderhorn",
		["Lichservent - Thunderhorn"] = "Lichservent - Thunderhorn",
		["Fausta - Ravencrest"] = "Fausta - Ravencrest",
		["Molokh - Ravencrest"] = "Molokh - Ravencrest",
	},
	["profiles"] = {
		["Eruditus - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1077.33372118577,
			},
			["y"] = {
				["arena1"] = 505.600046235812,
			},
		},
		["Monkshood - Draenor"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 425.955609272587,
			},
			["x"] = {
				["arena1"] = 1070.93353287644,
			},
		},
		["Achilina - Draenor"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 384.711163829434,
			},
			["x"] = {
				["arena1"] = 921.600543149325,
			},
		},
		["Trixxed - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 539.733286246188,
			},
			["x"] = {
				["arena1"] = 1044.62196706255,
			},
		},
		["Anneshank - Draenor"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1148.44455905888,
			},
			["y"] = {
				["arena1"] = 562.488902509213,
			},
		},
		["Tríxxed - Laughing Skull"] = {
			["y"] = {
				["arena1"] = 553.955612372029,
			},
			["x"] = {
				["arena1"] = 35.5557083262374,
			},
			["locked"] = true,
			["tagsVersion"] = 4,
			["auraVersion"] = 1,
		},
		["Achillina - Thunderhorn"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 479.288887753273,
			},
			["x"] = {
				["arena1"] = 1129.24472252947,
			},
		},
		["Trixbankxed - Shadowsong"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 952.888911962509,
			},
			["y"] = {
				["arena1"] = 394.666632820499,
			},
		},
		["Achilina - Ravencrest"] = {
			["y"] = {
				["arena1"] = 480.711170409544,
			},
			["x"] = {
				["arena1"] = 1120.71132538025,
			},
			["tags"] = {
				["maxhealth"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class]..\":short\"] or Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["health:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class] or LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["power:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["race"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitRace(unit) or Gladius.testing[unit].unitRace\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["maxpower:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["power"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nend",
					["events"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name:status"] = {
					["func"] = "function(unit)\nreturn UnitIsDeadOrGhost(unit) and Gladius.L[\"DEAD\"] or (UnitName(unit) or unit)\nend",
					["events"] = "UNIT_NAME_UPDATE UNIT_HEALTH",
				},
				["spec"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["power:percentage"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nlocal maxPower = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nreturn strformat(\"%.1f%%\", (power / maxPower * 100))\nend",
					["events"] = "UNIT_POWER UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name"] = {
					["func"] = "function(unit)\nreturn UnitName(unit) or unit\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["spec:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nlocal spec = Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nif (spec == nil or spec == \"\") then\nreturn \"\"\nend\nreturn Gladius.L[spec..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["health:percentage"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nlocal maxHealth = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nreturn strformat(\"%.1f%%\", (health / maxHealth * 100))\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["health"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxhealth:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxpower"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
			},
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["locked"] = true,
		},
		["Trìxxed - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 502.755680115545,
			},
			["x"] = {
				["arena1"] = 1107.91172763712,
			},
		},
		["Daemonikos - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1063.11119341146,
			},
			["y"] = {
				["arena1"] = 507.022179497876,
			},
		},
		["Grippiboi - Kazzak"] = {
			["y"] = {
				["arena1"] = 457.955696853005,
			},
			["tagsVersion"] = 4,
			["auraVersion"] = 1,
			["x"] = {
				["arena1"] = 1111.46678038571,
			},
		},
		["Teukronar - Argent Dawn"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Trixxedbank - Draenor"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 433.77783168422,
			},
			["x"] = {
				["arena1"] = 951.466776511406,
			},
		},
		["Lupalia - Ravencrest"] = {
			["targetBarWidth"] = 199,
			["tags"] = {
				["maxhealth"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class]..\":short\"] or Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["health:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class] or LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["power:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["race"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitRace(unit) or Gladius.testing[unit].unitRace\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["maxpower:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["power"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nend",
					["events"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name:status"] = {
					["func"] = "function(unit)\nreturn UnitIsDeadOrGhost(unit) and Gladius.L[\"DEAD\"] or (UnitName(unit) or unit)\nend",
					["events"] = "UNIT_NAME_UPDATE UNIT_HEALTH",
				},
				["spec"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["power:percentage"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nlocal maxPower = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nreturn strformat(\"%.1f%%\", (power / maxPower * 100))\nend",
					["events"] = "UNIT_POWER UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name"] = {
					["func"] = "function(unit)\nreturn UnitName(unit) or unit\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["spec:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nlocal spec = Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nif (spec == nil or spec == \"\") then\nreturn \"\"\nend\nreturn Gladius.L[spec..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["health:percentage"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nlocal maxHealth = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nreturn strformat(\"%.1f%%\", (health / maxHealth * 100))\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["health"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxhealth:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxpower"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
			},
			["auraVersion"] = 1,
			["targetBarAdjustWidth"] = false,
			["y"] = {
				["arena1"] = 391.111077178848,
			},
			["x"] = {
				["arena1"] = 1143.46756241059,
			},
			["targetBarIcon"] = false,
			["tagsVersion"] = 4,
			["targetBarOffsetX"] = 51,
		},
		["Marcellinus - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 480.711270005683,
			},
			["x"] = {
				["arena1"] = 1128.53350650423,
			},
		},
		["Tríxxed - The Maelstrom"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Lycotonum - Tarren Mill"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Shadefighter - Thunderhorn"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Chrysante - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1082.31113780492,
			},
			["y"] = {
				["arena1"] = 499.200097970039,
			},
		},
		["Trixxedz - Thunderhorn"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Daemonikos - Draenor"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1108.62303031685,
			},
			["y"] = {
				["arena1"] = 400.35556524992,
			},
		},
		["Quelith - Draenor"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1152.71122582886,
			},
			["y"] = {
				["arena1"] = 486.400055180657,
			},
		},
		["Odeysseus - Thunderhorn"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1148.44476651906,
			},
			["y"] = {
				["arena1"] = 480.000004182374,
			},
		},
		["Trïxxed - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 501.333546853481,
			},
			["x"] = {
				["arena1"] = 1108.62244568167,
			},
		},
		["Trîxxed - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 374.044453015392,
			},
			["x"] = {
				["arena1"] = 797.866358894904,
			},
		},
		["Petergrippin - Draenor"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 979.20106537742,
			},
			["y"] = {
				["arena1"] = 637.155657789444,
			},
		},
		["Kazzía - Thunderhorn"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 803.555748624276,
			},
			["y"] = {
				["arena1"] = 445.155696543061,
			},
		},
		["Lichservent - Thunderhorn"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
		},
		["Fausta - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 482.133502863886,
			},
			["x"] = {
				["arena1"] = 1112.88904466014,
			},
		},
		["Molokh - Ravencrest"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1058.84447008371,
			},
			["y"] = {
				["arena1"] = 534.755568504334,
			},
		},
	},
}
