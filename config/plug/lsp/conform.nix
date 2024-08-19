{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    notifyOnError = true;
    formattersByFt = {
      python = [ "black" ];
      nix = [ "nixfmt" ];
      markdown = [
        [
          "prettierd"
          "prettier"
        ]
      ];
      rust = [ "rustfmt" ];
      html = [ [ "prettierd" ] ];
      css = [ [ "prettierd" ] ];
      javascript = [ [ "prettierd" ] ];
      javascriptreact = [ [ "prettierd" ] ];
      typescript = [ [ "prettierd" ] ];
      typescriptreact = [ [ "prettierd" ] ];
    };
  };
}
