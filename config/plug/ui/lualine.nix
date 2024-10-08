{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
        theme = {
          normal = {
            a = {
              bg = "#b4befe";
              fg = "#1c1d21";
            };
            b = {
              bg = "nil";
            };
            c = {
              bg = "nil";
            };
            z = {
              bg = "#b4befe";
              fg = "#1c1d21";
            };
            y = {
              bg = "nil";
            };
            x = {
              bg = "nil";
            };
          };
        };
        componentSeparators = {
          left = "";
          right = " ";
        };
        disabledFiletypes = {
          statusline = [
            "dashboard"
            "alpha"
          ];
        };
        sectionSeparators = {
          left = "";
          right = "";
        };
        sections = {
          lualine_a = [
            {
              name = "mode";
              icon = "";
              separator = {
                left = "";
                right = "";
              };
            }
          ];
          lualine_b = [
            {
              name = "branch";
              icon = "";
              separator = {
                left = "";
                right = "";
              };
              color = {
                fg = "#1c1d21";
                bg = "#7d83ac";
              };
            }
          ];
          lualine_c = [
            {
              name = "diagnostic";
              extraConfig = {
                symbols = {
                  error = " ";
                  warn = " ";
                  info = " ";
                  hint = "󰝶 ";
                };
              };
            }
            {
              name = "filetype";
              separator = {
                left = "";
                right = "";
              };
              extraConfig = {
                icon_only = true;
                padding = {
                  left = 1;
                  right = 0;
                };
              };
            }
            {
              name = "filename";
              extraConfig = {
                symbols = {
                  modified = "  ";
                  readonly = "";
                  unnamed = "";
                };
              };
            }
          ];
          lualine_x = [ "diff" ];
          lualine_y = [
            {
              name = "progress";
              icon = "";
              color = {
                fg = "#1c1d21";
                bg = "#7d83ac";
              };
            }
          ];
          lualine_z = [ { name = "location"; } ];
        };
      };
    };
  };
}
