local cmp = require("247.extensions.cmp")

--- @class _247.Extensions.Source
--- @field init_for_buffer fun(_247: _247.State): nil
--- @field init fun(_247: _247.State): nil
--- @field refresh_state fun(_247: _247.State): nil

--- @param completion _247.Completion | nil
--- @return _247.Extensions.Source | nil
local function get_source(completion)
  if not completion or not completion.source then
    return
  end
  local source = completion.source
  if source == "cmp" then
    return cmp
  end
end

return {
  --- @param _247 _247.State
  init = function(_247)
    local source = get_source(_247.completion)
    if not source then
      return
    end
    source.init(_247)
  end,

  --- @param _247 _247.State
  setup_buffer = function(_247)
    local source = get_source(_247.completion)
    if not source then
      return
    end
    source.init_for_buffer(_247)
  end,

  --- @param _247 _247.State
  refresh = function(_247)
    local source = get_source(_247.completion)
    if not source then
      return
    end
    source.refresh_state(_247)
  end,
}
