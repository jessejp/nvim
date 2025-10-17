local AutoSave = vim.api.nvim_create_augroup("AutoSave", { clear = true })
local is_enabled = false

local function auto_save()
  if is_enabled then
    vim.cmd("silent! wa")
  end
end

vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave" }, {
  group = AutoSave,
  pattern = "*",
  callback = auto_save,
})

local function toggle_auto_save()
  is_enabled = not is_enabled
  if is_enabled then
    vim.notify("AutoSave enabled", vim.log.levels.INFO)
  else
    vim.notify("AutoSave disabled", vim.log.levels.INFO)
  end
end

vim.api.nvim_create_user_command("AutoSaveToggle", toggle_auto_save, {
  desc = "Toggle auto-save for all buffers",
})