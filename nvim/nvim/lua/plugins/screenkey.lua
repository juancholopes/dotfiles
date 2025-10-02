return {
  "NStefan002/screenkey.nvim",
  lazy = false,
  version = "*",
  config = function()
    require("screenkey").setup({
      win_opts = {
        row = vim.o.lines - 1, -- posición vertical (cerca del fondo)
        col = vim.o.columns - 1, -- posición horizontal (esquina derecha)
        relative = "editor",
        anchor = "SE", -- esquina noreste
        width = 40,
        height = 3,
        border = "rounded", -- single, double, rounded, solid, shadow
        title = " Screenkey ",
        title_pos = "center",
        style = "minimal",
        focusable = false,
        noautocmd = true,
      },
      compress_after = 3, -- comprimir después de 3 teclas repetidas
      clear_after = 1.5, -- limpiar después de 3 segundos de inactividad
      disable = {
        filetypes = {}, -- tipos de archivo donde deshabilitar
        buftypes = { "terminal" }, -- tipos de buffer donde deshabilitar
      },
      show_leader = true, -- mostrar tecla leader
      group_mappings = true, -- agrupar mappings similares
      display_infront = {}, -- mostrar delante de ciertos elementos
      display_behind = {}, -- mostrar detrás de ciertos elementos
      filter = function(keys)
        return keys -- función para filtrar teclas (opcional)
      end,
      keys = {
        ["<TAB>"] = "󰌒",
        ["<CR>"] = "󰌑",
        ["<ESC>"] = "󱊷",
        ["<SPACE>"] = "󱁐",
        ["<BS>"] = "",
        ["<DEL>"] = "Del",
        ["<LEFT>"] = "",
        ["<RIGHT>"] = "",
        ["<UP>"] = "",
        ["<DOWN>"] = "󰞒",
        ["<HOME>"] = "Home",
        ["<END>"] = "End",
        ["<PAGEUP>"] = "PgUp",
        ["<PAGEDOWN>"] = "PgDn",
      },
    })
  end,
}
