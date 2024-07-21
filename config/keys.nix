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

    # fix page up and page down so the cursor doesn't move
    (bind "n" "<PageUp>" "<C-U>")
    (bind "n" "<PageDown>" "<C-D>")
    (bind "i" "<PageUp>" "<C-O><C-U>")
    (bind "i" "<PageDown>" "<C-O><C-D>")

    # ctrl-s to save
    (bind "n" "<C-S>" ":w<CR>")
    (bind "i" "<C-S>" "<C-O>:up<CR>")
    (bind "v" "<C-S>" "<C-C>:up<CR>")

    # L to go to the end of the line
    (bind "n" "L" "$")

    # Y copies to end of line
    (bind "n" "Y" "y$")

    # keep cursor in place when joining lines
    (bind "n" "J" "mzJ`z")

    # visual shifting (does not exit visual mode)
    (bind "v" "<" "<gv")
    (bind "v" ">" ">gv")

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

    # reselect text
    (bind "v" "gV" "`[v`]")

    # disable F1 key
    (bind "n" "<F1>" "<Esc>")
    (bind "i" "<F1>" "<Esc>")
    (bind "v" "<F1>" "<Esc>")

    # TODO: disable manual key k?
    # jk or kj to escape insert mode
    (bind "i" "jk" "<Esc>")
    (bind "i" "kj" "<Esc>")

    # center display after searches
    (bind "n" "n" "nzzzv")
    (bind "n" "N" "Nzzzv")
    (bind "n" "*" "*zzzv")
    (bind "n" "#" "#zzzv")
    (bind "n" "g*" "g*zzzv")
    (bind "n" "g#" "g#zzzv")

    # only jumps of more than 5 lines are added to the jumplist
    (bindopts "n" "k" "(v:count > 5 ? \"m'\" . v:count : \"\") . 'k'" { expr = true; })
    (bindopts "n" "j" "(v:count > 5 ? \"m'\" . v:count : \"\") . 'j'" { expr = true; })

    # vv enter visual block mode
    (bind "n" "vv" "<C-V>")

    # ; is an alias for :
    (bind "n" ";" ":")

    # better command line editing
    (bind "c" "<C-A>" "<Home>")
    (bind "c" "<C-E>" "<End>")

    # easier buffer navigation
    (bind "n" "<Tab>" ":bnext<CR>")
    (bind "n" "<S-Tab>" ":bprevious<CR>")

    # swap functionality of gj and gk
    (bind "n" "j" "gj")
    (bind "n" "k" "gk")
    (bind "n" "gj" "j")
    (bind "n" "gk" "k")

    # TODO: incsearch?
    # better quickfix navigation
    (bind "n" "<C-J>" ":cnext<CR>")
    (bind "n" "<C-K>" ":cprevious<CR>")

    # vim fugitive
    (bind "n" "<leader>gs" ":G<CR>")
  ];
}
