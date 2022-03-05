return {
PlaceObj('ModItemBuildingTemplate', {
	'Group', "Power",
	'Id', "HydroPlant",
	'template_class', "HydroPlant",
	'pin_rollover_context', "electricity",
	'construction_cost_Concrete', 25000,
	'construction_cost_MachineParts', 5000,
	'build_points', 5000,
	'is_tall', true,
	'dome_forbidden', true,
	'maintenance_resource_type', "MachineParts",
	'maintenance_resource_amount', 2000,
	'display_name', T(764971484235, --[[ModItemBuildingTemplate HydroPlant display_name]] "Hydroelectric Plant"),
	'display_name_pl', T(912241179752, --[[ModItemBuildingTemplate HydroPlant display_name_pl]] "Hydroelectric Plants"),
	'description', T(118154712574, --[[ModItemBuildingTemplate HydroPlant description]] "Produces electricity from water."),
	'build_category', "Power",
	'display_icon', "UI/Icons/Buildings/subsurface_heater.png",
	'entity', "SubsurfaceHeater",
	'show_range_all', true,
	'label1', "OutsideBuildings",
	'label2', "OutsideBuildingsTargets",
	'palette_color1', "outside_accent_factory",
	'palette_color2', "outside_base",
	'palette_color3', "life_accent_1",
	'palette_color4', "outside_metal",
	'clear_soil_underneath', true,
	'sponsor_name1', "Turkey",
	'sponsor_status1', "Required",
	'sponsor_name2', "Turkey",
	'sponsor_status2', "required",
	'sponsor_name3', "Turkey",
	'sponsor_status3', "required",
	'electricity_production', 35000,
	'air_consumption', 0,
	'water_consumption', 2000,
}),
PlaceObj('ModItemCode', {
	'name', "Icons",
	'FileName', "Code/Icons.lua",
}),
PlaceObj('ModItemCode', {
	'FileName', "Code/Script.lua",
}),
PlaceObj('ModItemDecalEntity', {
	'name', "TurkeyDecal",
	'entity_name', "TurkeyDecal",
	'filename', "Assets/logo-turkey.png",
}),
PlaceObj('ModItemMissionLogoPreset', {
	SortKey = 100000,
	display_name = T(508558615279, --[[ModItemMissionLogoPreset TurkeyDecal display_name]] "Turkey"),
	entity_name = "TurkeyDecal",
	filter = function (self) return true end,
	group = "Default",
	id = "TurkeyDecal",
	image = "UI/TurkeyDecalUI.tga",
}),
PlaceObj('ModItemMissionSponsorPreset', {
	Drone = 6,
	DroneHub = 1,
	Electronics = 15,
	FuelFactory = 1,
	MachineParts = 15,
	MoistureVaporator = 1,
	OrbitalProbe = 1,
	Polymers = 15,
	RCTransport = 1,
	cargo = 50000,
	challenge_mod = 170,
	default_logo = "TurkeyDecal",
	default_skin = "Facet",
	difficulty = T(504605359575, --[[ModItemMissionSponsorPreset Default Turkey difficulty]] "Hard"),
	display_name = T(127405538777, --[[ModItemMissionSponsorPreset Default Turkey display_name]] "Turkey"),
	effect = T(634702533306, --[[ModItemMissionSponsorPreset Default Turkey effect]] "Research per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\n\n- <color em>Hydroelectric Plant</color> A unique building that uses water to generate electricity \n- Bonus Tech: <color em>Dry Farming</color> (reduces the water consumption of all crops by 50%)\n- <color em>Water Extractors</color> operate at increased efficiency\n- Out-Dome buildings accumulate dust at a slower rate \n- All concrete costs are increased by 25% <color em>(drawback)</color>"),
	funding = 3500,
	game_apply = function (self, city)
local sponsor = GetMissionSponsor()
    if sponsor.id ~= "Turkey" then
        return
    end
    g_Consts.BuildingDailyDustAccumulation = 2500
end,
	goal_1_param_1 = "500",
	goal_1_param_2 = "Water",
	goal_2_param_1 = "250000",
	goal_3_param_1 = "20",
	goal_3_param_2 = "botanist",
	goal_4_param_1 = "4",
	goal_4_param_2 = "HydroPlant",
	goal_5_param_1 = "5000",
	goal_5_param_2 = "Food",
	goal_image_1 = "UI/Messages/Goals/mission_goal_06.png",
	goal_image_2 = "UI/Messages/Goals/mission_goal_10.png",
	goal_image_3 = "UI/Messages/Goals/mission_goal_09.png",
	goal_image_4 = "UI/Messages/Goals/mission_goal_08.png",
	goal_image_5 = "UI/Messages/Goals/mission_goal_05.png",
	goal_pin_image_1 = "UI/Icons/Buildings/moisture_vaporator.png",
	goal_pin_image_2 = "UI/Icons/Colonists/Malebotanist.png",
	goal_pin_image_3 = "UI/Icons/Buildings/funding.png",
	goal_pin_image_4 = "UI/Icons/Buildings/research.png",
	goal_pin_image_5 = "UI/Icons/Buildings/rocket.png",
	group = "Default",
	id = "Turkey",
	initial_rockets = 1,
	name = "Turkey",
	pod_class = "SupplyPod",
	precious_metals_export_price = 22,
	reward_effect_1 = PlaceObj('RewardPrefab', {
		'Amount', 1,
		'Prefab', "MoistureVaporator",
	}),
	reward_effect_2 = PlaceObj('RewardApplicants', {
		'Amount', 10,
		'Trait', "Workaholic",
		'Specialization', "botanist",
	}),
	reward_effect_3 = PlaceObj('RewardFunding', {
		'Amount', 1500000000,
	}),
	reward_effect_4 = PlaceObj('RewardResearchPoints', {
		'Amount', 5000,
	}),
	reward_effect_5 = PlaceObj('RewardNewRocket', nil),
	sponsor_goal_1 = "ProduceUndergroundResource",
	sponsor_goal_2 = "GeneratePower",
	sponsor_goal_3 = "MartianbornSpecialists",
	sponsor_goal_4 = "MultipleBuildings",
	sponsor_goal_5 = "ProduceResource",
	sponsor_nation_name1 = "Turkish",
	sponsor_nation_percent1 = 100,
	tech1 = "DryFarming",
	PlaceObj('Effect_ModifyLabel', {
		Label = "Consts",
		Percent = 25,
		Prop = "Concrete_cost_modifier",
	}),
	PlaceObj('Effect_ModifyLabel', {
		Label = "WaterExtractor",
		Percent = 20,
		Prop = "water_production",
	}),
}),
}
