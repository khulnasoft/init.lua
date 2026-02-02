--- @class _247.ops.Opts
--- @field additional_prompt? string
--- @field additional_rules? _247.Agents.Rule[]
return {
  fill_in_function = require("247.ops.fill-in-function"),
  implement_fn = require("247.ops.implement-fn"),
  over_range = require("247.ops.over-range"),
}
