cask 'vlc-webplugin' do
  version '2.2.2'
  sha256 '6ff4272c0a28b18e388e17841535a2d719d54c98a4558c212a393d5d269a91ca'

  url "https://get.videolan.org/vlc/#{version}/macosx/VLC-webplugin-#{version}.dmg"
  name 'VLC for OS X web plugin'
  homepage 'https://www.videolan.org/vlc/download-macosx.html'
  license :gpl

  internet_plugin 'VLC Plugin.plugin'
end
