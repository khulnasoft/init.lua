stds = {
    nvim = {
        globals = { "vim" }
    }
}
std = "lua51+nvim"

-- Global objects
globals = {
    "vim",
    "ColorMyPencils",
    "R",
}

-- Ignore certain warnings
ignore = {
    "631", -- line is too long
}

-- Exclude certain directories
exclude_files = {
    "lua/khulnasoft/unused_copilot.lua",
    ".trunk/**/*",
}
