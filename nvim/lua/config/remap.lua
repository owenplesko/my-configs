-- Disable arrow keys (I keep using them instinctually)
vim.keymap.set("", "<Up>", "<Nop>")
vim.keymap.set("", "<Down>", "<Nop>")
vim.keymap.set("", "<Left>", "<Nop>")
vim.keymap.set("", "<Right>", "<Nop>")

-- Formatting
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
	vim.lsp.buf.code_action({
		context = { only = { "source.organizeImports" } },
		apply = true,
	})
end, { desc = "Format file" })

-- Code actions
vim.keymap.set("n", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "View Code Actions" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>en", function()
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Telescope find config files" })
