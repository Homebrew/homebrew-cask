cask 'vlc-webplugin' do
  version '2.2.1'
  sha256 'f810058a8c984ed6a33e33694aa237d3554396b725689c0cd0ffcedc02d4abd5'

  url "https://get.videolan.org/vlc/#{version}/macosx/VLC-webplugin-#{version}.dmg"
  name 'VLC for OS X web plugin'
  homepage 'https://www.videolan.org/vlc/download-macosx.html'
  license :gpl

  internet_plugin 'VLC Plugin.plugin'
end
