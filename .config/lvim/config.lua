-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.transparent_window = true
lvim.builtin.treesitter.rainbow.enable = true

vim.opt.relativenumber = true
-- use treesitter folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

lvim.builtin.which_key.mappings["sT"] = {
  "<cmd>TodoTelescope<cr>", "TODO'S"
}
lvim.builtin.which_key.mappings["t"] = {
  name = "Terminal",
  f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
  v = { "<cmd>ToggleTerm direction=vertical<cr>", "Vertical" },
  h = { "<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal" },
}

lvim.plugins = {
  {
    "Mofiqul/dracula.nvim",
    config = function()
      require('lualine').setup {
        options = {
          theme = 'dracula-nvim'
        }
      }
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "mrjones2014/nvim-ts-rainbow",
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require('lualine').setup {
        options = {
          theme = 'onedark'
        }
      }
    end,
  },
  {
    "tpope/vim-surround",

    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    config = function()
      require('lualine').setup {
        options = {
          theme = 'vscode'
        }
      }
    end,
  },
}
