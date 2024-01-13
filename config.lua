UseESX = true

CheckLoopTime = 1000

AllZones = {

	["Police"] = {
		Debug = false,
		Zones = {
			{
				minZ = 18.0,
				maxZ = 99.3,
				Coords = {
					vector2(493.8940, -964.4219),
					vector2(489.8049, -1026.2971),
					vector2(405.7344, -1034.3728),
					vector2(409.1822, -962.7781)
					--vector2(-1076.14, -894.0)
				},
			},
		},
	},
	["Hospital"] = {
		Debug = false,
		Zones = {
			{
				minZ = 18.0,
				maxZ = 99.3,
				Coords = {
				  vector2(267.83856201172, -612.96075439454),
  				  vector2(289.3402709961, -552.88250732422),
  				  vector2(379.38494873046, -560.19116210938),
  				  vector2(356.9838256836, -619.4287109375)
				},
			},
		},
	},
	["MainGarage"] = {
		Debug = false,
		Zones = {
			{
				minZ = 18.0,
				maxZ = 99.3,
				Coords = {
					vector2(-212.7444, -905.6090),
					vector2(-250.7299, -1011.0825),
					vector2(-363.8030, -969.9979),
					vector2(-363.5570, -862.7646),
					vector2(-269.2526, -878.9869)
					--[[or2(-310.153839, -969.178040),
					vector2(-245.578018, -992.465942),
					vector2(-252.646149, -1011.204407),
					vector2(-364.457153, -970.404419),
					vector2(-364.747253, -872.017578),
					vector2(-364.694519, -861.995605),
					vector2(-350.175812, -867.019775),
					vector2(-338.953857, -869.287903),
					vector2(-325.134064, -871.186829),
					vector2(-310.127472, -873.758240),
					vector2(-294.975830, -876.725281),
					vector2(-287.789001, -878.320862),
					vector2(-282.672516, -879.942871),
					vector2(-276.989014, -882.118652)--]]
				},
			},
		},
	},

	["OceanGarage"] = {
		Debug = false,
		Zones = {
			{
				minZ = 10.0,
				maxZ = 99.3,
				Coords = {
					vector2(-2056.1946, -423.9760),
					vector2(-1971.9644, -498.6001),
					vector2(-2002.5858, -536.3560),
					vector2(-2090.5886, -463.6392)
					--[[vector2(-2081.090088, -459.059326),
					vector2(-2081.775879, -456.751648),
					vector2(-2081.525391, -455.063721),
					vector2(-2081.156006, -453.784607)]]--
				},
			},
		},
	},

	["Sandypd"] = {
		Debug = false,
		Zones = {
			{
				minZ = 18.0,
				maxZ = 99.3,
				Coords = {
				  vector2(1582.4024658204, 3792.0356445312),
  				  vector2(1427.0234375, 3702.4968261718),
  				  vector2(1412.9013671875, 3751.2189941406),
  			      vector2(1553.314453125, 3824.654296875)				
  			  },
			},
		},
	},
	["Paleto"] = {
		Debug = false,
		Zones = {
			{
				minZ = 18.0,
				maxZ = 99.3,
				Coords = {
				  vector2(154.4920, 6546.1274),
  				  vector2(83.8695, 6611.2944),
  				  vector2(136.8301, 6676.2109),
  				  vector2(151.45988464356, 6544.478515625),
  				  vector2(169.2721, 6663.2803),
  				  vector2(212.1747, 6632.3735),
  				  vector2(214.3389, 6573.0596)
				},
			},
		},
	},
	["Dealer"] = {
		Debug = false,
		Zones = {
			{
				minZ = 18.0,
				maxZ = 99.3,
				Coords = {
				  vector2(-30.648498535156, -1120.251953125),
  				  vector2(-12.666299819946, -1077.752319336),
  				  vector2(-55.926162719726, -1062.767578125),
  				  vector2(-79.1792678833, -1123.6784667968)			
				},
			},
		},
	},

	["Luxury"] = {
		Debug = false,
		Zones = {
			{
				minZ = 18.0,
				maxZ = 99.3,
				Coords = {
				  vector2(93.3658, -150.5460),
  				  vector2(109.4344, -107.7168),
  				  vector2(161.8729, -122.1437),
  				  vector2(144.5862, -169.8982)			
				},
			},
		},
	},

	--[[["Sandy"] = {
		Debug = false,
		Zones = {
			{
				minZ = 18.0,
				maxZ = 99.3,
				Coords = {
				  vector2(145.00283813476, -170.12910461426),
  				  vector2(93.58065032959, -150.60594177246),
  				  vector2(105.06685638428, -119.07489013672),
  				  vector2(158.7041015625, -134.52529907226)			
				},
			},
		},
	},]]

	["Jail"] = {
		Debug = false,
		Zones = {
			{
				minZ = 18.0,
				maxZ = 99.3,
				Coords = {
				  vector2(1538.9986572266, 2465.365234375),
  vector2(1656.2755126954, 2389.3388671875),
  vector2(1764.9903564454, 2406.0905761718),
  vector2(1828.5129394532, 2473.8393554688),
  vector2(1822.7531738282, 2563.1391601562),
  vector2(1891.8251953125, 2555.8669433594),
  vector2(1893.882446289, 2595.0886230468),
  vector2(1952.135131836, 2602.2438964844),
  vector2(1944.8094482422, 2622.5151367188),
  vector2(1894.1544189454, 2617.6193847656),
  vector2(1895.314819336, 2683.8366699218),
  vector2(1855.5220947266, 2699.3159179688),
  vector2(1774.306640625, 2768.2387695312),
  vector2(1648.6439208984, 2763.2829589844),
  vector2(1565.3115234375, 2686.46484375),
  vector2(1525.672241211, 2584.8640136718)
				},
			},
		},
	},
	
	-- Style
	-- [""] = {
		-- Debug = false,
		-- Zones = {
			-- {
				-- minZ = 0.0,
				-- maxZ = 0.0,
				-- Coords = {
				-- },
			-- },
		-- },
	-- },
}

WhiteListedJobs = {
	["police"] = { -- Jobe Name
		["Police"] = 0, -- [Zone Name] = MinGrade,
	},
	["police"] = { -- Jobe Name
		["Sandy"] = 0, -- [Zone Name] = MinGrade,
	},
	["police"] = { -- Jobe Name
		["Luxury"] = 0, -- [Zone Name] = MinGrade,
	},
	["police"] = { -- Jobe Name
		["Dealer"] = 0, -- [Zone Name] = MinGrade,
	},
	["police"] = { -- Jobe Name
		["OceanGarage"] = 0, -- [Zone Name] = MinGrade,
	},
	["police"] = { -- Jobe Name
		["Sandypd"] = 0, -- [Zone Name] = MinGrade,
	},
	["police"] = { -- Jobe Name
		["MainGarage"] = 0, -- [Zone Name] = MinGrade,
	},
	["police"] = { -- Jobe Name
		["Hospital"] = 0, -- [Zone Name] = MinGrade,
	},
	["police"] = { -- Jobe Name
		["Jail"] = 0, -- [Zone Name] = MinGrade,
	},
	
}

Texts = {
	["Enter"] = "You entered a SafeZone",
	["Exit"] = "You left a SafeZone",
}

