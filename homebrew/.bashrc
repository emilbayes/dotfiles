# Link Homebrew casks in `/Applications` rather than `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications";

#bash-completion2
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
   source $(brew --prefix)/share/bash-completion/bash_completion
fi

#awscli
complete -C aws_completer aws

#z
. `brew --prefix`/etc/profile.d/z.sh

#android-sdk
export ANDROID_HOME=/usr/local/opt/android-sdk
