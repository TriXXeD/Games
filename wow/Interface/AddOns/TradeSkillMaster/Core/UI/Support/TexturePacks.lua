-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local TexturePacks = TSM.UI:NewPackage("TexturePacks")
local private = {}
local TEXTURE_FILE_INFO = {
	uiFrames = {
		path = "Interface\\Addons\\TradeSkillMaster\\Media\\UIFrames.blp",
		scale = 1,
		width = 512,
		height = 512,
		coord = {
			["ActiveInputFieldLeft"] = { 324, 345, 146, 166 },
			["ActiveInputFieldMiddle"] = { 324, 345, 171, 191 },
			["ActiveInputFieldRight"] = { 394, 415, 257, 277 },
			["CraftingApplicationInnerFrameTopLeftCorner"] = { 3, 179, 3, 35 },
			["CraftingApplicationInnerFrameTopRightCorner"] = { 184, 360, 3, 35 },
			["DefaultUIButton"] = { 365, 496, 3, 19 },
			["DividerHandle"] = { 501, 509, 3, 85 },
			["HeaderLeft"] = { 186, 211, 132, 160 },
			["HeaderMiddle"] = { 155, 181, 132, 160 },
			["HeaderRight"] = { 293, 319, 146, 174 },
			["HighlightDot"] = { 427, 435, 240, 248 },
			["InactiveInputFieldLeft"] = { 394, 415, 282, 302 },
			["InactiveInputFieldMiddle"] = { 394, 415, 307, 327 },
			["InactiveInputFieldRight"] = { 439, 460, 276, 296 },
			["LargeActiveButtonLeft"] = { 458, 471, 368, 394 },
			["LargeActiveButtonMiddle"] = { 118, 144, 163, 189 },
			["LargeActiveButtonRight"] = { 476, 489, 388, 414 },
			["LargeApplicationCloseFrameBackground"] = { 155, 211, 99, 127 },
			["LargeApplicationFrameInnerFrameBottomEdge"] = { 216, 288, 138, 144 },
			["LargeApplicationFrameInnerFrameBottomLeftCorner"] = { 365, 391, 195, 221 },
			["LargeApplicationFrameInnerFrameBottomRightCorner"] = { 396, 422, 195, 221 },
			["LargeApplicationFrameInnerFrameLeftEdge"] = { 427, 434, 253, 325 },
			["LargeApplicationFrameInnerFrameRightEdge"] = { 502, 509, 245, 317 },
			["LargeApplicationInnerFrameTopEdge"] = { 365, 437, 146, 175 },
			["LargeApplicationInnerFrameTopLeftCorner"] = { 78, 150, 109, 141 },
			["LargeApplicationInnerFrameTopRightCorner"] = { 365, 437, 109, 141 },
			["LargeApplicationOuterFrameBottomEdge"] = { 365, 437, 180, 190 },
			["LargeApplicationOuterFrameBottomLeftCorner"] = { 427, 437, 195, 205 },
			["LargeApplicationOuterFrameBottomRightCorner"] = { 427, 437, 210, 220 },
			["LargeApplicationOuterFrameLeftEdge"] = { 350, 360, 117, 189 },
			["LargeApplicationOuterFrameRightEdge"] = { 350, 360, 194, 266 },
			["LargeApplicationOuterFrameTopEdge"] = { 3, 75, 40, 94 },
			["LargeApplicationOuterFrameTopLeftCorner"] = { 80, 144, 40, 94 },
			["LargeApplicationOuterFrameTopRightCorner"] = { 149, 213, 40, 94 },
			["LargeClickedButtonLeft"] = { 494, 507, 390, 416 },
			["LargeClickedButtonMiddle"] = { 442, 468, 214, 240 },
			["LargeClickedButtonRight"] = { 216, 229, 149, 175 },
			["LargeHoverButtonLeft"] = { 234, 247, 149, 175 },
			["LargeHoverButtonMiddle"] = { 473, 499, 214, 240 },
			["LargeHoverButtonRight"] = { 252, 265, 149, 175 },
			["LargeInactiveButtonLeft"] = { 270, 283, 149, 175 },
			["LargeInactiveButtonMiddle"] = { 365, 391, 226, 252 },
			["LargeInactiveButtonRight"] = { 288, 301, 179, 205 },
			["LoadingBarLeft"] = { 3, 23, 109, 148 },
			["LoadingBarMiddle"] = { 28, 48, 109, 148 },
			["LoadingBarRight"] = { 53, 73, 109, 148 },
			["MediumActiveButtonLeft"] = { 149, 162, 165, 185 },
			["MediumActiveButtonMiddle"] = { 465, 480, 276, 296 },
			["MediumActiveButtonRight"] = { 167, 180, 165, 185 },
			["MediumClickedButtonLeft"] = { 185, 198, 165, 185 },
			["MediumClickedButtonMiddle"] = { 439, 454, 301, 321 },
			["MediumClickedButtonRight"] = { 203, 216, 180, 200 },
			["MediumHoverButtonLeft"] = { 149, 162, 190, 210 },
			["MediumHoverButtonMiddle"] = { 459, 474, 301, 321 },
			["MediumHoverButtonRight"] = { 118, 131, 194, 214 },
			["MediumInactiveButtonLeft Copy"] = { 87, 100, 195, 215 },
			["MediumInactiveButtonLeft"] = { 167, 180, 190, 210 },
			["MediumInactiveButtonMiddle Copy"] = { 479, 494, 310, 330 },
			["MediumInactiveButtonMiddle"] = { 439, 454, 326, 346 },
			["MediumInactiveButtonRight Copy"] = { 185, 198, 190, 210 },
			["MediumInactiveButtonRight"] = { 221, 234, 180, 200 },
			["PopupBottomEdge"] = { 485, 497, 276, 288 },
			["PopupBottomLeftCorner"] = { 485, 497, 293, 305 },
			["PopupBottomRightCorner"] = { 497, 509, 356, 368 },
			["PopupLeftEdge"] = { 497, 509, 373, 385 },
			["PopupRightEdge"] = { 275, 287, 210, 222 },
			["PopupTopEdge"] = { 292, 304, 210, 222 },
			["PopupTopLeftCorner"] = { 221, 233, 226, 238 },
			["PopupTopRightCorner"] = { 302, 342, 119, 141 },
			["PromoTextureLeft"] = { 365, 444, 24, 104 },
			["PromoTextureMiddle"] = { 3, 82, 155, 235 },
			["PromoTextureRight"] = { 218, 297, 40, 120 },
			["RankFrame"] = { 449, 494, 70, 84 },
			["RegularActiveDropdownLeft"] = { 306, 319, 179, 205 },
			["RegularActiveDropdownMiddle"] = { 396, 422, 226, 252 },
			["RegularActiveDropdownRight"] = { 324, 337, 196, 222 },
			["RegularInactiveDropdownLeft"] = { 420, 433, 330, 357 },
			["RegularInactiveDropdownMiddle"] = { 87, 113, 163, 190 },
			["RegularInactiveDropdownRight"] = { 479, 492, 356, 383 },
			["SearchLeft"] = { 239, 252, 180, 200 },
			["SearchMiddle"] = { 257, 270, 180, 200 },
			["SearchRight"] = { 203, 216, 205, 225 },
			["SearchTypeIndicator"] = { 87, 146, 146, 158 },
			["SettingsNavShadow"] = { 354, 360, 40, 112 },
			["SmallActiveButtonLeft"] = { 136, 149, 215, 231 },
			["SmallActiveButtonMiddle"] = { 459, 474, 326, 342 },
			["SmallActiveButtonRight"] = { 105, 118, 219, 235 },
			["SmallApplicationCloseFrameBackground"] = { 302, 345, 86, 114 },
			["SmallApplicationInnerFrameBottomEdge"] = { 216, 288, 138, 144 },
			["SmallApplicationInnerFrameBottomLeftCorner"] = { 365, 391, 195, 221 },
			["SmallApplicationInnerFrameBottomRightCorner"] = { 396, 422, 195, 221 },
			["SmallApplicationInnerFrameLeftEdge"] = { 427, 434, 253, 325 },
			["SmallApplicationInnerFrameRightEdge"] = { 502, 509, 245, 317 },
			["SmallApplicationInnerFrameTopEdge"] = { 216, 288, 125, 133 },
			["SmallApplicationInnerFrameTopLeftCorner"] = { 440, 466, 245, 271 },
			["SmallApplicationInnerFrameTopRightCorner"] = { 471, 497, 245, 271 },
			["SmallApplicationOuterFrameBottomEdge"] = { 365, 437, 180, 190 },
			["SmallApplicationOuterFrameBottomLeftCorner"] = { 427, 437, 195, 205 },
			["SmallApplicationOuterFrameBottomRightCorner"] = { 427, 437, 225, 235 },
			["SmallApplicationOuterFrameLeftEdge"] = { 350, 360, 117, 189 },
			["SmallApplicationOuterFrameRightEdge"] = { 350, 360, 194, 266 },
			["SmallApplicationOuterFrameTopEdge"] = { 3, 75, 40, 94 },
			["SmallApplicationOuterFrameTopLeftCorner"] = { 442, 506, 155, 209 },
			["SmallApplicationOuterFrameTopRightCorner"] = { 365, 389, 257, 311 },
			["SmallClickedButtonLeft"] = { 87, 100, 220, 236 },
			["SmallClickedButtonMiddle"] = { 479, 494, 335, 351 },
			["SmallClickedButtonRight"] = { 154, 167, 215, 231 },
			["SmallHoverButtonLeft"] = { 172, 185, 215, 231 },
			["SmallHoverButtonMiddle"] = { 459, 474, 347, 363 },
			["SmallHoverButtonRight"] = { 221, 234, 205, 221 },
			["SmallInactiveButtonLeft"] = { 239, 252, 205, 221 },
			["SmallInactiveButtonMiddle"] = { 438, 453, 351, 367 },
			["SmallInactiveButtonRight"] = { 257, 270, 205, 221 },
			["TSMLogo"] = { 449, 509, 90, 150 },
			["ToggleDisabledOff"] = { 449, 496, 24, 42 },
			["ToggleDisabledOn"] = { 449, 496, 47, 65 },
			["ToggleOff"] = { 302, 349, 40, 58 },
			["ToggleOn"] = { 302, 349, 63, 81 },
		},
	},
	iconPack = {
		path = "Interface\\Addons\\TradeSkillMaster\\Media\\IconPack.blp",
		scale = 2,
		width = 512,
		height = 1024,
		coord = {
			["10x10/Add/Circle"] = { 310, 330, 426, 446 },
			["10x10/Add/Default"] = { 310, 330, 448, 468 },
			["10x10/Arrow/Down"] = { 310, 330, 470, 490 },
			["10x10/Arrow/Up"] = { 156, 176, 446, 466 },
			["10x10/Auctions"] = { 338, 358, 544, 564 },
			["10x10/Bid"] = { 338, 358, 566, 586 },
			["10x10/Boxes"] = { 490, 510, 570, 590 },
			["10x10/Buyout"] = { 490, 510, 592, 612 },
			["10x10/Carot/Collapsed"] = { 490, 510, 614, 634 },
			["10x10/Carot/Expanded"] = { 338, 358, 588, 608 },
			["10x10/Checkmark/Circle"] = { 490, 510, 636, 656 },
			["10x10/Checkmark/Default"] = { 208, 228, 546, 566 },
			["10x10/Chevron/Collapsed"] = { 230, 250, 566, 586 },
			["10x10/Chevron/Expanded"] = { 208, 228, 568, 588 },
			["10x10/Chevron/Inactive"] = { 252, 272, 568, 588 },
			["10x10/Clock"] = { 230, 250, 588, 608 },
			["10x10/Close/Circle"] = { 274, 294, 574, 594 },
			["10x10/Close/Default"] = { 252, 272, 590, 610 },
			["10x10/Coins"] = { 274, 294, 596, 616 },
			["10x10/Configure"] = { 296, 316, 596, 616 },
			["10x10/Crafting"] = { 318, 338, 610, 630 },
			["10x10/Dashboard"] = { 340, 360, 630, 650 },
			["10x10/Delete"] = { 362, 382, 630, 650 },
			["10x10/DragHandle"] = { 384, 404, 630, 650 },
			["10x10/Duplicate"] = { 406, 426, 630, 650 },
			["10x10/Edit"] = { 428, 448, 648, 668 },
			["10x10/Expire"] = { 450, 470, 648, 668 },
			["10x10/Filter"] = { 472, 492, 658, 678 },
			["10x10/Groups"] = { 0, 20, 550, 570 },
			["10x10/Help"] = { 22, 42, 550, 570 },
			["10x10/Ignore"] = { 44, 64, 550, 570 },
			["10x10/Import"] = { 66, 86, 550, 570 },
			["10x10/Inventory"] = { 88, 108, 550, 570 },
			["10x10/Link"] = { 110, 130, 550, 570 },
			["10x10/More"] = { 132, 152, 550, 570 },
			["10x10/New"] = { 0, 20, 572, 592 },
			["10x10/Operations"] = { 22, 42, 572, 592 },
			["10x10/Pause"] = { 44, 64, 572, 592 },
			["10x10/Post"] = { 66, 86, 572, 592 },
			["10x10/Posting"] = { 88, 108, 572, 592 },
			["10x10/Queue"] = { 110, 130, 572, 592 },
			["10x10/Reset"] = { 132, 152, 572, 592 },
			["10x10/Resize"] = { 154, 174, 572, 592 },
			["10x10/Running"] = { 176, 196, 572, 592 },
			["10x10/SaleRate"] = { 198, 218, 590, 610 },
			["10x10/Search"] = { 220, 240, 610, 630 },
			["10x10/Settings"] = { 242, 262, 612, 632 },
			["10x10/Shopping"] = { 264, 284, 618, 638 },
			["10x10/SideArrow"] = { 286, 306, 618, 638 },
			["10x10/SkillUp"] = { 308, 328, 632, 652 },
			["10x10/SkillUp/1"] = { 330, 350, 652, 672 },
			["10x10/SkillUp/10"] = { 352, 372, 652, 672 },
			["10x10/SkillUp/2"] = { 374, 394, 652, 672 },
			["10x10/SkillUp/3"] = { 396, 416, 652, 672 },
			["10x10/SkillUp/4"] = { 418, 438, 670, 690 },
			["10x10/SkillUp/5"] = { 440, 460, 670, 690 },
			["10x10/SkillUp/6"] = { 462, 482, 680, 700 },
			["10x10/SkillUp/7"] = { 484, 504, 680, 700 },
			["10x10/SkillUp/8"] = { 0, 20, 594, 614 },
			["10x10/SkillUp/9"] = { 22, 42, 594, 614 },
			["10x10/Skip"] = { 44, 64, 594, 614 },
			["10x10/Sniper"] = { 66, 86, 594, 614 },
			["10x10/Star/Filled"] = { 88, 108, 594, 614 },
			["10x10/Star/Unfilled"] = { 110, 130, 594, 614 },
			["10x10/Stop"] = { 132, 152, 594, 614 },
			["10x10/Subtract/Circle"] = { 154, 174, 594, 614 },
			["10x10/Subtract/Default"] = { 176, 196, 594, 614 },
			["12x12/Add/Circle"] = { 452, 476, 200, 224 },
			["12x12/Add/Default"] = { 452, 476, 226, 250 },
			["12x12/Arrow/Down"] = { 422, 446, 466, 490 },
			["12x12/Arrow/Up"] = { 452, 476, 492, 516 },
			["12x12/Auctions"] = { 452, 476, 518, 542 },
			["12x12/Bid"] = { 452, 476, 544, 568 },
			["12x12/Boxes"] = { 360, 384, 526, 550 },
			["12x12/Buyout"] = { 386, 410, 526, 550 },
			["12x12/Carot/Collapsed"] = { 0, 24, 446, 470 },
			["12x12/Carot/Expanded"] = { 26, 50, 446, 470 },
			["12x12/Checkmark/Circle"] = { 52, 76, 446, 470 },
			["12x12/Checkmark/Default"] = { 78, 102, 446, 470 },
			["12x12/Chevron/Collapsed"] = { 104, 128, 446, 470 },
			["12x12/Chevron/Expanded"] = { 130, 154, 446, 470 },
			["12x12/Chevron/Inactive"] = { 156, 180, 468, 492 },
			["12x12/Clock"] = { 182, 206, 468, 492 },
			["12x12/Close/Circle"] = { 208, 232, 468, 492 },
			["12x12/Close/Default"] = { 234, 258, 488, 512 },
			["12x12/Coins"] = { 0, 24, 472, 496 },
			["12x12/Configure"] = { 26, 50, 472, 496 },
			["12x12/Crafting"] = { 52, 76, 472, 496 },
			["12x12/Dashboard"] = { 78, 102, 472, 496 },
			["12x12/Delete"] = { 104, 128, 472, 496 },
			["12x12/DragHandle"] = { 130, 154, 472, 496 },
			["12x12/Duplicate"] = { 156, 180, 494, 518 },
			["12x12/Edit"] = { 182, 206, 494, 518 },
			["12x12/Expire"] = { 208, 232, 494, 518 },
			["12x12/Filter"] = { 234, 258, 514, 538 },
			["12x12/Groups"] = { 260, 284, 516, 540 },
			["12x12/Help"] = { 286, 310, 522, 546 },
			["12x12/Ignore"] = { 312, 336, 544, 568 },
			["12x12/Import"] = { 360, 384, 552, 576 },
			["12x12/Inventory"] = { 386, 410, 552, 576 },
			["12x12/Link"] = { 412, 436, 552, 576 },
			["12x12/More"] = { 438, 462, 570, 594 },
			["12x12/New"] = { 464, 488, 570, 594 },
			["12x12/Operations"] = { 360, 384, 578, 602 },
			["12x12/Pause"] = { 386, 410, 578, 602 },
			["12x12/Post"] = { 412, 436, 578, 602 },
			["12x12/Posting"] = { 438, 462, 596, 620 },
			["12x12/Queue"] = { 464, 488, 596, 620 },
			["12x12/Reset"] = { 0, 24, 498, 522 },
			["12x12/Resize"] = { 26, 50, 498, 522 },
			["12x12/Running"] = { 52, 76, 498, 522 },
			["12x12/SaleRate"] = { 78, 102, 498, 522 },
			["12x12/Search"] = { 104, 128, 498, 522 },
			["12x12/Settings"] = { 130, 154, 498, 522 },
			["12x12/Shopping"] = { 156, 180, 520, 544 },
			["12x12/SideArrow"] = { 182, 206, 520, 544 },
			["12x12/SkillUp"] = { 208, 232, 520, 544 },
			["12x12/SkillUp/1"] = { 234, 258, 540, 564 },
			["12x12/SkillUp/10"] = { 260, 284, 542, 566 },
			["12x12/SkillUp/2"] = { 286, 310, 548, 572 },
			["12x12/SkillUp/3"] = { 312, 336, 570, 594 },
			["12x12/SkillUp/4"] = { 360, 384, 604, 628 },
			["12x12/SkillUp/5"] = { 386, 410, 604, 628 },
			["12x12/SkillUp/6"] = { 412, 436, 604, 628 },
			["12x12/SkillUp/7"] = { 438, 462, 622, 646 },
			["12x12/SkillUp/8"] = { 464, 488, 622, 646 },
			["12x12/SkillUp/9"] = { 0, 24, 524, 548 },
			["12x12/Skip"] = { 26, 50, 524, 548 },
			["12x12/Sniper"] = { 52, 76, 524, 548 },
			["12x12/Star/Filled"] = { 78, 102, 524, 548 },
			["12x12/Star/Unfilled"] = { 104, 128, 524, 548 },
			["12x12/Stop"] = { 130, 154, 524, 548 },
			["12x12/Subtract/Circle"] = { 156, 180, 546, 570 },
			["12x12/Subtract/Default"] = { 182, 206, 546, 570 },
			["14x14/Add/Circle"] = { 484, 512, 0, 28 },
			["14x14/Add/Default"] = { 484, 512, 30, 58 },
			["14x14/Arrow/Down"] = { 350, 378, 38, 66 },
			["14x14/Arrow/Up"] = { 350, 378, 68, 96 },
			["14x14/Auctions"] = { 480, 508, 60, 88 },
			["14x14/Bid"] = { 480, 508, 90, 118 },
			["14x14/Boxes"] = { 350, 378, 98, 126 },
			["14x14/Buyout"] = { 350, 378, 128, 156 },
			["14x14/Carot/Collapsed"] = { 480, 508, 120, 148 },
			["14x14/Carot/Expanded"] = { 480, 508, 150, 178 },
			["14x14/Checkmark/Circle"] = { 480, 508, 180, 208 },
			["14x14/Checkmark/Default"] = { 350, 378, 158, 186 },
			["14x14/Chevron/Collapsed"] = { 478, 506, 210, 238 },
			["14x14/Chevron/Expanded"] = { 478, 506, 240, 268 },
			["14x14/Chevron/Inactive"] = { 266, 294, 188, 216 },
			["14x14/Clock"] = { 266, 294, 218, 246 },
			["14x14/Close/Circle"] = { 448, 476, 252, 280 },
			["14x14/Close/Default"] = { 478, 506, 270, 298 },
			["14x14/Coins"] = { 448, 476, 282, 310 },
			["14x14/Configure"] = { 478, 506, 300, 328 },
			["14x14/Crafting"] = { 448, 476, 312, 340 },
			["14x14/Dashboard"] = { 478, 506, 330, 358 },
			["14x14/Delete"] = { 266, 294, 248, 276 },
			["14x14/DragHandle"] = { 448, 476, 342, 370 },
			["14x14/Duplicate"] = { 478, 506, 360, 388 },
			["14x14/Edit"] = { 266, 294, 278, 306 },
			["14x14/Expire"] = { 266, 294, 308, 336 },
			["14x14/Filter"] = { 266, 294, 338, 366 },
			["14x14/Groups"] = { 448, 476, 372, 400 },
			["14x14/Help"] = { 478, 506, 390, 418 },
			["14x14/Ignore"] = { 448, 476, 402, 430 },
			["14x14/Import"] = { 478, 506, 420, 448 },
			["14x14/Inventory"] = { 266, 294, 368, 396 },
			["14x14/Link"] = { 448, 476, 432, 460 },
			["14x14/More"] = { 478, 506, 450, 478 },
			["14x14/New"] = { 448, 476, 462, 490 },
			["14x14/Operations"] = { 478, 506, 480, 508 },
			["14x14/Pause"] = { 190, 218, 378, 406 },
			["14x14/Post"] = { 220, 248, 378, 406 },
			["14x14/Posting"] = { 250, 278, 398, 426 },
			["14x14/Queue"] = { 280, 308, 426, 454 },
			["14x14/Reset"] = { 332, 360, 454, 482 },
			["14x14/Resize"] = { 190, 218, 408, 436 },
			["14x14/Running"] = { 220, 248, 408, 436 },
			["14x14/SaleRate"] = { 250, 278, 428, 456 },
			["14x14/Search"] = { 280, 308, 456, 484 },
			["14x14/Settings"] = { 362, 390, 466, 494 },
			["14x14/Shopping"] = { 332, 360, 484, 512 },
			["14x14/SideArrow"] = { 392, 420, 466, 494 },
			["14x14/SkillUp"] = { 422, 450, 492, 520 },
			["14x14/SkillUp/1"] = { 478, 506, 510, 538 },
			["14x14/SkillUp/10"] = { 478, 506, 540, 568 },
			["14x14/SkillUp/2"] = { 362, 390, 496, 524 },
			["14x14/SkillUp/3"] = { 392, 420, 496, 524 },
			["14x14/SkillUp/4"] = { 422, 450, 522, 550 },
			["14x14/SkillUp/5"] = { 0, 28, 416, 444 },
			["14x14/SkillUp/6"] = { 30, 58, 416, 444 },
			["14x14/SkillUp/7"] = { 60, 88, 416, 444 },
			["14x14/SkillUp/8"] = { 90, 118, 416, 444 },
			["14x14/SkillUp/9"] = { 120, 148, 416, 444 },
			["14x14/Skip"] = { 150, 178, 416, 444 },
			["14x14/Sniper"] = { 180, 208, 438, 466 },
			["14x14/Star/Filled"] = { 210, 238, 438, 466 },
			["14x14/Star/Unfilled"] = { 240, 268, 458, 486 },
			["14x14/Stop"] = { 270, 298, 486, 514 },
			["14x14/Subtract/Circle"] = { 300, 328, 492, 520 },
			["14x14/Subtract/Default"] = { 330, 358, 514, 542 },
			["18x18/Add/Circle"] = { 300, 336, 160, 196 },
			["18x18/Add/Default"] = { 338, 374, 188, 224 },
			["18x18/Arrow/Down"] = { 376, 412, 200, 236 },
			["18x18/Arrow/Up"] = { 414, 450, 200, 236 },
			["18x18/Auctions"] = { 0, 36, 188, 224 },
			["18x18/Bid"] = { 38, 74, 188, 224 },
			["18x18/Boxes"] = { 76, 112, 188, 224 },
			["18x18/Buyout"] = { 114, 150, 188, 224 },
			["18x18/Carot/Collapsed"] = { 152, 188, 188, 224 },
			["18x18/Carot/Expanded"] = { 190, 226, 188, 224 },
			["18x18/Checkmark/Circle"] = { 228, 264, 188, 224 },
			["18x18/Checkmark/Default"] = { 296, 332, 198, 234 },
			["18x18/Chevron/Collapsed"] = { 334, 370, 226, 262 },
			["18x18/Chevron/Expanded"] = { 296, 332, 236, 272 },
			["18x18/Chevron/Inactive"] = { 372, 408, 238, 274 },
			["18x18/Clock"] = { 334, 370, 264, 300 },
			["18x18/Close/Circle"] = { 410, 446, 238, 274 },
			["18x18/Close/Default"] = { 372, 408, 276, 312 },
			["18x18/Coins"] = { 410, 446, 276, 312 },
			["18x18/Configure"] = { 0, 36, 226, 262 },
			["18x18/Crafting"] = { 38, 74, 226, 262 },
			["18x18/Dashboard"] = { 76, 112, 226, 262 },
			["18x18/Delete"] = { 114, 150, 226, 262 },
			["18x18/DragHandle"] = { 152, 188, 226, 262 },
			["18x18/Duplicate"] = { 190, 226, 226, 262 },
			["18x18/Edit"] = { 228, 264, 226, 262 },
			["18x18/Expire"] = { 296, 332, 274, 310 },
			["18x18/Filter"] = { 334, 370, 302, 338 },
			["18x18/Groups"] = { 372, 408, 314, 350 },
			["18x18/Help"] = { 410, 446, 314, 350 },
			["18x18/Ignore"] = { 0, 36, 264, 300 },
			["18x18/Import"] = { 38, 74, 264, 300 },
			["18x18/Inventory"] = { 76, 112, 264, 300 },
			["18x18/Link"] = { 114, 150, 264, 300 },
			["18x18/More"] = { 152, 188, 264, 300 },
			["18x18/New"] = { 190, 226, 264, 300 },
			["18x18/Operations"] = { 228, 264, 264, 300 },
			["18x18/Pause"] = { 0, 36, 302, 338 },
			["18x18/Post"] = { 38, 74, 302, 338 },
			["18x18/Posting"] = { 76, 112, 302, 338 },
			["18x18/Queue"] = { 114, 150, 302, 338 },
			["18x18/Reset"] = { 152, 188, 302, 338 },
			["18x18/Resize"] = { 190, 226, 302, 338 },
			["18x18/Running"] = { 228, 264, 302, 338 },
			["18x18/SaleRate"] = { 296, 332, 312, 348 },
			["18x18/Search"] = { 334, 370, 340, 376 },
			["18x18/Settings"] = { 296, 332, 350, 386 },
			["18x18/Shopping"] = { 372, 408, 352, 388 },
			["18x18/SideArrow"] = { 334, 370, 378, 414 },
			["18x18/SkillUp"] = { 410, 446, 352, 388 },
			["18x18/SkillUp/1"] = { 372, 408, 390, 426 },
			["18x18/SkillUp/10"] = { 410, 446, 390, 426 },
			["18x18/SkillUp/2"] = { 0, 36, 340, 376 },
			["18x18/SkillUp/3"] = { 38, 74, 340, 376 },
			["18x18/SkillUp/4"] = { 76, 112, 340, 376 },
			["18x18/SkillUp/5"] = { 114, 150, 340, 376 },
			["18x18/SkillUp/6"] = { 152, 188, 340, 376 },
			["18x18/SkillUp/7"] = { 190, 226, 340, 376 },
			["18x18/SkillUp/8"] = { 228, 264, 340, 376 },
			["18x18/SkillUp/9"] = { 296, 332, 388, 424 },
			["18x18/Skip"] = { 334, 370, 416, 452 },
			["18x18/Sniper"] = { 372, 408, 428, 464 },
			["18x18/Star/Filled"] = { 410, 446, 428, 464 },
			["18x18/Star/Unfilled"] = { 0, 36, 378, 414 },
			["18x18/Stop"] = { 38, 74, 378, 414 },
			["18x18/Subtract/Circle"] = { 76, 112, 378, 414 },
			["18x18/Subtract/Default"] = { 114, 150, 378, 414 },
			["24x24/Auctions"] = { 384, 432, 0, 48 },
			["24x24/Bid"] = { 434, 482, 0, 48 },
			["24x24/Boxes"] = { 0, 48, 38, 86 },
			["24x24/Buyout"] = { 50, 98, 38, 86 },
			["24x24/Close/Circle"] = { 100, 148, 38, 86 },
			["24x24/Close/Default"] = { 150, 198, 38, 86 },
			["24x24/Coins"] = { 200, 248, 38, 86 },
			["24x24/Crafting"] = { 250, 298, 38, 86 },
			["24x24/Dashboard"] = { 300, 348, 38, 86 },
			["24x24/Groups"] = { 380, 428, 50, 98 },
			["24x24/Import"] = { 430, 478, 50, 98 },
			["24x24/Inventory"] = { 0, 48, 88, 136 },
			["24x24/Mail"] = { 50, 98, 88, 136 },
			["24x24/Operations"] = { 100, 148, 88, 136 },
			["24x24/Other"] = { 150, 198, 88, 136 },
			["24x24/Pause"] = { 200, 248, 88, 136 },
			["24x24/Post"] = { 250, 298, 88, 136 },
			["24x24/Posting"] = { 300, 348, 88, 136 },
			["24x24/Send Mail"] = { 380, 428, 100, 148 },
			["24x24/Settings"] = { 430, 478, 100, 148 },
			["24x24/Shopping"] = { 380, 428, 150, 198 },
			["24x24/Skip"] = { 430, 478, 150, 198 },
			["24x24/Sniper"] = { 0, 48, 138, 186 },
			["24x24/Stop"] = { 50, 98, 138, 186 },
			["Misc/BackArrow"] = { 300, 348, 138, 158 },
			["Misc/Checkbox/Checked"] = { 100, 148, 138, 186 },
			["Misc/Checkbox/Checked/Disabled"] = { 150, 198, 138, 186 },
			["Misc/Checkbox/Unchecked"] = { 200, 248, 138, 186 },
			["Misc/Checkbox/Unchecked/Disabled"] = { 250, 298, 138, 186 },
			["Misc/Knob"] = { 152, 188, 378, 414 },
			["Misc/Toggle/Off"] = { 0, 94, 0, 36 },
			["Misc/Toggle/Off/Disabled"] = { 96, 190, 0, 36 },
			["Misc/Toggle/On"] = { 192, 286, 0, 36 },
			["Misc/Toggle/On/Disabled"] = { 288, 382, 0, 36 },
		},
	},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function TexturePacks.IsValid(key)
	-- if not key then return false end
	local fileInfo, coord = private.GetFileInfo(key)
	return fileInfo and coord and true or false
end

function TexturePacks.GetTexturePath(key)
	local fileInfo = private.GetFileInfo(key)
	assert(fileInfo)
	return fileInfo.path
end

function TexturePacks.GetTexCoord(key)
	local fileInfo, coord = private.GetFileInfo(key)
	assert(fileInfo and coord)
	local minX, maxX, minY, maxY = unpack(coord)
	minX = minX / fileInfo.width
	maxX = maxX / fileInfo.width
	minY = minY / fileInfo.height
	maxY = maxY / fileInfo.height
	return minX, maxX, minY, maxY
end

function TexturePacks.GetTexCoordRotated(key, angle)
	return private.RotateTexCoords(angle, TexturePacks.GetTexCoord(key))
end

function TexturePacks.GetSize(key)
	local fileInfo, coord = private.GetFileInfo(key)
	assert(fileInfo and coord)
	local minX, maxX, minY, maxY = unpack(coord)
	local width = (maxX - minX) / fileInfo.scale
	local height = (maxY - minY) / fileInfo.scale
	return width, height
end

function TexturePacks.GetWidth(key)
	local width = TexturePacks.GetSize(key)
	return width
end

function TexturePacks.GetHeight(key)
	local _, height = TexturePacks.GetSize(key)
	return height
end

function TexturePacks.SetTexture(texture, key)
	texture:SetTexture(TexturePacks.GetTexturePath(key))
	texture:SetTexCoord(TexturePacks.GetTexCoord(key))
end

function TexturePacks.SetTextureRotated(texture, key, angle)
	texture:SetTexture(TexturePacks.GetTexturePath(key))
	texture:SetTexCoord(TexturePacks.GetTexCoordRotated(key, angle))
end

function TexturePacks.SetSize(texture, key)
	local width, height = TexturePacks.GetSize(key)
	texture:SetWidth(width)
	texture:SetHeight(height)
end

function TexturePacks.SetWidth(texture, key)
	texture:SetWidth(TexturePacks.GetWidth(key))
end

function TexturePacks.SetHeight(texture, key)
	texture:SetHeight(TexturePacks.GetHeight(key))
end

function TexturePacks.SetTextureAndWidth(texture, key)
	TexturePacks.SetTexture(texture, key)
	TexturePacks.SetWidth(texture, key)
end

function TexturePacks.SetTextureAndHeight(texture, key)
	TexturePacks.SetTexture(texture, key)
	TexturePacks.SetHeight(texture, key)
end

function TexturePacks.SetTextureAndSize(texture, key)
	TexturePacks.SetTexture(texture, key)
	TexturePacks.SetSize(texture, key)
end

function TexturePacks.SetTextureAndSizeRotated(texture, key, angle)
	TexturePacks.SetTextureRotated(texture, key, angle)
	TexturePacks.SetSize(texture, key)
end

function TexturePacks.GetTextureLink(key)
	local path = TexturePacks.GetTexturePath(key)
	local width, height = TexturePacks.GetSize(key)
	local fileInfo, coord = private.GetFileInfo(key)
	assert(fileInfo and coord)
	local minX, maxX, minY, maxY = unpack(coord)
	return "|T"..strjoin(":", path, width, height, 0, 0, fileInfo.width, fileInfo.height, minX, maxX, minY, maxY).."|t"
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetFileInfo(key)
	local file, entry = strmatch(key, "^([^%.]+)%.(.+)$")
	local fileInfo = file and TEXTURE_FILE_INFO[file]
	return fileInfo, fileInfo and fileInfo.coord[entry]
end

function private.RotateTexCoords(angle, minX, maxX, minY, maxY)
	local centerX = (minX + maxX) / 2
	local centerY = (minY + maxY) / 2
	local ULx, ULy = private.RotateCoordPair(minX, minY, centerX, centerY, angle)
	local LLx, LLy = private.RotateCoordPair(minX, maxY, centerX, centerY, angle)
	local URx, URy = private.RotateCoordPair(maxX, minY, centerX, centerY, angle)
	local LRx, LRy = private.RotateCoordPair(maxX, maxY, centerX, centerY, angle)
	return ULx, ULy, LLx, LLy, URx, URy, LRx, LRy
end

function private.RotateCoordPair(x, y, originX, originY, angle)
	local cosResult = cos(angle)
	local sinResult = sin(angle)
	local resultX = originX + (x - originX) * cosResult - (y - originY) * sinResult
	local resultY = originY + (y - originY) * cosResult + (x - originX) * sinResult
	return resultX, resultY
end
