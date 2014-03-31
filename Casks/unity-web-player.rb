class UnityWebPlayer < Cask
  url 'http://webplayer.unity3d.com/download_webplayer-3.x/webplayer-mini.dmg'
  homepage 'https://unity3d.com/webplayer'
  version '4.3.5f1'
  install 'Install Unity Web Player.pkg'
  sha256 'bfdd087df94addaf045d7f5a446c3423b714c1553ff0fd50fc1d9406ea318051'
  uninstall :pkgutil => 'com.unity.UnityWebPlayer',
            :files   => '/Library/Internet Plug-Ins/Unity Web Player.plugin'
end
