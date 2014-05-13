class UnityWebPlayer < Cask
  url 'http://webplayer.unity3d.com/download_webplayer-3.x/webplayer-mini.dmg'
  homepage 'https://unity3d.com/webplayer'
  version 'latest'
  install 'Install Unity Web Player.pkg'
  sha256 :no_check
  uninstall :pkgutil => 'com.unity.UnityWebPlayer',
            :files   => '/Library/Internet Plug-Ins/Unity Web Player.plugin'
end
