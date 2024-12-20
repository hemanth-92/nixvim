{
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    settings = {
      update_in_insert = false;
    };
    sources = {
      code_actions = {
        gitsigns.enable = true;
        statix.enable = true;
      };
      diagnostics = {
        statix.enable = true;
        yamllint.enable = true;
      };
      formatting = {
        nixpkgs_fmt.enable = true;
        black = {
          enable = true;
          settings = ''
            {
              extra_args = { "--fast" },
            }
          '';
        };
        prettierd = {
          enable = true;
          disableTsServerFormatter = true;
          settings = ''
            {
              extra_args = { "--no-semi", "--single-quote" },
            }
          '';
        };
        stylua.enable = true;
        yamlfmt.enable = true;
        google_java_format.enable = true;
        clang_format.enable = true;
        goimports_reviser.enable = true;
        gofumpt.enable = true;
        golines.enable = true;
      };
    };
  };
  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>cf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
}
