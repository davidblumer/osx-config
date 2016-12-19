alias mp3='youtube-dl --extract-audio --no-progress --audio-format mp3 --audio-quality 320K -o "Music/Spotify/%(title)s.%(ext)s"'; #--metadata-from-title "%(artist)s - %(title)s"

function fixapache {
  echo "################################################################################"
  chmod -R 777 /usr/local/var/mysql/
  echo "############################# fixed chmod for mysql ############################"
  echo "################################################################################"
}

function killport {
  kill -9 $(lsof -ti tcp:$1)
}

function hosts {
  cat /private/etc/hosts
}

function addhost {
  sudo atom /private/etc/hosts
}

function config {
  echo "################################################################################"
  if [ -f ".oh-my-zsh/custom/$1.zsh" ]
    then
      echo "############################ opening $1 config ############################"
      atom .oh-my-zsh/custom/$1.zsh
    else
      echo "############################ opening default config ############################"
      atom .oh-my-zsh/custom/davidblumer.zsh
  fi
  echo "################################################################################"
  clear;
}

function addssh {
  atom ~/.ssh/config
}

function reload {
  echo "################################################################################"
  source ~/Users/davidblumer/.oh-my-zsh/custom/*.zsh
  echo "############################# loaded custom configs ############################"
  echo "################################################################################"
}
