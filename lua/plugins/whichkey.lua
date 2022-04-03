require('which-key').setup({
  window = {
    border = "single",
    padding = { 2, 2, 2, 2 },
    winblend = 2
  }
})

local wk = require('which-key')
wk.register({
  ["<leader>"] = {
    f = {
      name = "File",
      b = { "Buffers" },
      f = { "Find File" },
      g = { "Find text" },
    },

    b = {
      name = "Buffer",
      j = { "Jump to" },
      b = { "Previous" },
      h = { "Close to the left" },
      l = { "Close to the right" },
    },

    c = {
      name = "Quickfix list",
      o = { "Open" },
      c = { "Close" },
    },

    s = {
      name = "Replace",
      s = { "Current word" },
      a = { "All occurences" },
      c = { "All occurences - confirm" },
    },

    v = {
      name = "Window",
      s = { "Split horizontally" },
      v = { "Split vertically" },
    },

    c = { "Close current buffer" },
    d = { "Show line diagnostics" },
    D = { "Show diagnostics list" },
    e = { "File browser" },
    p = { "Paste from clipboard" },
    y = { "Copy to clipboard" },
    q = { "Quit VIM" },
    Q = { "Quit VIM without saving" },
    w = { "Save file" },
  },
  g = {
    d = { "Go to definition" }
  }
})
