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
	'entity', "WaterExtractor",
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
}),
PlaceObj('ModItemCode', {
	'FileName', "Code/Script.lua",
}),
PlaceObj('ModItemDecalEntity', nil),
PlaceObj('ModItemMissionLogoPreset', {
	SortKey = 100000,
	display_name = T(508558615279, --[[ModItemMissionLogoPreset TurkeyLogo display_name]] "Turkey"),
	entity_name = "TurkeyDecal",
	filter = function (self) return true end,
	group = "Default",
	id = "TurkeyLogo",
	image = "Assets/logo-turkey.png",
}),
PlaceObj('ModItemMissionSponsorPreset', {
	cargo = 30000,
	challenge_mod = 80,
	default_logo = "TurkeyLogo",
	default_skin = "Facet",
	difficulty = T(504605359575, --[[ModItemMissionSponsorPreset Default Turkey difficulty]] "Hard"),
	display_name = T(127405538777, --[[ModItemMissionSponsorPreset Default Turkey display_name]] "Turkey"),
	effect = T(634702533306, --[[ModItemMissionSponsorPreset Default Turkey effect]] "Research per Sol: \nRare Metals price: $<ExportPricePreciousMetals> M\n\n- <color em>Hydroelectric Plant</color> A unique building that uses water to generate electricity \n- Bonus Tech: <color em>Dry Farming</color> (reduces the water consumption of all crops by 50%)\n- Out-Dome buildings accumulate dust at a slower rate \n- Colonist morale is impacted less by low health, sanity and comfort \n- Rockets have reduced cargo capacity <color em>(drawback)</color>"),
	funding = 3000,
	game_apply = function (self, city)
local sponsor = GetMissionSponsor()
    if sponsor.id ~= "Turkey" then
        return
    end
    g_Consts.BuildingDailyDustAccumulation = 2500
    g_Consts.LowStatMoraleEffect = 5000
end,
	goal_1_param_1 = "100",
	goal_1_param_2 = "Water",
	goal_2_param_1 = "10000",
	goal_3_param_1 = "500",
	goal_3_param_2 = "Food",
	goal_3_param_3 = "100",
	goal_4_param_1 = "20",
	goal_4_param_2 = "botanist",
	goal_5_param_1 = "4",
	goal_5_param_2 = "HydroPlant",
	group = "Default",
	id = "Turkey",
	initial_rockets = 1,
	name = "Turkey",
	precious_metals_export_price = 28,
	research_points = 150,
	sponsor_goal_1 = "ProduceResource",
	sponsor_goal_2 = "GeneratePower",
	sponsor_goal_3 = "ProduceResourceTimed",
	sponsor_goal_4 = "MartianbornSpecialists",
	sponsor_goal_5 = "MultipleBuildings",
	sponsor_nation_name1 = "Turkish",
	sponsor_nation_name2 = "TurkishNation",
	sponsor_nation_percent1 = 100,
	tech1 = "DryFarming",
}),
}
