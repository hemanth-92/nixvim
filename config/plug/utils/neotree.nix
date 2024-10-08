{
  plugins.neo-tree = {
    enable = true;
    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;
    enableRefreshOnWrite = true;
    closeIfLastWindow = true;
    popupBorderStyle = "rounded"; # Type: null or one of “NC”, “double”, “none”, “rounded”, “shadow”, “single”, “solid” or raw lua code
    filesystem.filteredItems.alwaysShow = [ ".gitignore" ];
    buffers = {
      bindToCwd = false;
      followCurrentFile = {
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
    };
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
}
