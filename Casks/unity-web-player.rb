cask 'unity-web-player' do
  version '2019.1.0f2,292b93d75a2c'
  sha256 '1058714920302d0c1d0b5fb0cc8404d6b5e472b16f6391f318fe09fb74d63e6a'

  url 'http://webplayer.unity3d.com/download_webplayer-3.x/webplayer-mini.dmg'
  name 'Unity Web Player'
  homepage 'https://unity3d.com/webplayer'

  pkg 'Install Unity Web Player.pkg'

  uninstall pkgutil: 'com.unity.UnityWebPlayer',
            delete:  '/Library/Internet Plug-Ins/Unity Web Player.plugin'

  caveats do
    discontinued
  end
end
