local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{

	{
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = {{'nvim-lua/plenary.nvim'}}
	};
	'catppuccin/nvim';
	'deparr/tairiki.nvim';
	'HicaroD/alice.nvim';
	'rebelot/kanagawa.nvim';
	'rose-pine/neovim', as = 'rose-pine';
	'nvim-treesitter/nvim-treesitter', run = ':TSUpdate';
	'mbbill/undotree';
	'tpope/vim-fugitive';
	{
		'ThePrimeagen/harpoon', branch='harpoon2',

	};
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
}
