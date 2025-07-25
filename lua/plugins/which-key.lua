return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>?",
      function() require("which-key").show { global = false } end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  opts = {
    preset = "modern",
    delay = 200,
    icons = {
      mappings = true,
    },
    spec = {
      { "<leader>a", icon = "󱔁 " },
      { "<leader>;", icon = "󱔁 " },
      { "<leader>L", icon = "󰒲 ", desc = "Open Lazy" },
      { "<leader>f", group = "[F]ind in telescope" },
      { "<leader>t", group = "[T]oggleTerm", icon = " " },
      { "<leader>b", group = "[B]uffer", icon = "󰈔" },
      { "<leader>w", icon = "󰈔" },
      { "<leader>e", icon = { icon = "󰇥", color = "yellow" } },
      { "<leader>r", icon = { icon = "󰇥", color = "yellow" } },
      { "<leader>c", icon = { icon = "", color = "red" } },
      { "<leader>F", group = "Cellular automaton", icon = { icon = " ", color = "yellow" } },
      { "<leader>u", group = "UI", icon = { icon = " ", color = "yellow" } },
      { "<leader>S", group = "Session manager" },
      { "<leader>M", icon = { icon = " ", color = "blue" } },
      { "<leader>d", group = "Debug", icon = { icon = " ", color = "red" } },
      { "<leader>db", icon = { icon = " ", color = "red" } },
      { "<leader>du", icon = { icon = " ", color = "red" } },
      { "<leader>dq", icon = { icon = " ", color = "red" } },
      { "<leader>dQ", icon = { icon = " ", color = "red" } },
      { "<leader>o", group = "Overseer", icon = { icon = " ", color = "blue" } },
      { "gr", group = "LSP" },
    },
  },
}
