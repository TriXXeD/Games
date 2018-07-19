local L = KuiNameplatesCoreConfig:Locale('ruRU')
if not L then return end

L["page_names"] = {
	["auras"] = "Ауры",
	["bossmod"] = "Босс моды",
	["castbars"] = "Полоса заклинания",
	["classpowers"] = "Энергия классов",
--[[Translation missing --]]
	["cvars"] = "CVars",
--[[Translation missing --]]
	["fade_rules"] = "Fade rules",
	["framesizes"] = "Размеры рамок",
	["general"] = "Основное",
	["healthbars"] = "Полоса здоровья",
	["nameonly"] = "Только-имя",
	["text"] = "Текст",
	["threat"] = "Угроза",
}
L["titles"] = {
	["absorb_enable"] = "Показать поглощения",
	["absorb_striped"] = "Текстура полоски поглощ.",
	["auras_centre"] = "Выравнивание значков по центру",
	["auras_enabled"] = "Показать ауры",
	["auras_filtering_sep"] = "Фильтрация",
	["auras_hide_all_other"] = "Черный список всех других аур",
	["auras_icon_minus_size"] = "Размер значка (минус)",
	["auras_icon_normal_size"] = "Размер значка (обычный)",
	["auras_icon_squareness"] = "Площадь значка",
	["auras_icons_sep"] = "Значки",
	["auras_kslc_hint"] = "KuiSpellListConfig из Curse, может быть использован для белого списка или черного списка для, любых применяемых аур.",
	["auras_maximum_length"] = "Максимальная длина эффекта",
	["auras_minimum_length"] = "Минимальная длина эффекта",
	["auras_on_personal"] = "Показать в личной рамке",
	["auras_pulsate"] = "Пульсирующие значки",
	["auras_show_all_self"] = "Белый список всех своих аур",
	["auras_sort"] = "Метод сортировки",
	["auras_time_threshold"] = "Порог таймера",
	["bar_animation"] = "Полоса анимации",
	["bar_texture"] = "Полоса текстуры",
	["bossmod_clickthrough"] = "Включить сквозной щелчок, при автоматическом отображении",
	["bossmod_control_visibility"] = [=[Позволить босс-модам управлять 
видимостью индикаторами здоровья]=],
	["bossmod_enable"] = "Включить босс мод, модуль взаимодействия",
	["bossmod_icon_size"] = "Размер значка",
	["bossmod_x_offset"] = "Смещение по горизонтали",
	["bossmod_y_offset"] = "Смещение по вертикали",
	["bot_vertical_offset"] = "Уров./здор. в.смещение",
	["castbar_colour"] = "Цвет полосы заклинания",
	["castbar_enable"] = "Включить",
	["castbar_height"] = "Высота полосы заклинания",
	["castbar_icon"] = "Показать значок заклинания",
	["castbar_name"] = "Показать название заклинания",
--[[Translation missing --]]
	["castbar_name_vertical_offset"] = "Spell name v.offset",
	["castbar_shield"] = "Показать не прерываемый щит",
	["castbar_showall"] = "Показать полосу заклинания, на всех индикаторах здоровья",
	["castbar_showenemy"] = "Показать полосу заклинания противников",
	["castbar_showfriend"] = "Показать полосу заклинания союзников",
	["castbar_showpersonal"] = "Показать собст. полосу заклин.",
	["castbar_unin_colour"] = "Цвет невоз. прерывания",
	["class_colour_enemy_names"] = "Окрашивать имена противников по классу",
	["class_colour_friendly_names"] = "Окрашивать имена союзников по классу",
	["classpowers_bar_height"] = "Регулировать полосу высоты",
	["classpowers_bar_width"] = "Ширина регулировки полосы",
	["classpowers_colour"] = "Окрасить значок",
	["classpowers_colour_inactive"] = "Неактив. цвет",
	["classpowers_colour_overflow"] = "Цвет переполнения",
	["classpowers_enable"] = "Показывать ресурсы класса",
	["classpowers_on_target"] = "Показать на цели",
	["classpowers_size"] = "Размер значка",
	["clickthrough_enemy"] = "Противник",
	["clickthrough_friend"] = "Союзник",
	["clickthrough_self"] = "Индикатор",
	["clickthrough_sep"] = "Прокликивание насквозь рамки",
	["colour_absorb"] = "Наложение поглощения",
	["colour_enemy_class"] = "Окрасить класс вражеских игроков",
	["colour_enemy_pet"] = "Питомец вражеского игрока",
	["colour_enemy_player"] = "Враждебный игрoк",
	["colour_friendly"] = "Союзники",
	["colour_friendly_pet"] = "Питомец союзного игрока",
	["colour_hated"] = "Ненависть",
	["colour_neutral"] = "Нейтральные",
	["colour_player"] = "Игрок",
	["colour_player_class"] = "Окрасить класс союзных игроков",
	["colour_self"] = "Свое",
	["colour_self_class"] = "Окрасить свой класс",
	["colour_tapped"] = "Потускнение",
	["combat_friendly"] = "Боевое действие: союзные",
	["combat_hostile"] = "Боевое действие: враждебное",
	["copy_profile_label"] = "Введите имя для нового профиля",
	["copy_profile_title"] = "Копир. профиль",
--[[Translation missing --]]
	["cvar_clamp_bottom"] = "Bottom clamp distance",
--[[Translation missing --]]
	["cvar_clamp_top"] = "Top clamp distance",
--[[Translation missing --]]
	["cvar_enable"] = "Allow Kui Nameplates to modify CVars",
--[[Translation missing --]]
	["cvar_max_distance"] = "Max render distance",
--[[Translation missing --]]
	["cvar_name_only"] = "Hide default health bar",
--[[Translation missing --]]
	["cvar_overlap_v"] = "Vertical overlap",
--[[Translation missing --]]
	["cvar_personal_show_always"] = "Always show personal nameplate",
--[[Translation missing --]]
	["cvar_personal_show_combat"] = "Show personal nameplate when in combat",
--[[Translation missing --]]
	["cvar_personal_show_target"] = "Show personal nameplate with a target",
--[[Translation missing --]]
	["cvar_show_friendly_npcs"] = "Always show friendly NPCs' nameplates",
	["dd_auras_sort_index"] = "Индекс аур",
	["dd_auras_sort_time"] = "Оставшееся время",
	["dd_bar_animation_cutaway"] = "Срез",
	["dd_bar_animation_smooth"] = "Плавно",
	["dd_combat_toggle_hide"] = "Скрыть, затем показать",
	["dd_combat_toggle_nothing"] = "Ничего не делать",
	["dd_combat_toggle_show"] = "Показать, затем скрыть",
	["dd_font_style_monochrome"] = "Монохромный",
	["dd_font_style_none"] = "Никакой",
	["dd_font_style_outline"] = "Контур",
	["dd_font_style_shadow"] = "Тень",
	["dd_font_style_shadowandoutline"] = "Тень+контур",
	["dd_health_text_blank"] = "Пусто",
	["dd_health_text_current"] = "Текущие",
--[[Translation missing --]]
	["dd_health_text_current_deficit"] = "Current + deficit",
--[[Translation missing --]]
	["dd_health_text_current_percent"] = "Current + percent",
	["dd_health_text_deficit"] = "Дефицит",
	["dd_health_text_maximum"] = "Максимальное",
	["dd_health_text_percent"] = "Процентов",
	["delete_profile_label"] = "Удалить профиль |cffffffff%s|r?",
	["delete_profile_title"] = "Удалить профиль",
	["execute_auto"] = "Авто-определение диапазона",
	["execute_colour"] = "Цвет добивания",
	["execute_enabled"] = "Включить диапазон добивания",
	["execute_percent"] = "Диапазон добивания",
	["execute_sep"] = "Диапазон добивания",
	["fade_all"] = "Затухание по умолчанию",
	["fade_alpha"] = "Прозрачность затухания",
--[[Translation missing --]]
	["fade_avoid_casting_friendly"] = "Avoid casting (friendly)",
--[[Translation missing --]]
	["fade_avoid_casting_hostile"] = "Avoid casting (hostile)",
--[[Translation missing --]]
	["fade_avoid_casting_interruptible"] = "Interruptible",
--[[Translation missing --]]
	["fade_avoid_casting_uninterruptible"] = "Uninterruptible",
--[[Translation missing --]]
	["fade_avoid_combat"] = "Avoid in combat",
	["fade_avoid_execute_friend"] = "Искл. союзников с низким УЗ",
	["fade_avoid_execute_hostile"] = "Искл. врагов с низким УЗ",
	["fade_avoid_nameonly"] = "Исключить только-имя",
	["fade_avoid_raidicon"] = "Искл. рейдовою иконку",
	["fade_avoid_tracked"] = "Искл. отслеживание или в бою",
--[[Translation missing --]]
	["fade_conditional_alpha"] = "Conditional alpha",
	["fade_friendly_npc"] = "Затухание союзных НИПов",
	["fade_neutral_enemy"] = "Затухание нейтрал. противников",
--[[Translation missing --]]
	["fade_non_target_alpha"] = "Non-target alpha",
	["fade_rules_sep"] = "Затемнение рамки",
	["fade_speed"] = "Скорость затухания анимации",
	["fade_untracked"] = "Затухание не отслеж. юнита",
	["font_face"] = "Лицевой шрифт",
	["font_size_normal"] = "Обычный размер шрифта",
	["font_size_small"] = "Маленький размер шрифта",
	["font_style"] = "Стиль шрифта",
	["frame_glow_size"] = "Размер рамки свечения",
	["frame_glow_threat"] = "Показать свечение угрозы",
	["frame_height"] = "Высота рамки",
	["frame_height_minus"] = "Минус высоты рамки",
	["frame_height_personal"] = "Высота рамки личного индикатора",
	["frame_width"] = "Ширина рамки",
	["frame_width_minus"] = "Минус ширины рамки",
	["frame_width_personal"] = "Ширина рамки индикатора",
	["glow_as_shadow"] = "Показывать рамку тени",
	["guild_text_npcs"] = "Показать звание НИПа",
	["guild_text_players"] = "Показать гильдию игроков",
	["health_text"] = "Показать здоровье текстом",
	["health_text_friend_dmg"] = "Повреждение союзников",
	["health_text_friend_max"] = "Макс. здоровье союзника",
	["health_text_hostile_dmg"] = "Повреждение враждебное",
	["health_text_hostile_max"] = "Макс. здоровье противника",
	["health_text_sep"] = "Текст здоровья",
	["hide_names"] = "Скрыть не отслеживаемые имена",
	["ignore_uiscale"] = "Игнорировать масштаб ПИ",
	["level_text"] = "Показать уровень текстом",
--[[Translation missing --]]
	["name_colour_npc_friendly"] = "Friendly",
--[[Translation missing --]]
	["name_colour_npc_hostile"] = "Hostile",
--[[Translation missing --]]
	["name_colour_npc_neutral"] = "Neutral",
--[[Translation missing --]]
	["name_colour_player_friendly"] = "Friendly player",
--[[Translation missing --]]
	["name_colour_player_hostile"] = "Hostile player",
--[[Translation missing --]]
	["name_colour_sep"] = "Name text colour",
--[[Translation missing --]]
	["name_colour_white_in_bar_mode"] = "White names with visible health bar",
	["name_text"] = "Показать имя текстом",
	["name_vertical_offset"] = "В.смещение имени",
	["nameonly"] = "Использ. режим только-имя",
	["nameonly_all_enemies"] = "На противниках",
	["nameonly_damaged_friends"] = "На союзников повреждения",
	["nameonly_enemies"] = "На не атакующих противниках",
	["nameonly_health_colour"] = "Цвет здоровья",
	["nameonly_in_combat"] = "На юнитах в бою с вами",
	["nameonly_neutral"] = "На нейтральных противников",
	["nameonly_no_font_style"] = "Нет контура текста",
	["nameonly_on_default"] = "Скрыть панель здоровья по умолчанию",
	["nameonly_target"] = "На цель",
--[[Translation missing --]]
	["nameonly_text_sep"] = "Text",
--[[Translation missing --]]
	["nameonly_visibility_sep"] = "Visibility",
	["new_profile"] = "Новый профиль...",
	["new_profile_label"] = "Введите имя профиля",
	["powerbar_height"] = "Высота полосы энергии",
	["profile"] = "Профиль",
	["reaction_colour_sep"] = "Цвета",
	["rename_profile_label"] = "Введите новое имя для |cffffffff%s",
	["rename_profile_title"] = "Переим. профиль",
	["reset_profile_label"] = "Сбросить профиль |cffffffff%s|r?",
	["reset_profile_title"] = "Сброс профиля",
	["state_icons"] = "Показать состояния значков",
	["tank_mode"] = "Включить режим танка",
	["tankmode_colour_sep"] = "Цветовые полосы в режиме танка",
	["tankmode_force_enable"] = "Режим принудительного танка",
	["tankmode_force_offtank"] = "Принудительное обнаружение офф-танка",
	["tankmode_other_colour"] = "Офф-танк",
	["tankmode_tank_colour"] = "Танкование",
	["tankmode_trans_colour"] = "Переходной",
	["target_arrows"] = "Показывать стрелки на цели",
	["target_arrows_size"] = "Размер стрелки цели",
	["target_glow"] = "Показывать свечение цели",
	["target_glow_colour"] = "Цветовое свечение цели",
	["text_vertical_offset"] = "В.смещение текста",
	["threat_brackets"] = "Показать в скобках угрозу",
	["title_text_players"] = "Показать звание игроков",
	["use_blizzard_personal"] = "Игнор индикатора личного ресурса",
	["version"] = "%s от %s @ Версия Curse %s",
}
L["tooltips"] = {
	["absorb_enable"] = "Показать поглощение, наложенной на полоске здоровья",
	["absorb_striped"] = "Использовать полосатую текстуру для поглощения наложения. Если флажок снят, применяет полоску текстуры здоровья",
	["auras_centre"] = "Выровнять значки по горизонтали относительно центра рамки, а не влево",
	["auras_enabled"] = "Показывать ауры, которые вы накладываете на индикаторы здоровья - баффы на союзников, дебаффы на врагах",
	["auras_hide_all_other"] = "Не показывать любые ауры на других игроков (такие как СК или замедление).|n|nОбратите внимание, что этот параметр применяется после фильтра KuiSpellList, так что, вы можете проложить его использовать |cffffff88KuiSpellListConfig из Curse|r для изменения отображаемых заклинаний.",
	["auras_icon_minus_size"] = "Размер значка на маленьких рамках",
	["auras_icon_normal_size"] = "Размер значков на нормальных, размерах рамки",
	["auras_icon_squareness"] = "Соотношение размеров значков ауры, где 1 означает идеальную площадь",
	["auras_maximum_length"] = "Не показывать ауры с исходной длиной больше этого значения. Задать значение -1 для игнорирования",
	["auras_minimum_length"] = "Не показывать ауры с исходной длиной меньше этого значения",
	["auras_on_personal"] = "Показать ауры на индикаторах здоровья, вашего персонажа, если они включены",
	["auras_pulsate"] = "Пульсирующие значки, когда они вот-вот истекут",
	["auras_show_all_self"] = "Показывать все ауры, которые Вы применяете, а не просто те, которые отмечены как важные от Blizzard.|n|nОбратите внимание, что этот параметр применяется после фильтра KuiSpellList, так что Вы можете продолжить его использовать |cffffff88KuiSpellListConfig из Curse|r для изменения отображаемых заклинаний.",
	["auras_time_threshold"] = "Текст обратного отсчета будет отображаться, если на ауре меньше или равно этому количеству времени. Установить в -1, чтобы всегда отображать таймер",
	["bar_animation"] = "Стиль анимации, используемой на панелях здоровья/полосы энергии",
	["bar_texture"] = "Текстура, используемая для полосы статуса (предоставляется LibSharedMedia)",
	["bossmod_clickthrough"] = "Отключить, щелчок на индикаторах здоровья, которые включены автоматически",
	["bossmod_control_visibility"] = "Босс мод аддоны, могут отправлять сообщение аддонам с индикаторами здоровья, информируя их о включении индикатора здоровья во время схваток, игнорируя другие параметры, такие как боевое автоматическое переключение, чтобы на них могли отображаться дополнительные сведения.|n|n|cffff6666Если этот параметр отключен, а индикаторы здоровья, как правило, не включены, то в случае босс моды, не смогут показать эти данные.",
	["bossmod_enable"] = "Босс мод аддоны, могут взаимодействовать с индикаторами здоровья, чтобы отображать дополнительную информацию на индикаторе здоровья в соответствующих схватках, таких как важные баффы или дебаффы, наложенными боссами.",
	["bossmod_icon_size"] = "Размер значков ауры босса",
	["bossmod_x_offset"] = "Горизонтальное смещение значков ауры босса",
	["bossmod_y_offset"] = "Вертикальное смещение значков ауры босса",
	["bot_vertical_offset"] = "Вертикальное смещение строк уровня и здоровья",
	["castbar_enable"] = "Включить элемент полосы заклинания",
--[[Translation missing --]]
	["castbar_name_vertical_offset"] = "Vertical offset of the spell name text",
	["castbar_shield"] = "Показывать значок щита на полосе применения во время применения, которые невозможно прервать",
	["castbar_showall"] = "Показать полосу заклинания, на всех индикаторах здоровья, а не только на текущей цели",
	["castbar_showenemy"] = "Показывать полосу заклинания противников на индикаторах здоровья",
	["castbar_showfriend"] = "Показывать полосу заклинания союзников на индикаторах здоровья (обратите внимание, что полоса заклинаний не отображаются на рамках, с активным режимом только-имя)",
	["castbar_showpersonal"] = "Показывать полосу заклинаний, для вашего персонажа на индикаторе здоровья, если она включена",
	["castbar_unin_colour"] = "Цвет полосы заклинаний, при невозможности прерывания",
	["class_colour_enemy_names"] = "Цвет индикатора здоровья противников на их класс. Также влияет на текст в режиме только-имя.",
	["class_colour_friendly_names"] = "Цвет индикатора здоровья союзников на их класс. Также влияет на текст в режиме только-имя.",
	["classpowers_bar_height"] = "Высота регулировки полосы",
	["classpowers_bar_width"] = "Регулировать пoлосу ширины",
	["classpowers_colour"] = "Окрашивать значок класса энергии для текущего класса",
	["classpowers_colour_inactive"] = "Окрашивать неактивные значки энергии классов",
	["classpowers_colour_overflow"] = "Окрашивать классовою энергию \"переполнение\" (аля Предчувствие у разбойников)",
	["classpowers_enable"] = "Показывать специальный ресурс вашего класса, такие как длина серии приемов, Энергия Света, и т. д.",
	["classpowers_on_target"] = "Показывать на рамке вашей цели, а не на личном индикаторе",
	["classpowers_size"] = "Размер значков энергии класса",
	["clickthrough_enemy"] = "Отключить, прокликивание на индикаторах здоровья противников",
	["clickthrough_friend"] = "Отключить, прокликивание на индикаторах здоровья союзников",
	["clickthrough_self"] = "Отключить, прокликивание на вашем индикаторе личного ресурса",
	["colour_friendly_pet"] = "Обратите внимание, что для союзных питомцев, как правило, не отображаются индикаторы здоровья",
	["colour_player"] = "Окрасить полосу здоровья других союзных игроков",
	["colour_self"] = "Цвет полосы здоровья, вашего индикатора личного ресурса",
	["colour_self_class"] = "Использовать цвет вашего класса, на вашем индикаторе личного ресурса",
	["combat_friendly"] = "Действия, направленные на то, чтобы принять союзные рамки после вступления в бой и покидания из него.",
	["combat_hostile"] = "Действия, направленные на то, чтобы принять враждебные рамки после вступления в бой и покидания из него.",
--[[Translation missing --]]
	["cvar_clamp_bottom"] = "|cffffcc00nameplate{Other,Large}BottomInset|r",
--[[Translation missing --]]
	["cvar_clamp_top"] = "|cffffcc00nameplate{Other,Large}TopInset|r|n|nHow close nameplates will be rendered to the top edge of the screen, where 0 means on the edge. Set to -0.1 to disable clamping on the top of the screen.|n|nClamping only affects your current target.",
--[[Translation missing --]]
	["cvar_enable"] = "When enabled, Kui Nameplates will attempt to lock the CVars on this page to the values set here.|n|nIf this option is disabled, KNP will not modify CVars, even to return them to defaults.",
--[[Translation missing --]]
	["cvar_max_distance"] = "|cffffcc00nameplateMaxDistance|r|n|nMaximum distance at which to render nameplates (not including your current target).",
--[[Translation missing --]]
	["cvar_name_only"] = "|cffffcc00nameplateShowOnlyNames|r|n|nHide the health bar of the default nameplates in situations where friendly nameplates cannot be otherwise modified by addons.",
--[[Translation missing --]]
	["cvar_overlap_v"] = "|cffffcc00nameplateOverlapV|r|n|nVertical distance between nameplates (only valid when motion type is set to stacking in the default interface options).",
--[[Translation missing --]]
	["cvar_personal_show_always"] = "|cffffcc00nameplatePersonalShowAlways|r",
--[[Translation missing --]]
	["cvar_personal_show_combat"] = "|cffffcc00nameplatePersonalShowInCombat|r",
--[[Translation missing --]]
	["cvar_personal_show_target"] = "|cffffcc00nameplatePersonalShowWithTarget|r|n|nShow the personal nameplate whenever you have an attackable target.",
--[[Translation missing --]]
	["cvar_show_friendly_npcs"] = "|cffffcc00nameplateShowFriendlyNPCs|r",
	["execute_auto"] = "Автоматически определять соответствующий диапазон добивания из ваших талантов, по умолчанию на 20% на персонаже без добивания",
	["execute_colour"] = "Окрасить добивание в пределах диапазона",
	["execute_enabled"] = "Перекрашивать полоски здоровья, когда юниты, находятся в пределах диапазона добивания",
	["execute_percent"] = "Вручную установить диапазон добивания (проценты)",
	["fade_all"] = "Затухать все рамки по умолчанию",
	["fade_alpha"] = "Непрозрачность для потухших рамках. Обратите внимание, что если задано значение 0 (т. е. невидимые рамки), невидимые индикаторы здоровья будут кликабельны. Аддоны не могут произвольно отключать индикаторы здоровья",
--[[Translation missing --]]
	["fade_avoid_casting_friendly"] = "Don't fade friendly nameplates when they are casting",
--[[Translation missing --]]
	["fade_avoid_casting_hostile"] = "Don't fade hostile nameplates when they are casting",
--[[Translation missing --]]
	["fade_avoid_combat"] = "Don't fade nameplates which are affecting combat with you",
	["fade_avoid_execute_friend"] = "Не затухать на союзных индикаторах здоровья, в диапазоне добивания (устанавливается на странице \"Полоса здоровья\")",
	["fade_avoid_execute_hostile"] = "Не затухать на вражеских индикаторах здоровья, в диапазоне добивания (устанавливается на странице \"Полоса здоровья\")",
	["fade_avoid_nameonly"] = "Не затухать индикаторам, которые в настоящее время находятся в режиме только-имя",
	["fade_avoid_raidicon"] = "Не затухать индикаторам здоровья, у которых есть рейдовая иконка",
	["fade_avoid_tracked"] = "Не затухать, отслеживаемым индикаторам или индикаторами здоровья, которые в бою с вами.|nНезависимо от того, отслеживается ли юнит, можно установить, изменив выпадающем списке \"имена НИП\" и другие флажки в настройках интерфейса по умолчанию в разделе Esc > Интерфейс > Имена",
--[[Translation missing --]]
	["fade_conditional_alpha"] = "Opacity frames will fade to when matching one of the conditions below",
	["fade_friendly_npc"] = "Затухание союзных НИП, индикаторы здоровья, по умолчанию (в том числе в режиме только-имя)",
	["fade_neutral_enemy"] = "Затухание нейтральных индикаторах здоровья, по умолчанию (в том числе в режиме только-имя)",
--[[Translation missing --]]
	["fade_non_target_alpha"] = "Opacity other frames will fade to when you have a target.|nIf set to 0, the nameplate will still be clickable despite being invisible. Addons cannot arbitrarily disable nameplate clickboxes",
	["fade_speed"] = "Скорость замирания анимации рамки, где 1 — самая медленная и 0 — мгновенная анимация",
	["fade_untracked"] = "Затухание не отслеживаемого индикатора здоровья, по умолчанию (в том числе в режиме только-имя).|nНезависимо от того, отслеживается ли юнит, можно установить, изменив раскрывающийся списке \"имена НИП\" и другие флажки в параметрах интерфейса по умолчанию в разделе Esc > Интерфейс > Имена",
	["font_face"] = "Шрифт, используемый для всех строк на индикаторах здоровья (предоставляется LibSharedMedia)",
	["font_size_normal"] = "Стандартный размер шрифта (имя и т. д.)",
	["font_size_small"] = "Мелкий размер шрифта (продавец, название заклинания и т. д.)",
	["frame_glow_size"] = "Размер рамки свечения, используемого для выделения цели, подсветки и индикации угрозы",
	["frame_glow_threat"] = "Изменение цвета свечения для индикации состояния угрозы",
	["frame_height"] = "Высота стандартного индикатора здоровья",
	["frame_height_minus"] = "Высота индикатора здоровья, используемых на мобов, помечено как \"минус\" (ранее называемый как тривиальный), а также, такие как безымянные рамки (т. е. \"неважные\" юниты)",
	["frame_height_personal"] = "Высота индикатора личного ресурса (Для включения Esc > Интерфейс > Имена > Индикатор личного ресурса)",
	["frame_width"] = "Ширина стандартного индикатора здоровья",
	["frame_width_minus"] = "Ширина индикатора здоровья, используемых на мобов, помечено как \"минус\" (ранее называемый как тривиальный)",
	["frame_width_personal"] = "Ширина индикатора личного ресурса (Для включения Esc > Интерфейс > Имена > Индикатор личного ресурса)",
	["guild_text_npcs"] = "Показывать звание НИПов, такие как Интенданты, и т. д.",
	["guild_text_players"] = "Показывать гильдейских игроков в режиме только-имя",
	["health_text_friend_dmg"] = "Формат текста для здоровья, используемый на повреждения союзных юнитах",
	["health_text_friend_max"] = "Формат текста для здоровья, используемый для союзных юнитах при полном здоровье",
	["health_text_hostile_dmg"] = "Формат текста для здоровья, используемый на повреждения враждебных юнитах",
	["health_text_hostile_max"] = "Формат текста для здоровья, используемый для враждебных юнитах при полном здоровье",
	["hide_names"] = "Независимо от того, отслеживается ли юнит, можно установить, раскрывающимся меню \"имена НИП\" и другие флажки в параметрах интерфейса по умолчанию в разделе Esc > Интерфейс > Имена.|n|nЭто не влияет на режим только-имя.",
	["ignore_uiscale"] = "Игнорировать масштабирование ПИ, по умолчанию. Это позволяет индикаторам здоровья сохранять четкость изображения независимо от разрешения.",
--[[Translation missing --]]
	["name_colour_white_in_bar_mode"] = "Colour NPC's and player's names white (unless class colour is enabled).|n|nIf this is enabled, the colours below only apply to name-only mode.",
	["name_vertical_offset"] = "Вертикальное смещение текста имени",
	["nameonly"] = "Скрыть полосу здоровья для союзников, или не атакующих юнитов. В режиме только-имя, текст имени окрашен в проценты от состояния здоровья",
	["nameonly_all_enemies"] = "Использовать режим только-имя для всех противников",
	["nameonly_damaged_friends"] = "Использовать режим только-имя, даже при повреждение союзных рамках",
	["nameonly_enemies"] = "Использовать режим только-имя, на не атакующих врагов (не включая вражеских игроков под действием таких эффектов, как Ледяная глыба)",
	["nameonly_health_colour"] = "Частично окрашенный текст, представляющий процент здоровья",
	["nameonly_in_combat"] = "Использовать режим только-имя, даже если в бою имеется юнит (также позволяет включить режим только-имя для вражеских игроков).|n|nОбратите внимание, что это не относится к учебным манекенам или другим юнитам, у которых нет таблицы угроз.",
	["nameonly_neutral"] = "Использовать режим только-имя, на атакующих нейтральных юнитов",
	["nameonly_no_font_style"] = "Скрыть текст контура, в режиме только-имя (путем установки стиля шрифта на ноль)",
	["nameonly_on_default"] = "Скрыть полосу здоровья по умолчанию в ситуациях, когда полосы здоровья дружественных целей не могут быть иным образом изменены аддонами.|n|nЭто модифицирует таблицу CVar |cffffff88nameplateShowOnlyNames|r.",
	["nameonly_target"] = "Также использовать режим только-имя, на вашей цели",
	["powerbar_height"] = "Высота полосы энергии. Не будет увеличиваться за пределами высоты рамки",
	["state_icons"] = "Отображать значок на боссов и редких юнитов (скрывается при отображении текста уровня)",
	["tank_mode"] = "Перекрашивать полоски здоровья юнитов, при активном танковании, когда в танковской специализации",
	["tankmode_force_enable"] = "Всегда используйте режим танка, даже если в настоящее время вы не используете специализацию танкования",
	["tankmode_force_offtank"] = "Цветовые полосы, которые будут выделены другими танками в вашей группе, даже если вы в настоящее время не в специализации танкование",
	["tankmode_other_colour"] = "Окрашивать полосу здоровья в случае, когда другой танк, танкует.|n|nЭто только используется, если на данный момент вы находитесь в специализации танкование, и требуется другой танк, чтобы он был в вашей группе и его роль, была выбрана на танка.",
	["tankmode_tank_colour"] = "Окрашивать полосу здоровья при, использовании танкования",
	["tankmode_trans_colour"] = "Окрашивать полосу здоровья, при получении или утери угрозы",
	["target_arrows"] = "Показывать стрелки вокруг вашей текущей цели. Наследовать эту цель цветовым свечением",
	["text_vertical_offset"] = "Смещение по вертикали применяется ко всем строкам. Используется как, отображение некоторых шрифтов на нечетных вертикальных позициях в WoW. Обратите внимание, что это значение заканчивается в .5 по умолчанию, поскольку это помогает уменьшить дрожание по вертикали, при передвижении рамки",
	["threat_brackets"] = "Показывать треугольники вокруг индикатора здоровья, указывающие на статус угрозы",
	["title_text_players"] = "Показывать звание игроков в режиме только-имя",
	["use_blizzard_personal"] = "Не убирайте индикатор личного ресурса или классовою энергию.|n|nПри использовании этой опции ширина персональный рамки, может быть скорректирована с помощью слайдера \"Ширина рамки индикатора\" в разделе \"Размеры рамок\", однако для его полного обновления требуется перезагрузка ПИ.|n|nЧтобы этот рамка отображалась, необходимо проверить параметр \"Индикатор личного ресурса\" в разделе Esc > Интерфейс > Имена > Индикаторы здоровья.|nЧтобы показать не измененные ресурсы класса, снимите флажок \"Показывать особые ресурсы на целях\" на той же странице.|n|n|cffff6666Требуется перезагрузка ПИ, если рамка в данный момент видна.",
}
