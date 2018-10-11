cask 'vlc-webplugin' do
  version '3.0.3'
  sha256 '350c3691c2a1f4a0620b38ec8fefe05a539907681062b7c913faa548a17cb4c6'

  url "https://get.videolan.org/vlc/#{version}/macosx/VLC-webplugin-#{version}.dmg"
  name 'VLC for OS X web plugin'
  homepage 'https://www.videolan.org/vlc/download-macosx.html'

  internet_plugin 'VLC Plugin.plugin'
end
