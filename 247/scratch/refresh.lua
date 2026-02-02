---@diagnostic disable-next-line: undefined-global
R("247")
local _247 = require("247")
local Window = require("247.window")
_247.setup({
  completion = {
    custom_rules = {
      "~/personal/skills/skills",
    },
    source = "cmp",
  },
})

Window.capture_input({
  cb = function(_, _)
    print("results")
  end,
  on_load = function()
    print("on_load")
    require("247.extensions").setup_buffer(require("247").__get_state())
  end,
  rules = _247.__get_state().rules,
})
