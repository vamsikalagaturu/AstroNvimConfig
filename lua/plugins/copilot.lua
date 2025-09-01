return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = true,
      debounce = 150,
      auto_trigger = true,
      keymap = {
        accept = "<M-Tab>",
        accept_word = "<M-w>",
        accept_line = "<M-l>",
      },
    },
  },
}
