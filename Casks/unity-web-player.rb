cask 'unity-web-player' do
  version :latest
  sha256 :no_check

  url 'http://webplayer.unity3d.com/download_webplayer-3.x/webplayer-mini.dmg'
  name 'Unity Web Player'
  homepage 'https://unity3d.com/webplayer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on macos: '>= :snow_leopard'

  pkg 'Install Unity Web Player.pkg'

  uninstall pkgutil: 'com.unity.UnityWebPlayer',
            delete:  '/Library/Internet Plug-Ins/Unity Web Player.plugin'
end
