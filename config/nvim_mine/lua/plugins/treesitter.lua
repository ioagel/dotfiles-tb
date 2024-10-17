return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "windwp/nvim-ts-autotag" },
    { "RRethy/nvim-treesitter-endwise" },
  },
  opts = {
    endwise = { enable = true },
    indent = { enable = true, disable = { "yaml", "ruby" } },
    ensure_installed = {
      "bash",
      "embedded_template",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "scss",
      "sql",
      "markdown",
      "markdown_inline",
      "python",
      "regex",
      "ruby",
      "toml",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
    },
  },
}
