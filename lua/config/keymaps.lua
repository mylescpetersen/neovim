vim.keymap.set("n", "<leader>lt", function()
  -- Close existing Neo-tree if already open
  require("neo-tree.command").execute({ action = "close", source = "filesystem" })

  -- Move to a clean window before starting
  vim.cmd("only")

  -- Create left vertical split for Neo-tree + Terminal
  vim.cmd("topleft vnew")
  vim.cmd("vertical resize 50")

  -- Move to left split
  vim.cmd("wincmd h")

  -- Open Neo-tree first (so it stays on top)
  require("neo-tree.command").execute({ source = "filesystem", position = "current" })

  -- Move back to Neo-tree window and split **below** for the terminal
  vim.cmd("wincmd h")  -- Ensure we're in the left pane
  vim.cmd("belowright split")  -- Split **below** Neo-tree
  vim.cmd("resize 15")  -- Set terminal height
  vim.cmd("terminal")  -- Open terminal at bottom

  -- Move to right panel (file editing area)
  vim.cmd("wincmd l")
end, { desc = "Left Neo-tree + terminal layout" })



-- Comments
vim.keymap.set('n', '<C-_>', 'gcc', { remap = true, desc = 'Toggle comment' })
vim.keymap.set('v', '<C-_>', 'gc', { remap = true, desc = 'Toggle comment (visual)' })


