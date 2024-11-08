{
  plugins = {
    lsp-format = {
      enable = true;
    };
    lsp = {
      enable = true;
      servers = {
        html.enable = true;
        ccls.enable = true;
        cmake.enable = true;
        emmet_ls.enable = true;
        cssls.enable = true;
        gopls.enable = true;
        jsonls.enable = true;
        pyright.enable = true;
        tailwindcss.enable = true;
        java_language_server.enable = true;
        nixd = {
          enable = true;
          settings = {
            diagnostic.suppress = [ "sema-escaping-with" ];
            nixpkgs.expr = "import <nixpkgs> { }";
            options = {
              nixos = {
                expr = "(builtins.getFlake \"/home/zenith/hyprnix\").nixosConfigurations.shadowblaze.options";
              };
              home_manager = {
                expr = "(builtins.getFlake \"/home/zenith/hyprnix\").homeConfigurations.shadowblaze.options";
              };
            };
          };
        };
        ts_ls.enable = true;
        lua_ls.enable = true;
        bashls.enable = true;
        eslint.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        marksman.enable = true;
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
}
