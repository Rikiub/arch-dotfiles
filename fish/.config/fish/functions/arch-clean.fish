# 1. Clean pacman cache
# 2. Remove .cache dir ("$HOME/.cache")
# 2. Remove orphans
# 3. Remove optional/circular dependences
function arch-clean -d 'Clean Arch Linux"'
	sudo rm -rf $HOME/.cache
  paccache -r
	pacman -Qtdq | sudo pacman -Rns -
	pacman -Qqd | sudo pacman -Rsu -
end

function arch-update -d 'Update Arch Linux'
	yay -Syu
end
