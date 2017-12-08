cask 'vlc-webplugin' do
  version '2.2.8'
  sha256 'e84afbc6bb3896f61149d26f3c7d0e0141fc4b26b2c1d45289e18593357bc186'

  url "https://get.videolan.org/vlc/#{version}/macosx/VLC-webplugin-#{version}.dmg"
  name 'VLC for OS X web plugin'
  homepage 'https://www.videolan.org/vlc/download-macosx.html'

  internet_plugin 'VLC Plugin.plugin'
end
