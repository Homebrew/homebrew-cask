cask 'vlc-webplugin' do
  version '2.2.8'
  sha256 '5ea1476adf4029c963132ba03d8a50e88f6ca677629cbbcfaf746a81a8f82312'

  url "https://get.videolan.org/vlc/#{version}/macosx/VLC-webplugin-#{version}.dmg"
  name 'VLC for OS X web plugin'
  homepage 'https://www.videolan.org/vlc/download-macosx.html'

  internet_plugin 'VLC Plugin.plugin'
end
