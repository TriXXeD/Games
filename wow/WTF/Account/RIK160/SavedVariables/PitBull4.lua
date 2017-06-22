
PitBull4DB = {
	["namespaces"] = {
		["Highlight"] = {
			["profiles"] = {
				["Pally"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Default"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["aliena"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["RangeFader"] = {
		},
		["Border"] = {
		},
		["HappinessIcon"] = {
		},
		["ComboPoints"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 23,
						},
						["Normal"] = {
							["position"] = 1.00002,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 1.00002,
						},
						["normal2"] = {
							["position"] = 23,
						},
					},
				},
			},
		},
		["RoleIcon"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 15,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 15,
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 1.00001,
						},
						["target of target"] = {
							["position"] = 1.00001,
						},
					},
				},
			},
		},
		["DogTagTexts"] = {
			["profiles"] = {
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["elements"] = {
								["Druid mana"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "DruidManaBar",
									["code"] = "[if not IsMana then FractionalDruidMP]",
								},
								["Threat"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ThreatBar",
									["code"] = "[PercentThreat:Round(1):Hide(0):Percent]",
								},
								["Power"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "PowerBar",
									["code"] = "[if HasMP then FractionalMP]",
								},
								["Reputation"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ReputationBar",
									["code"] = "[if IsMouseOver then ReputationName else if ReputationName then FractionalReputation ' ' PercentReputation:Percent:Paren]",
								},
								["PVPTimer"] = {
									["location"] = "out_right_top",
									["exists"] = true,
									["code"] = "[PvPDuration:FormatDuration:Red]",
								},
								["Cast"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "CastBar",
									["code"] = "[Alpha((-CastStopDuration or 0) + 1) CastStopMessage or (CastName ' ' CastTarget:Paren)]",
								},
								["Name"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "HealthBar",
									["code"] = "[Name] [(AFK or DND):Angle]",
								},
								["Health"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "HealthBar",
									["code"] = "[Status or (FractionalHP:Short ' || ' PercentHP:Percent)]",
								},
								["Cast time"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "CastBar",
									["code"] = "[if not CastStopDuration then Concatenate(CastIsChanneling ? '-' ! '+', CastDelay:Abs:Round(1):Hide(0)):Red ' ' [CastEndDuration >= 0 ? '%.1f':Format(CastEndDuration)]]",
								},
								["Experience"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ExperienceBar",
									["code"] = "[FractionalXP] [PercentXP:Percent:Paren] [Concatenate('R: ', PercentRestXP:Hide(0):Percent)]",
								},
								["Class"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "PowerBar",
									["code"] = "[Classification] [Level:DifficultyColor] [(if (IsPlayer or (IsEnemy and not IsPet)) then Class):ClassColor] [DruidForm:Paren] [SmartRace]",
								},
							},
							["first"] = false,
						},
						["target of target"] = {
							["elements"] = {
								["Druid mana"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "DruidManaBar",
									["code"] = "[if not IsMana then FractionalDruidMP]",
								},
								["Threat"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ThreatBar",
									["code"] = "[PercentThreat:Round(1):Hide(0):Percent]",
								},
								["Power"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "PowerBar",
									["code"] = "[if HasMP then FractionalMP]",
								},
								["Reputation"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ReputationBar",
									["code"] = "[if IsMouseOver then ReputationName else if ReputationName then FractionalReputation ' ' PercentReputation:Percent:Paren]",
								},
								["PVPTimer"] = {
									["location"] = "out_right_top",
									["exists"] = true,
									["code"] = "[PvPDuration:FormatDuration:Red]",
								},
								["Cast"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "CastBar",
									["code"] = "[Alpha((-CastStopDuration or 0) + 1) CastStopMessage or (CastName ' ' CastTarget:Paren)]",
								},
								["Name"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "HealthBar",
									["code"] = "[Name] [(AFK or DND):Angle]",
								},
								["Health"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "HealthBar",
									["code"] = "[Status or (FractionalHP:Short ' || ' PercentHP:Percent)]",
								},
								["Cast time"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "CastBar",
									["code"] = "[if not CastStopDuration then Concatenate(CastIsChanneling ? '-' ! '+', CastDelay:Abs:Round(1):Hide(0)):Red ' ' [CastEndDuration >= 0 ? '%.1f':Format(CastEndDuration)]]",
								},
								["Experience"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ExperienceBar",
									["code"] = "[FractionalXP] [PercentXP:Percent:Paren] [Concatenate('R: ', PercentRestXP:Hide(0):Percent)]",
								},
								["Class"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "PowerBar",
									["code"] = "[Classification] [Level:DifficultyColor] [(if (IsPlayer or (IsEnemy and not IsPet)) then Class):ClassColor] [DruidForm:Paren] [SmartRace]",
								},
							},
							["first"] = false,
						},
						["normal3"] = {
							["elements"] = {
								["Druid mana"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "DruidManaBar",
									["code"] = "[if not IsMana then FractionalDruidMP]",
								},
								["Threat"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ThreatBar",
									["code"] = "[PercentThreat:Round(1):Hide(0):Percent]",
								},
								["Power"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "PowerBar",
									["code"] = "[if HasMP then FractionalMP]",
								},
								["Reputation"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ReputationBar",
									["code"] = "[if IsMouseOver then ReputationName else if ReputationName then FractionalReputation ' ' PercentReputation:Percent:Paren]",
								},
								["PVPTimer"] = {
									["location"] = "out_right_top",
									["exists"] = true,
									["code"] = "[PvPDuration:FormatDuration:Red]",
								},
								["Cast"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "CastBar",
									["code"] = "[Alpha((-CastStopDuration or 0) + 1) CastStopMessage or (CastName ' ' CastTarget:Paren)]",
								},
								["Name"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "HealthBar",
									["code"] = "[Name] [(AFK or DND):Angle]",
								},
								["Health"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "HealthBar",
									["code"] = "[Status or (FractionalHP:Short ' || ' PercentHP:Percent)]",
								},
								["Cast time"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "CastBar",
									["code"] = "[if not CastStopDuration then Concatenate(CastIsChanneling ? '-' ! '+', CastDelay:Abs:Round(1):Hide(0)):Red ' ' [CastEndDuration >= 0 ? '%.1f':Format(CastEndDuration)]]",
								},
								["Experience"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ExperienceBar",
									["code"] = "[FractionalXP] [PercentXP:Percent:Paren] [Concatenate('R: ', PercentRestXP:Hide(0):Percent)]",
								},
								["Class"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "PowerBar",
									["code"] = "[Classification] [Level:DifficultyColor] [(if (IsPlayer or (IsEnemy and not IsPet)) then Class):ClassColor] [DruidForm:Paren] [SmartRace]",
								},
							},
							["first"] = false,
						},
						["normal2"] = {
							["elements"] = {
								["Druid mana"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "DruidManaBar",
									["code"] = "[if not IsMana then FractionalDruidMP]",
								},
								["Threat"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ThreatBar",
									["code"] = "[PercentThreat:Round(1):Hide(0):Percent]",
								},
								["Power"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "PowerBar",
									["code"] = "[if HasMP then FractionalMP]",
								},
								["Reputation"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ReputationBar",
									["code"] = "[if IsMouseOver then ReputationName else if ReputationName then FractionalReputation ' ' PercentReputation:Percent:Paren]",
								},
								["PVPTimer"] = {
									["location"] = "out_right_top",
									["exists"] = true,
									["code"] = "[PvPDuration:FormatDuration:Red]",
								},
								["Cast"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "CastBar",
									["code"] = "[Alpha((-CastStopDuration or 0) + 1) CastStopMessage or (CastName ' ' CastTarget:Paren)]",
								},
								["Name"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "HealthBar",
									["code"] = "[Name] [(AFK or DND):Angle]",
								},
								["Health"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "HealthBar",
									["code"] = "[Status or (FractionalHP:Short ' || ' PercentHP:Percent)]",
								},
								["Cast time"] = {
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "CastBar",
									["code"] = "[if not CastStopDuration then Concatenate(CastIsChanneling ? '-' ! '+', CastDelay:Abs:Round(1):Hide(0)):Red ' ' [CastEndDuration >= 0 ? '%.1f':Format(CastEndDuration)]]",
								},
								["Experience"] = {
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ExperienceBar",
									["code"] = "[FractionalXP] [PercentXP:Percent:Paren] [Concatenate('R: ', PercentRestXP:Hide(0):Percent)]",
								},
								["Class"] = {
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "PowerBar",
									["code"] = "[Classification] [Level:DifficultyColor] [(if (IsPlayer or (IsEnemy and not IsPet)) then Class):ClassColor] [DruidForm:Paren] [SmartRace]",
								},
							},
							["first"] = false,
						},
					},
				},
			},
		},
		["LuaTexts"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal3"] = {
							["elements"] = {
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
									["exists"] = true,
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
									["exists"] = true,
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
									["exists"] = true,
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
									["exists"] = true,
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:PVPTimer"] = {
									["location"] = "out_right_top",
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:Class"] = {
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["exists"] = true,
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:Power"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["Normal"] = {
							["elements"] = {
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
									["exists"] = true,
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
									["exists"] = true,
								},
								["Lua:Experience"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
									["exists"] = true,
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
									["exists"] = true,
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:PVPTimer"] = {
									["location"] = "out_right_top",
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:Class"] = {
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["position"] = 1.00001,
									["location"] = "left",
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["attach_to"] = "PowerBar",
									["exists"] = true,
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:Power"] = {
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["position"] = 1.00001,
									["location"] = "right",
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["attach_to"] = "PowerBar",
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["normal2"] = {
							["elements"] = {
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["position"] = 5,
									["location"] = "center",
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["attach_to"] = "ReputationBar",
									["exists"] = true,
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["position"] = 4,
									["location"] = "left",
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["position"] = 2,
									["location"] = "center",
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["attach_to"] = "ThreatBar",
									["exists"] = true,
								},
								["Lua:Power"] = {
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["position"] = 18,
									["location"] = "right",
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["attach_to"] = "PowerBar",
									["exists"] = true,
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["position"] = 12,
									["location"] = "right",
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["position"] = 9,
									["location"] = "left",
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["position"] = 8,
									["location"] = "right",
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:PVPTimer"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["position"] = 11,
									["location"] = "out_right_top",
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["exists"] = true,
								},
								["Lua:Class"] = {
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["position"] = 10,
									["location"] = "left",
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["attach_to"] = "PowerBar",
									["exists"] = true,
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["position"] = 7,
									["location"] = "center",
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["attach_to"] = "DruidManaBar",
									["exists"] = true,
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["position"] = 3,
									["location"] = "center",
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["attach_to"] = "ExperienceBar",
									["exists"] = true,
								},
							},
							["first"] = false,
						},
					},
				},
				["Aliena - Mug'thol"] = {
					["layouts"] = {
						["Normal"] = {
							["elements"] = {
								["Lua:Reputation"] = {
									["exists"] = true,
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
								},
								["Lua:Name"] = {
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
								},
								["Lua:Threat"] = {
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
								},
								["Lua:Power"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
								},
								["Lua:Cast"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
								},
								["Lua:Cast time"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
								},
								["Lua:Health"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
								},
								["Lua:PVPTimer"] = {
									["location"] = "out_right_top",
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:Class"] = {
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
								},
								["Lua:Druid mana"] = {
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
								},
							},
							["first"] = false,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Reputation"] = {
									["position"] = 5,
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ReputationBar",
								},
								["Lua:Name"] = {
									["position"] = 4,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "HealthBar",
								},
								["Lua:Threat"] = {
									["position"] = 2,
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ThreatBar",
								},
								["Lua:Experience"] = {
									["position"] = 3,
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Druid mana"] = {
									["position"] = 7,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["exists"] = true,
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Cast"] = {
									["position"] = 9,
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["position"] = 8,
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "HealthBar",
								},
								["Lua:PVPTimer"] = {
									["position"] = 11,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
									["exists"] = true,
								},
								["Lua:Class"] = {
									["position"] = 10,
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["exists"] = true,
									["attach_to"] = "PowerBar",
								},
								["Lua:Cast time"] = {
									["position"] = 12,
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "CastBar",
								},
								["Lua:Power"] = {
									["position"] = 18,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["exists"] = true,
									["attach_to"] = "PowerBar",
								},
							},
						},
						["normal3"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["exists"] = true,
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
								},
								["Lua:Power"] = {
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
								},
								["Lua:PVPTimer"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
								},
								["Lua:Class"] = {
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
								},
							},
						},
						["Normal"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["exists"] = true,
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
								},
								["Lua:Power"] = {
									["position"] = 1.00001,
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["attach_to"] = "PowerBar",
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
								},
								["Lua:PVPTimer"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
								},
								["Lua:Class"] = {
									["position"] = 1.00001,
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["attach_to"] = "PowerBar",
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
								},
							},
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["elements"] = {
								["Lua:Reputation"] = {
									["exists"] = true,
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
								},
								["Lua:Name"] = {
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
								},
								["Lua:Threat"] = {
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
								},
								["Lua:Druid mana"] = {
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
								},
								["Lua:Cast"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
								},
								["Lua:Health"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
								},
								["Lua:PVPTimer"] = {
									["location"] = "out_right_top",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["exists"] = true,
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:Class"] = {
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
								},
								["Lua:Cast time"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
								},
								["Lua:Power"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
								},
							},
							["first"] = false,
						},
						["target of target"] = {
							["elements"] = {
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
									["exists"] = true,
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
									["exists"] = true,
								},
								["Lua:Power"] = {
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
									["exists"] = true,
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:PVPTimer"] = {
									["location"] = "out_right_top",
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:Class"] = {
									["enabled"] = false,
									["exists"] = true,
									["position"] = 1.00001,
									["location"] = "left",
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
									["exists"] = true,
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["normal2"] = {
							["elements"] = {
								["Lua:Reputation"] = {
									["exists"] = true,
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
								},
								["Lua:Name"] = {
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
								},
								["Lua:Threat"] = {
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
								},
								["Lua:Power"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
								},
								["Lua:Cast time"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
								},
								["Lua:Cast"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
								},
								["Lua:Health"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
								},
								["Lua:PVPTimer"] = {
									["location"] = "out_right_top",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["exists"] = true,
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:Class"] = {
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
								},
								["Lua:Druid mana"] = {
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
									["events"] = {
										["UNIT_POWER"] = true,
										["UNIT_MAXPOWER"] = true,
									},
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
								},
							},
							["first"] = false,
						},
						["normal3"] = {
							["elements"] = {
								["Lua:Reputation"] = {
									["exists"] = true,
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
								},
								["Lua:Name"] = {
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
								},
								["Lua:Threat"] = {
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
								},
								["Lua:Druid mana"] = {
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
								},
								["Lua:Cast time"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
								},
								["Lua:Health"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
								},
								["Lua:PVPTimer"] = {
									["location"] = "out_right_top",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["exists"] = true,
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:Class"] = {
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
								},
								["Lua:Cast"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
								},
								["Lua:Power"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
								},
							},
							["first"] = false,
						},
					},
				},
			},
		},
		["SoulShards"] = {
		},
		["HostilityFader"] = {
		},
		["MasterLooterIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 24,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 24,
						},
					},
				},
			},
		},
		["CombatText"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 22,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 22,
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["size"] = 1.100000023841858,
							["font"] = "Daville",
						},
						["target of target"] = {
							["enabled"] = false,
							["font"] = "Daville",
							["location"] = "out_right",
							["attach_to"] = "PowerBar",
							["size"] = 1.1,
						},
					},
				},
			},
		},
		["ReadyCheckIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 17,
						},
						["Normal"] = {
							["position"] = 1.00001,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 1.00001,
						},
						["normal2"] = {
							["position"] = 17,
						},
					},
				},
			},
		},
		["Totems"] = {
		},
		["Portrait"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 4,
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["bar_size"] = 1,
							["side"] = "center",
							["fallback_style"] = "class",
							["position"] = 2,
						},
						["target of target"] = {
							["bar_size"] = 1,
							["side"] = "center",
							["position"] = 2,
						},
					},
				},
			},
		},
		["ExperienceBar"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal3"] = {
							["enabled"] = false,
						},
						["Normal"] = {
							["side"] = "right",
							["background_alpha"] = 0.1,
							["position"] = 6,
						},
						["normal2"] = {
							["enabled"] = false,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["enabled"] = false,
						},
						["normal3"] = {
							["enabled"] = false,
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["side"] = "right",
							["position"] = 5,
						},
						["target of target"] = {
							["enabled"] = false,
							["position"] = 5,
						},
						["normal2"] = {
							["enabled"] = false,
						},
						["normal3"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["RaidTargetIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 19,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 19,
						},
					},
				},
			},
		},
		["Eclipse"] = {
		},
		["CastBar"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal3"] = {
							["enabled"] = false,
						},
						["Normal"] = {
							["enabled"] = false,
							["position"] = 8,
						},
						["normal2"] = {
							["enabled"] = false,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["enabled"] = false,
						},
						["normal3"] = {
							["enabled"] = false,
						},
						["Normal"] = {
							["enabled"] = false,
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["enabled"] = false,
							["position"] = 7,
						},
						["target of target"] = {
							["enabled"] = false,
							["position"] = 7,
						},
						["normal2"] = {
							["enabled"] = false,
						},
						["normal3"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["LeaderIcon"] = {
		},
		["DruidManaBar"] = {
		},
		["Aura"] = {
			["profiles"] = {
				["aliena"] = {
					["layouts"] = {
						["normal3"] = {
							["enabled"] = false,
						},
						["normal2"] = {
							["enabled"] = false,
						},
						["Normal"] = {
							["layout"] = {
								["debuff"] = {
									["filter"] = "!E",
								},
							},
						},
					},
				},
			},
		},
		["Runes"] = {
		},
		["PvPIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 20,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 20,
						},
					},
				},
			},
		},
		["PowerBar"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal3"] = {
							["enabled"] = false,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal3"] = {
							["enabled"] = false,
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 3,
							["alpha"] = 0.75,
							["texture"] = "Glamour5",
						},
						["target of target"] = {
							["position"] = 3,
							["texture"] = "Dabs",
							["size"] = 1,
						},
						["normal3"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["HideBlizzard"] = {
			["profiles"] = {
				["aliena"] = {
					["global"] = {
						["aura"] = true,
						["raid"] = true,
					},
				},
			},
		},
		["ReputationBar"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal3"] = {
							["enabled"] = false,
						},
						["Normal"] = {
							["enabled"] = false,
							["position"] = 5,
						},
						["normal2"] = {
							["enabled"] = false,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["enabled"] = false,
						},
						["normal3"] = {
							["enabled"] = false,
						},
						["Normal"] = {
							["enabled"] = false,
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["enabled"] = false,
							["position"] = 4,
						},
						["target of target"] = {
							["enabled"] = false,
							["position"] = 4,
						},
						["normal2"] = {
							["enabled"] = false,
						},
						["normal3"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["Sounds"] = {
		},
		["HealthBar"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal3"] = {
							["size"] = 1,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal3"] = {
							["size"] = 1,
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["alpha"] = 0.65,
							["texture"] = "Glamour5",
						},
						["target of target"] = {
							["alpha"] = 0.75,
							["texture"] = "Glamour5",
						},
						["normal3"] = {
							["size"] = 1,
						},
					},
				},
			},
		},
		["VoiceIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 14,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 14,
						},
					},
				},
			},
		},
		["ManaSpark"] = {
		},
		["QuestIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 13,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 13,
						},
					},
				},
			},
		},
		["VisualHeal"] = {
		},
		["CastBarLatency"] = {
		},
		["CombatFader"] = {
		},
		["RestIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 6,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 6,
						},
					},
				},
			},
		},
		["Background"] = {
		},
		["BlankSpace"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal3"] = {
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["Normal"] = {
							["elements"] = {
								["Default"] = {
									["exists"] = true,
									["position"] = 9,
								},
							},
							["first"] = false,
						},
						["normal2"] = {
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
					},
				},
				["Aliena - Mug'thol"] = {
					["layouts"] = {
						["Normal"] = {
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
						["normal3"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
						["Normal"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["elements"] = {
								["Default"] = {
									["exists"] = true,
									["position"] = 8,
								},
							},
							["first"] = false,
						},
						["target of target"] = {
							["elements"] = {
								["Default"] = {
									["exists"] = true,
									["position"] = 8,
								},
							},
							["first"] = false,
						},
						["normal2"] = {
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["normal3"] = {
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
					},
				},
			},
		},
		["ThreatBar"] = {
			["profiles"] = {
				["Pally"] = {
					["layouts"] = {
						["normal3"] = {
							["enabled"] = false,
						},
						["Normal"] = {
							["enabled"] = false,
							["position"] = 3,
						},
						["normal2"] = {
							["enabled"] = false,
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["enabled"] = false,
						},
						["normal3"] = {
							["enabled"] = false,
						},
						["Normal"] = {
							["enabled"] = false,
						},
					},
				},
				["aliena"] = {
					["layouts"] = {
						["Normal"] = {
							["enabled"] = false,
							["position"] = 6,
						},
						["target of target"] = {
							["enabled"] = false,
							["position"] = 6,
						},
						["normal2"] = {
							["enabled"] = false,
						},
						["normal3"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["CombatIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 16,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["normal2"] = {
							["position"] = 16,
						},
					},
				},
			},
		},
		["Aggro"] = {
			["profiles"] = {
				["aliena"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["HolyPower"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["normal2"] = {
							["location"] = "center",
							["position"] = 21,
							["attach_to"] = "PowerBar",
							["size"] = 1.899999976158142,
						},
						["Normal"] = {
							["inactive_color"] = {
								0.5019607843137255, -- [1]
								0.01568627450980392, -- [2]
								0, -- [3]
							},
							["active_color"] = {
								0, -- [1]
								0.9490196078431372, -- [2]
								0.1254901960784314, -- [3]
							},
							["attach_to"] = "HealthBar",
							["background_color"] = {
								nil, -- [1]
								0.403921568627451, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["size"] = 0.5,
						},
					},
				},
				["Pally"] = {
					["layouts"] = {
						["Normal"] = {
							["active_color"] = {
								0.9490196078431372, -- [1]
								0, -- [2]
								0.4235294117647059, -- [3]
							},
							["position"] = 7,
							["location"] = "out_top_right",
							["inactive_color"] = {
								0.5764705882352941, -- [1]
								0.9254901960784314, -- [2]
								0.9372549019607843, -- [3]
								1, -- [4]
							},
							["background_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.75, -- [4]
							},
							["size"] = 2.150000095367432,
						},
						["normal2"] = {
							["location"] = "center",
							["size"] = 1.899999976158142,
							["attach_to"] = "PowerBar",
							["position"] = 21,
						},
					},
				},
			},
		},
	},
	["profileKeys"] = {
		["Alieyna - Dunemaul"] = "Default",
		["Frustration - Mug'thol"] = "Default",
		["Aliena - Mug'thol"] = "aliena",
		["Pistazie - Mug'thol"] = "Default",
		["Semele - Thrall"] = "Default",
		["Lichtgestalt - Dark Iron"] = "Default",
		["Iheartdktank - Shadowmoon"] = "Default",
		["Glados - Mug'thol"] = "Default",
		["Saonserey - Mug'thol"] = "Default",
		["Cuteplusplus - Mug'thol"] = "Default",
		["Evayne - Dark Iron"] = "Default",
		["Artery - Mug'thol"] = "Default",
		["Miriamele - Mug'thol"] = "Pally",
		["Aliena - Garrosh"] = "Default",
		["Geduld - Dark Iron"] = "Default",
		["Miriamel - Dark Iron"] = "Default",
		["Annai - Mug'thol"] = "Default",
	},
	["profiles"] = {
		["Pally"] = {
			["groups"] = {
				["Party pets"] = {
					["enabled"] = true,
					["position_y"] = -38.0776277529335,
					["position_x"] = -782.7225113623337,
					["unit_group"] = "partypet",
				},
				["Party"] = {
					["enabled"] = true,
					["position_x"] = -777.3999724890282,
					["position_y"] = 332.6474783846632,
				},
			},
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"PRIEST", -- [4]
				"SHAMAN", -- [5]
				"DRUID", -- [6]
				"ROGUE", -- [7]
				"MAGE", -- [8]
				"WARLOCK", -- [9]
				"HUNTER", -- [10]
			},
			["layouts"] = {
				["normal3"] = {
					["bar_texture"] = "Smudge",
					["size_y"] = 40,
				},
				["Normal"] = {
					["bar_texture"] = "Smudge",
				},
				["normal2"] = {
					["bar_texture"] = "Smudge",
				},
			},
			["colors"] = {
				["power"] = {
					["MANA"] = {
						0.4313725490196079, -- [1]
						0.5098039215686274, -- [2]
					},
					["BALANCE_NEGATIVE_ENERGY"] = {
						0.04705882352941176, -- [1]
						0.1098039215686275, -- [2]
						0.9019607843137255, -- [3]
					},
				},
			},
			["made_groups"] = true,
			["units"] = {
				["targettargettarget"] = {
					["enabled"] = false,
					["position_x"] = 235.1999441064772,
					["position_y"] = -491.5721207437859,
				},
				["focustarget"] = {
					["position_x"] = -420.4342007349239,
					["position_y"] = -167.4286180600604,
					["layout"] = "normal3",
					["size_x"] = 0.8,
					["size_y"] = 0.5,
				},
				["targettarget"] = {
					["position_x"] = -15.29020061852589,
					["size_y"] = 0.65,
					["size_x"] = 0.8500000000000001,
					["position_y"] = -489.4916491126658,
				},
				["player"] = {
					["position_x"] = -278.9601504907798,
					["position_y"] = -489.4126199449204,
				},
				["focus"] = {
					["position_x"] = -476.8800640413814,
					["size_y"] = 0.65,
					["size_x"] = 0.9,
					["position_y"] = -137.9286419933407,
				},
				["target"] = {
					["position_x"] = 245.0468488515294,
					["position_y"] = -490.5619887072872,
				},
				["pettarget"] = {
					["enabled"] = false,
				},
				["focustargettarget"] = {
					["enabled"] = false,
				},
				["pet"] = {
				},
			},
		},
		["Aliena - Mug'thol"] = {
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"PRIEST", -- [4]
				"SHAMAN", -- [5]
				"DRUID", -- [6]
				"ROGUE", -- [7]
				"MAGE", -- [8]
				"WARLOCK", -- [9]
				"HUNTER", -- [10]
			},
			["groups"] = {
				["Party pets"] = {
					["enabled"] = true,
					["unit_group"] = "partypet",
				},
				["Party"] = {
					["enabled"] = true,
				},
			},
			["made_groups"] = true,
			["units"] = {
				["player"] = {
				},
				["targettargettarget"] = {
				},
				["focus"] = {
				},
				["target"] = {
				},
				["focustarget"] = {
				},
				["pet"] = {
				},
			},
		},
		["Default"] = {
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"PRIEST", -- [4]
				"SHAMAN", -- [5]
				"DRUID", -- [6]
				"ROGUE", -- [7]
				"MAGE", -- [8]
				"WARLOCK", -- [9]
				"HUNTER", -- [10]
			},
			["layouts"] = {
				["normal2"] = {
					["bar_texture"] = "Smudge",
				},
				["normal3"] = {
					["size_y"] = 40,
					["bar_texture"] = "Smudge",
				},
				["Normal"] = {
					["bar_texture"] = "Smudge",
				},
			},
			["made_groups"] = true,
			["units"] = {
				["targettargettarget"] = {
					["enabled"] = false,
					["position_x"] = 235.1999441064772,
					["position_y"] = -491.5721207437859,
				},
				["focustarget"] = {
					["position_x"] = -420.4342007349239,
					["layout"] = "normal3",
					["position_y"] = -167.4286180600604,
					["size_x"] = 0.8,
					["size_y"] = 0.5,
				},
				["targettarget"] = {
					["position_x"] = -15.29020061852589,
					["size_y"] = 0.65,
					["position_y"] = -489.4916491126658,
					["size_x"] = 0.8500000000000001,
				},
				["player"] = {
					["position_x"] = -278.9601504907798,
					["position_y"] = -489.4126199449204,
				},
				["focus"] = {
					["position_x"] = -476.8800640413814,
					["size_y"] = 0.65,
					["position_y"] = -137.9286419933407,
					["size_x"] = 0.9,
				},
				["target"] = {
					["position_x"] = 245.0468488515294,
					["position_y"] = -490.5619887072872,
				},
				["pettarget"] = {
					["enabled"] = false,
				},
				["focustargettarget"] = {
					["enabled"] = false,
				},
				["pet"] = {
					["position_x"] = -475.1754308043178,
					["position_y"] = -270.9615422057599,
				},
			},
			["groups"] = {
				["Party pets"] = {
					["position_x"] = -782.7225113623337,
					["enabled"] = true,
					["unit_group"] = "partypet",
					["position_y"] = -38.0776277529335,
				},
				["Party"] = {
					["position_x"] = -777.3999724890282,
					["enabled"] = true,
					["position_y"] = 332.6474783846632,
				},
			},
			["colors"] = {
				["power"] = {
					["MANA"] = {
						0.4313725490196079, -- [1]
						0.5098039215686274, -- [2]
					},
					["BALANCE_NEGATIVE_ENERGY"] = {
						0.04705882352941176, -- [1]
						0.1098039215686275, -- [2]
						0.9019607843137255, -- [3]
					},
				},
			},
		},
		["aliena"] = {
			["colors"] = {
				["power"] = {
					["MANA"] = {
						0.4313725490196079, -- [1]
						0.5098039215686274, -- [2]
					},
					["BALANCE_NEGATIVE_ENERGY"] = {
						0.04705882352941176, -- [1]
						0.1098039215686275, -- [2]
						0.9019607843137255, -- [3]
					},
				},
			},
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"PRIEST", -- [4]
				"SHAMAN", -- [5]
				"DRUID", -- [6]
				"ROGUE", -- [7]
				"MAGE", -- [8]
				"WARLOCK", -- [9]
				"HUNTER", -- [10]
			},
			["layouts"] = {
				["Normal"] = {
					["font_size"] = 1.049999952316284,
					["font"] = "Calibri v0.9",
					["bar_padding"] = 1,
					["bar_spacing"] = 0,
					["bar_texture"] = "Empty",
				},
				["target of target"] = {
					["font_size"] = 1.05,
					["font"] = "Calibri v0.9",
					["bar_padding"] = 1,
					["bar_spacing"] = 0,
					["bar_texture"] = "Melli Dark",
				},
				["normal2"] = {
					["bar_texture"] = "Smudge",
				},
				["normal3"] = {
					["bar_texture"] = "Smudge",
					["size_y"] = 40,
				},
			},
			["groups"] = {
				["Party pets"] = {
					["enabled"] = true,
					["position_y"] = -48.44923434940938,
					["position_x"] = -765.1199158560689,
					["unit_group"] = "partypet",
				},
				["Party"] = {
					["enabled"] = true,
					["position_x"] = -770.2711708842543,
					["position_y"] = -5.424546239413871,
				},
			},
			["made_groups"] = true,
			["units"] = {
				["targettargettarget"] = {
					["enabled"] = false,
					["position_x"] = 235.1999441064772,
					["position_y"] = -491.5721207437859,
				},
				["focustarget"] = {
					["size_x"] = 0.8,
					["position_y"] = -195.7356711520891,
					["layout"] = "normal3",
					["size_y"] = 0.5,
					["position_x"] = -431.9762379427754,
				},
				["targettarget"] = {
					["size_x"] = 0.8500000000000001,
					["position_y"] = -489.4916491126658,
					["layout"] = "target of target",
					["size_y"] = 0.65,
					["position_x"] = -15.29020061852589,
				},
				["player"] = {
					["position_x"] = -287.7078444436588,
					["position_y"] = -490.0508632463607,
				},
				["focus"] = {
					["size_x"] = 0.9,
					["position_y"] = -134.2371233504399,
					["layout"] = "normal2",
					["size_y"] = 0.65,
					["position_x"] = -463.8181908534664,
				},
				["target"] = {
					["position_x"] = 245.0468488515294,
					["position_y"] = -490.5619887072872,
				},
				["pet"] = {
					["position_x"] = -845.2308313226683,
					["position_y"] = 241.9488047101258,
				},
				["focustargettarget"] = {
					["enabled"] = false,
				},
				["pettarget"] = {
					["enabled"] = false,
				},
			},
		},
	},
}
