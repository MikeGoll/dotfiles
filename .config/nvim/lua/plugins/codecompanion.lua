return {
    "olimorris/codecompanion.nvim",
  opts = {
      strategies = {
          chat = { adapter = "ollama" },
          inline = { adapter = "ollama" },
      },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
