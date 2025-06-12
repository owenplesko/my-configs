return {
  {
    "williamboman/mason-lspconfig.nvim",
	opts = {
      ensure_installed = {
    	"gopls",
    	"ts_ls",
    	"tailwindcss", 
    	"cssls",
    	"html",
    	"pyright",
    	"lua_ls",
  	}
    },
    dependencies = {
      { "williamboman/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
}
