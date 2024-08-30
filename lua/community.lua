-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.colorscheme.catppuccin" },
	{ import = "astrocommunity.colorscheme.vscode-nvim" },
	{ import = "astrocommunity.pack.rust" },
	{ import = "astrocommunity.pack.typescript" },
	{ import = "astrocommunity.pack.typescript-deno" },
	{ import = "astrocommunity.pack.cpp" },
	{ import = "astrocommunity.pack.java" },
	{ import = "astrocommunity.pack.vue" },
	{ import = "astrocommunity.completion.codeium-nvim" },
}