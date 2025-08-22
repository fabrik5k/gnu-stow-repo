return {
  "ojroques/nvim-osc52",
  config = function()
    require("osc52").setup({
      max_length = 0,      -- 0 = sem limite (o terminal pode limitar)
      silent = true,       -- não mostrar mensagens
      trim = false,
    })

    -- Copiar TODO YANK automaticamente (inclui `yy`, `y}`, `yiw`, visual, etc.)
    local function copy_on_yank()
      if vim.v.event.operator == 'y' and (vim.v.event.regname == '' or vim.v.event.regname == '"') then
        require('osc52').copy_register('"')
      end
    end
    vim.api.nvim_create_autocmd('TextYankPost', {callback = copy_on_yank})
  end
}
