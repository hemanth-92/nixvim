{
  plugins.neo-tree = {
    enable = true;
    settings = {
      enable_diagnostics = true;
      enable_git_status = true;
      enable_modified_markers = true;
      enable_refresh_on_write = true;
      close_if_last_window = true;
      popup_border_style = "rounded"; # Type: null or one of “NC”, “double”, “none”, “rounded”, “shadow”, “single”, “solid” or raw lua code
      filesystem = {
        filtered_items = {
          always_show = [ ".gitignore" ];
        };
      };
      buffers = {
        bind_to_cwd = false;
        follow_current_file = {
          enabled = true;
        };
      };
      window = {
        width = 40;
        height = 15;
        autoExpandWidth = false;
        mappings = {
          "<space>" = "none";
        };
        keymaps = [
          {
            action = "<cmd>Neotree toggle<CR>";
            key = "<leader>e";
            mode = "n";
            options = {
              silent = true;
              desc = "Toggle neotree";
            };
          }
        ];
      };
    };
  };
}
