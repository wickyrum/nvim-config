return  {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        keywords = {
            TODO = {color="blue"}
        }
    end
  }
}
