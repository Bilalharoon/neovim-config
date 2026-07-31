require("codecompanion").setup {
      -- Configure CodeCompanion to use Ollama for all interaction styles
      strategies = {
        chat = { adapter = "ollama" },
        inline = { adapter = "ollama" },
        agent = { adapter = "ollama" },
      },
      display = {
        action_palette = {
          provider = "telescope",
          opts = {
            show_preset_prompts=true,
            show_preset_actions=true,
            show_preset_rules = true,

            title = "Code Companion Actions",
            opts = {
              log_level= "DEBUG"
            }
          }
        }
      },
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            schema = {
              model = {
                default = "qwen3.5", -- Replace with your preferred downloaded Ollama model
              },
            },
          })
        end,
      },
    }

  require("telescope").load_extension("codecompanion")
