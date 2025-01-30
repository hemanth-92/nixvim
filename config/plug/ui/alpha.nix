{
  plugins.alpha =
    let
      nixFlake = [ "" ];
    in
    {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 4;
        }
        {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = nixFlake;
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "group";
          val =
            let
              mkButton = shortcut: cmd: val: hl: {
                type = "button";
                inherit val;
                opts = {
                  inherit hl shortcut;
                  keymap = [
                    "n"
                    shortcut
                    cmd
                    { }
                  ];
                  position = "center";
                  cursor = 0;
                  width = 40;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              };
            in
            [
              (mkButton "f"
                "<CMD>lua require('telescope.builtin').find_files({ hidden = true, no_ignore = true, file_ignore_patterns = { '^%.git/', '^%.cache/', '^%.DS_Store$', '^%.history$', '^%.venv/'} })<CR>"
                "🔍 Find File"
                "Operator"
              )
              (mkButton "q" "<CMD>qa<CR>" "💣 Quit Nixvim" "String")
            ];
        }
        {
          type = "padding";
          val = 2;
        }
        {
          opts = {
            hl = "GruvboxBlue";
            position = "center";
          };
          type = "text";
          val = "";
        }
      ];
    };
}
