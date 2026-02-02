return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ty = {
        settings = {
          ty = {
            diagnosticMode = "off",
          }
        }
      },
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "off",
              diagnosticMode = "off",
            },
          },
        },
      },
    },
  },
}
