# MacScripts
Useful scripts for macos


# mount_ntfs.sh
You need to install ntfs-3g first

brew tap gromgit/homebrew-fuse
brew install ntfs-3g-mac

download mount_ntfs.sh to your home dir

then you can add alias to your .zshrc
sudo vim /.zshrc
# add this line
alias mntfs='sudo zsh ~/mount_ntfs.sh'

to save and exit, tap ESC then type :wq

to make the change work, use 
source /.zshrc

then next time you plug in a NTFS driver, open the command and type sudo mntfs
