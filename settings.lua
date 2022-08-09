data:extend({
  {
		type = "string-setting",
		name = "bztungsten-recipe-bypass",
		setting_type = "startup",
		default_value = "",
    allow_blank = true,
	},
  {
		type = "string-setting",
		name = "bztungsten-more-intermediates",
		setting_type = "startup",
		default_value = "no",
    allowed_values = {"cuw", "no"},
	},
  {
		type = "string-setting",
		name = "bztungsten-avoid-military",
		setting_type = "startup",
		default_value = "yes",
    allowed_values = {"yes", "no"},
	},
  {
		type = "string-setting",
		name = "bztungsten-advanced-carbon-furnace",
		setting_type = "startup",
		default_value = "no",
    allowed_values = {"yes", "no"},
    hidden = not not (mods.Krastorio2 or mods.bzfoundry),
	},
  {
		type = "bool-setting",
		name = "bztungsten-starting-patch",
		setting_type = "startup",
		default_value = false,
    allowed_values = {"yes", "no"},
    hidden = not not mods.Krastorio2,
	},
  mods["Krastorio2"] and
  {
		type = "int-setting",
		name = "bztungsten-mining-fluid-amount-k2",
		setting_type = "startup",
		default_value = 1,
    minimum_value = 1,
    maximum_value = 1000,
	} or {
		type = "int-setting",
		name = "bztungsten-mining-fluid-amount",
		setting_type = "startup",
		default_value = 10,
    minimum_value = 1,
    maximum_value = 1000,
    order = "aga",
	},
})

if mods["space-exploration"] and string.sub(mods["space-exploration"], 1, 3) >= "0.6" then
data:extend({
  {
		type = "bool-setting",
		name = "bztungsten-se-sintering",
		setting_type = "startup",
		default_value = false,
    order = "acm",
  }
})
end
