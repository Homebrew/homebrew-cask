cask :v1 => 'unity-web-player' do
  version :latest
  sha256 :no_check

  url 'http://webplayer.unity3d.com/download_webplayer-3.x/webplayer-mini.dmg'
  homepage 'https://unity3d.com/webplayer'
  license :unknown

  pkg 'Install Unity Web Player.pkg'
  uninstall :pkgutil => 'com.unity.UnityWebPlayer',
            :delete  => '/Library/Internet Plug-Ins/Unity Web Player.plugin'
end
