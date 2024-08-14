vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.termguicolors = true
vim.opt.number = true
vim.g.mapleader = " "
vim.o.mouse = ""
vim.opt.swapfile = false

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "to find the files using telescope" })
vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "to search for any occurence in all the files" })

vim.keymap.set("n", "<C-p>", ":Neotree filesystem toggle<CR>")

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", ":wincmd h<cr>", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<cr>", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", ":wincmd k<cr>", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<cr>", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

--Keymaps to use the lsp's functions
vim.keymap.set(
	"n",
	"<K>",
	vim.lsp.buf.hover,
	{ desc = "To Displays hover information about the symbol under the cursor in a floating window" }
)
vim.keymap.set(
	"n",
	"<leader>gd",
	vim.lsp.buf.definition,
	{ desc = "Jumps to the definition of the symbol under the cursor" }
)
vim.keymap.set(
	{ "n", "v" },
	"<leader>ca",
	vim.lsp.buf.code_action,
	{ desc = "Selects a code action available at the current cursor position" }
)

--Formatting the buffers using the language formatters
vim.keymap.set(
	"n",
	"<leader>gf",
	vim.lsp.buf.format,
	{ desc = "Formats a buffer using the attached (and optionally filtered) language server clients" }
)

vim.keymap.set("n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", { desc = "Toggle Pin" })
vim.keymap.set("n", "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", { desc = "Delete Non-Pinned Buffers" })
vim.keymap.set("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", { desc = "Delete Other Buffers" })
vim.keymap.set("n", "<leader>br", "<Cmd>BufferLineCloseRight<CR>", { desc = "Delete Buffers to the Right" })
vim.keymap.set("n", "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", { desc = "Delete Buffers to the Left" })
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "[B", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer prev" })
vim.keymap.set("n", "]B", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer next" })

-- Remove tilde characters at the end of buffers
vim.opt.fillchars:append({
	eob = " ", -- removes the ~ character at the end of buffers
})

--nvim-tmux-navigator keymaps
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<cr>")
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<cr>")
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<cr>")
vim.keymap.set("n", "<C-\\>", ":TmuxNavigatePrevious<cr>")

--keymap to use telescope to get the errors
vim.keymap.set("n", "<leader>er", ":Telescope notify<CR>", {})

vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "#000000" })

