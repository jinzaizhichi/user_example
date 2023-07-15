return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
-- Remove the `use` here if you're using folke/lazy.nvim.
  -- {'Exafunction/codeium.vim',
  --     event = "VeryLazy",
  --     -- event = "BufRead",
  --     config = function ()
  --       -- Change '<C-g>' here to any keycode you like.
  --       vim.keymap.set('i', '<C-h>', function () return vim.fn['codeium#Accept']() end, { expr = true })
  --       vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
  --       vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
  --       vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  --       vim.g.codeium_api_key = vim.fn.system("pass show codeium/api")
  --     end,
  --   },
   {'hashivim/vim-terraform',
      event = "BufRead",
    },
    {'wakatime/vim-wakatime',
     event = "VeryLazy",
    --  config = function()
    --   vim.g.wakatime_api_key = vim.fn.system("pass show wakatime/api")
    -- end,
    },
  {
    'lianghx-319/ChatGPT.nvim',
    -- event = "VeryLazy",
    event = "BufRead",
    config = function()
      require("chatgpt").setup({
      -- async_api_key_cmd = "pass show 2dapi/token", 
      api_key_cmd = "pass show 2dapi/token",
      api_host_cmd = "pass show openai/host",
      -- OPENAI_API_HOST= "pass show openai/host",
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
},
}
