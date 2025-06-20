return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "go", "lua", "html", "python", "typescript", "javascript"
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
