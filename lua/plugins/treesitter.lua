return { -- Highlight, edit, and navigate code
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  branch = "master",
  main = "nvim-treesitter.configs", -- Sets main module to use for opts
  opts = {
    ensure_installed = {
      "lua",
      "html",
      "go",
      "css",
      "json",
      "php",
      "rust",
      "vue",
      "javascript",
      "typescript",
      "toml",
      "yaml",
      "ini",
      "scss",
      "gitcommit",
      "gitignore",
      "sql",
      "vim",
      "python",
    },
    auto_install = false,
    highlight = {
      enable = true,
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then return true end
      end,
      additional_vim_regex_highlighting = { "ruby" },
    },
    indent = { enable = false },
  },
}
