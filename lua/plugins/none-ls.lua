return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- js linterns
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.erb_lint,

				-- golang
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.code_actions.gomodifytags,
				null_ls.builtins.code_actions.impl,

				-- make
				null_ls.builtins.diagnostics.cmake_lint,

				-- docker
				null_ls.builtins.diagnostics.hadolint,

				-- markdown, yml, json
				null_ls.builtins.diagnostics.markdownlint,
				null_ls.builtins.diagnostics.yamllint,

				--Csharp
				null_ls.builtins.formatting.csharpier,
			},

			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						group = augroup,
						buffer = bufnr,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})
		vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, {})
	end,
}
