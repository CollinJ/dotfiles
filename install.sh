rm .*~
rsync -av --exclude .git --exclude README.md --exclude install.sh . ~/
