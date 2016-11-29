cask 'vlc-webplugin' do
  version '2.2.4'
  sha256 'ceeece6670427eca2499133f6b4d066aa0d20058d0526a42462bee8de819a563'

  url "https://get.videolan.org/vlc/#{version}/macosx/VLC-webplugin-#{version}.dmg"
  name 'VLC for OS X web plugin'
  homepage 'https://www.videolan.org/vlc/download-macosx.html'

  internet_plugin 'VLC Plugin.plugin'
end
