return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.gopls.setup({
				capabilities = capabilities,
			})

			lspconfig.neocmake.setup({
				capabilities = capabilities,
			})

			-- Docker
			lspconfig.docker_compose_language_service.setup({
				capabilities = capabilities,
			})
			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})

			-- Markdown
			lspconfig.marksman.setup({
				capabilities = capabilities,
			})

			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})

			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})

			-- CSharp
			local omnisharp = "/Users/christian/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll"
			lspconfig.omnisharp.setup({
				capabilities = capabilities,
				-- cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
				cmd = { "dotnet", omnisharp },
				-- Enables support for reading code style, naming convention and analyzer
				-- settings from .editorconfig.
				enable_editorconfig_support = true,
				-- If true, MSBuild project system will only load projects for files that
				-- were opened in the editor. This setting is useful for big C# codebases
				-- and allows for faster initialization of code navigation features only
				-- for projects that are relevant to code that is being edited. With this
				-- setting enabled OmniSharp may load fewer projects and may thus display
				-- incomplete reference lists for symbols.
				enable_ms_build_load_projects_on_demand = false,
				-- Enables support for roslyn analyzers, code fixes and rulesets.
				enable_roslyn_analyzers = false,
				-- Specifies whether 'using' directives should be grouped and sorted during
				-- document formatting.
				organize_imports_on_format = true,
				-- Enables support for showing unimported types and unimported extension
				-- methods in completion lists. When committed, the appropriate using
				-- directive will be added at the top of the current file. This option can
				-- have a negative impact on initial completion responsiveness,
				-- particularly for the first few completion sessions after opening a
				-- solution.
				enable_import_completion = true,
				-- Specifies whether to include preview versions of the .NET SDK when
				-- determining which version to use for project loading.
				sdk_include_prereleases = true,
				-- Only run analyzers against open files when 'enableRoslynAnalyzers' is
				-- true
				analyze_open_documents_only = false,
			})

			vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
