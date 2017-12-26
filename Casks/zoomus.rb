cask 'zoomus' do
  version '4.1.17379.1218'
  sha256 '68d4a9b58ee523f66fcbe3e8d6ea6443adf32819a33861e89d60b701ef16580d'

  url "https://www.zoom.us/client/#{version}/zoomusInstaller.pkg"
  name 'Zoom.us'
  homepage 'https://www.zoom.us/'

  auto_updates true

  pkg 'zoomusInstaller.pkg'

  uninstall delete: '/Applications/zoom.us.app'

  zap trash: [
               '~/Desktop/Zoom',
               '~/Library/Application Support/zoom.us',
               '~/Library/Caches/us.zoom.xos',
               '~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin',
               '~/Library/Logs/zoom.us',
               '~/Library/Logs/zoominstall.log',
               '~/Library/Preferences/ZoomChat.plist',
               '~/Library/Preferences/us.zoom.xos.plist',
               '~/Library/Saved Application State/us.zoom.xos.savedState',
             ]
end
