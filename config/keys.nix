let
  bind = mode: key: action: { inherit mode key action; };
  bindopts =
    mode: key: action: opts:
    (bind mode key action) // { options = opts; };

in
{
  globals.mapleader = " ";

  keymaps = [
    # General maps

    # ctrl-s to save
    (bind "n" "<C-S>" ":w<CR>")
    (bind "i" "<C-S>" "<C-O>:up<CR>")
    (bind "v" "<C-S>" "<C-C>:up<CR>")

    # L to go to the end of the line
    (bind "n" "L" "$")

    # Y copies to end of line
    (bind "n" "Y" "y$")

    # Do stuff whilst keeping the cursor in the center.
    (bind "n" "<C-d>" "<C-d>zz")
    (bind "n" "<C-u>" "<C-u>zz")
    (bind "n" "n" "nzzzv")
    (bind "n" "N" "Nzzzv")

    # copy and paste to clipboard
    (bind "v" "<C-C>" ''"+y'')
    (bind "n" "<C-V>" ''"+P'')
    (bind "i" "<C-V>" ''<C-O>"+P'')

    # replace highlighted text when pasting
    (bind "v" "<C-V>" ''"+P'')

    # automatically jump to end of text pasted
    (bindopts "v" "y" "y`]" { silent = true; })
    (bindopts "v" "p" "p`]" { silent = true; })
    (bindopts "n" "p" "p`]" { silent = true; })

    (bind "i" "jk" "<Esc>")
    (bind "i" "kj" "<Esc>")

    # vim fugitive
    (bind "n" "<leader>gs" ":G<CR>")

    # better quickfix navigation
    (bind "n" "<C-J>" ":cnext<CR>")
    (bind "n" "<C-K>" ":cprevious<CR>")

    # easier buffer navigation
    (bind "n" "<Tab>" ":bnext<CR>")
    (bind "n" "<S-Tab>" ":bprevious<CR>")
  ];
}
