local Agents = require("247.extensions.agents")
local Helpers = require("247.extensions.agents.helpers")
local SOURCE = "247"

--- @class _247.Extensions.CmpItem
--- @field rule _247.Agents.Rule
--- @field docs string

--- @param _247 _247.State
--- @return _247.Extensions.CmpItem[]
local function rules(_247)
  local agent_rules = Agents.rules_to_items(_247.rules)
  local out = {}
  for _, rule in ipairs(agent_rules) do
    table.insert(out, {
      rule = rule,
      docs = Helpers.head(rule.path),
    })
  end
  return out
end

--- @class CmpSource
--- @field _247 _247.State
--- @field items _247.Extensions.CmpItem[]
local CmpSource = {}
CmpSource.__index = CmpSource

--- @param _247 _247.State
function CmpSource.new(_247)
  return setmetatable({
    _247 = _247,
    items = rules(_247),
  }, CmpSource)
end

function CmpSource.is_available()
  return true
end

function CmpSource.get_debug_name()
  return SOURCE
end

function CmpSource.get_keyword_pattern()
  return [[@\k\+]]
end

function CmpSource.get_trigger_characters()
  return { "@" }
end

--- @class CompletionItem
--- @field label string
--- @field kind number kind is optional but gives icons / categories
--- @field documentation string can be a string or markdown table
--- @field detail string detail shows a right-side hint

--- @class Completion
--- @field items CompletionItem[]
--- @field isIncomplete boolean -
-- true: I might return more if user types more
-- false: this result set is complete
function CmpSource:complete(_, callback)
  local items = {} --[[ @as CompletionItem[] ]]
  for _, item in ipairs(self.items) do
    table.insert(items, {
      label = item.rule.name,
      insertText = item.rule.name,
      filterText = "@" .. item.rule.name,
      kind = 17, -- file
      documentation = {
        kind = "markdown",
        value = item.docs,
      },
      detail = item.rule.path,
    })
  end

  callback({
    items = items,
    isIncomplete = false,
  })
end

--- @type CmpSource | nil
local source = nil

--- @param _ _247.State
local function init_for_buffer(_)
  local cmp = require("cmp")
  cmp.setup.buffer({
    sources = {
      { name = SOURCE },
    },
    window = {
      completion = {
        zindex = 1001,
      },
      documentation = {
        zindex = 1001,
      },
    },
  })
end

--- @param _247 _247.State
local function init(_247)
  assert(
    source == nil,
    "the source must be nil when calling init on an completer"
  )

  local cmp = require("cmp")
  source = CmpSource.new(_247)
  cmp.register_source(SOURCE, source)
end

--- @param _247 _247.State
local function refresh_state(_247)
  if not source then
    return
  end
  source.items = rules(_247)
end

--- @type _247.Extensions.Source
local source_wrapper = {
  init_for_buffer = init_for_buffer,
  init = init,
  refresh_state = refresh_state,
}
return source_wrapper
