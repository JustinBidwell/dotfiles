#!/bin/bash
THEMES=("Catppuccin-Mocha" "Cyberdream" "Kanawaga" "Everforest" "Gruv")

# Use Wofi to select
SELECTED=$(printf "%s\n" "${THEMES[@]}" | wofi --dmenu --prompt "Choose a theme")

# Exit if nothing selected
[ -z "$SELECTED" ] && exit

if [[ "$SELECTED" == "Kanawaga" ]]; then
    cp ~/.config/themes/nvim-colors/kanawaga.lua ~/.config/nvim/lua/plugins/colorscheme.lua
elif [[ "$SELECTED" == "Cyberdream" ]]; then
    cp ~/.config/themes/nvim-colors/cyberdream.lua ~/.config/nvim/lua/plugins/colorscheme.lua
    cp ~/.config/themes/waybar-style/cyberdream-css ~/.config/waybar/style.css
    cp ~/.config/themes/alacritty-style/cyberdream ~/.config/alacritty/alacritty.toml
    cp ~/.config/themes/sway-style/cyberdream ~/.config/sway/config
    cp ~/.config/themes/wofi-style/cyberdream ~/.config/wofi/style.css
    cp ~/.config/themes/waybar-configs/base ~/.config/waybar/config.jsonc
    sway reload
    killall waybar 
    waybar & disown
elif [[ "$SELECTED" == "Catppuccin-Mocha" ]]; then
    cp ~/.config/themes/nvim-colors/catppuccin.lua ~/.config/nvim/lua/plugins/colorscheme.lua
    cp ~/.config/themes/waybar-style/catppuccin-css ~/.config/waybar/style.css
    cp ~/.config/themes/alacritty-style/catppuccin ~/.config/alacritty/alacritty.toml
    cp ~/.config/themes/sway-style/catppuccin ~/.config/sway/config
    cp ~/.config/themes/wofi-style/catppuccin ~/.config/wofi/style.css
    cp ~/.config/themes/waybar-configs/base ~/.config/waybar/config.jsonc
    sway reload
    killall waybar 
    waybar & disown
elif [[ "$SELECTED" == "Everforest" ]]; then
    cp ~/.config/themes/nvim-colors/everforest.lua ~/.config/nvim/lua/plugins/colorscheme.lua
    cp ~/.config/themes/waybar-configs/base ~/.config/waybar/config.jsonc

elif [[ "$SELECTED" == "Gruv" ]]; then
    cp ~/.config/themes/nvim-colors/gruv.lua ~/.config/nvim/lua/plugins/colorscheme.lua
    cp ~/.config/themes/waybar-style/gruv ~/.config/waybar/style.css
    cp ~/.config/themes/alacritty-style/gruv ~/.config/alacritty/alacritty.toml
    cp ~/.config/themes/sway-style/gruv ~/.config/sway/config
    cp ~/.config/themes/wofi-style/gruv ~/.config/wofi/style.css
    cp ~/.config/themes/waybar-configs/gruv ~/.config/waybar/config.jsonc
    sway reload
    killall waybar 
    waybar & disown
fi
