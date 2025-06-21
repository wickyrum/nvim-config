return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      local harpoon_extensions = require("harpoon.extensions")
      harpoon:extend(harpoon_extensions.builtins.highlight_current_file())

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
      vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

      vim.keymap.set("n", "<Alt>1", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<Alt>2", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<Alt>3", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<Alt>4", function() harpoon:list():select(4) end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "zp", function() harpoon:list():prev() end)
      vim.keymap.set("n", "zn", function() harpoon:list():next() end)
      local harpoon = require('harpoon')
      harpoon:setup({})
  end
}
}
