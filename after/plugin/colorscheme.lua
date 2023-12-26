function ColorDefaults(color)
	color = color or "kanagawa-wave" 
	-- Default options:
	require('kanagawa').setup({
	    compile = false,             -- enable compiling the colorscheme
	    undercurl = true,            -- enable undercurls
	    commentStyle = { italic = true },
	    functionStyle = {},
	    keywordStyle = { italic = true},
	    statementStyle = { bold = true },
	    typeStyle = {},
	    transparent = false,         -- do not set background color
	    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
	    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
	    colors = {                   -- add/modify theme and palette colors
	        palette = {},
	        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
	    },
	    overrides = function(colors) -- add/modify highlights
				local theme = colors.theme
	        return {
						NormalFloat = { bg = "none"},
						FloatBorder = { bg = "none"},
						FloatTitle = { bg = "none"},
						NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
					}
	    end,
	    theme = "wave",              -- Load "wave" theme when 'background' option is not set
	    background = {               -- map the value of 'background' option to a theme
	        dark = "wave",           -- try "dragon" !
	        light = "lotus"
	    },
	})
	require('tairiki').setup({
		style ='dark',
		transparent = true,
	})
	
	require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.35, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {
			mocha = {
				text = "#F4CDE9",
      	subtext1 = "#DEBAD4",
      	subtext0 = "#C8A6BE",
      	overlay2 = "#B293A8",
      	overlay1 = "#9C7F92",
      	overlay0 = "#866C7D",
      	surface2 = "#705867",
      	surface1 = "#5A4551",
      	surface0 = "#44313B",
				base = "#352939",
      	mantle = "#211924",
      	crust = "#1a1016",
			}
		},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
    },
})

-- setup must be called before loading
	vim.cmd.colorscheme(color)
end

ColorDefaults("rose-pine-main")
