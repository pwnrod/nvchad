---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- window management
    ["<leader>wh"] = { "<C-w>h", desc = "move left one split" },
    ["<leader>wj"] = { "<C-w>j", desc = "move down one split" }, -- move down one window
    ["<leader>wk"] = { "<C-w>k", desc = "move up one split" }, -- move up one window
    ["<leader>wl"] = { "<C-w>l", desc = "move right one split" }, -- move right one window
    ["<leader>wx"] = { ":close<CR>", desc = "close current split" }, -- close current split

    -- handy keymaps
    ["<leader>q"] = { ":qa<CR>", desc = "quit all windows" }, -- quit all windows
    ["<leader>uw"] = { ":set wrap!<CR>", desc = "toggle line wrap" }, -- toggle line wrap   
    ["n"] = { "nzzzv", desc = "next search result centered" },
    ["N"] = { "Nzzzv", desc = "prev search result centered" },
    ["<C-d>"] = { "<C-d>zz", desc = "Jump down with centered cursor" },
    ["<C-u>"] = { "<C-u>zz", desc = "Jump up with centered cursor" },

    --lazygit
    ["<leader>gg"] = { ":LazyGit<CR>", desc = "lazygit" }
  },
}

M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "󱡁 Harpoon Add file",
    },
    ["<C-e>"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "󱠿 Harpoon Menu",
    },
    ["<C-h>"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "󱪼 Navigate to file 1",
    },
    ["<C-j>"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "󱪽 Navigate to file 2",
    },
    ["<C-k>"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "󱪾 Navigate to file 3",
    },
    ["<C-l>"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "󱪿 Navigate to file 4",
    },
  },
}

M.zenmode = {
  n = {
    -- zen mode management
    ["<leader>zz"] = {
      function()
        require("zen-mode").setup {
          window = {
            width = 90,
            options = {},
          },
        }
        require("zen-mode").toggle()
        vim.wo.wrap = false
        vim.wo.number = true
        vim.wo.rnu = true
      end,
      "Zen",
    },
    ["<leader>zZ"] = {
      function()
        require("zen-mode").setup {
          window = {
            width = 80,
            options = {},
          },
        }
        require("zen-mode").toggle()
        vim.wo.wrap = false
        vim.wo.number = false
        vim.wo.rnu = false
        vim.opt.colorcolumn = "0"
      end,
      "Zen Master",
    },
  }
}

-- more keybinds!


return M
