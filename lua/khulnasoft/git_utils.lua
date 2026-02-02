local M = {}

function M.dev_commit()
    local msg = "🏗️ dev: auto-commit " .. os.date("%Y-%m-%d %H:%M:%S")
    local cmd = string.format("git add . && git commit -m '%s' && git push", msg)
    print("Committing and pushing...")
    vim.fn.jobstart(cmd, {
        on_exit = function(_, code)
            if code == 0 then
                print("Successfully committed and pushed!")
            else
                print("Failed to commit and push. Code: " .. code)
            end
        end,
        stdout_buffered = true,
        stderr_buffered = true,
    })
end

return M
