require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- Toggle the main AI Chat window (Normal and Visual modes)
map({ "n", "v" }, "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "Toggle AI Chat", noremap=true })

-- Open the context-aware prompt action menu (Refactor, Fix, Explain)
map({ "n", "v" }, "<leader>ca", "<cmd>CodeCompanionActions<cr>", { desc = "AI Actions Menu", noremap=true })

-- Run an inline prompt that modifies your code in place
map("v", "<leader>ci", "<cmd>CodeCompanion<cr>", { desc = "Inline AI Prompt", noremap=true  })

-- Automatically append selected visual text into the current active chat buffer
-- map("v", "<leader>ca", "<cmd>CodeCompanionChat Add<cr>", { desc = "Add code to AI Chat", noremap=true  })
