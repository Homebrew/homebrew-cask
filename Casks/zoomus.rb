cask 'zoomus' do
  version '4.1.11049.1024'
  sha256 '111640bbf99308aa57b60b49ad4f62a9a20a3c44b71870a7856e901e41690b72'

  url "https://www.zoom.us/client/#{version}/zoomusInstaller.pkg"
  name 'Zoom.us'
  homepage 'https://www.zoom.us/'

  auto_updates true

  pkg 'zoomusInstaller.pkg'

  uninstall delete: '/Applications/zoom.us.app'

  zap delete: [
                '~/Library/Caches/us.zoom.xos',
                '~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin',
                '~/Library/Logs/zoom.us',
                '~/Library/Logs/zoominstall.log',
                '~/Library/Saved Application State/us.zoom.xos.savedState',
              ],
      trash:  [
                '~/Desktop/Zoom',
                '~/Library/Application Support/zoom.us',
                '~/Library/Preferences/ZoomChat.plist',
                '~/Library/Preferences/us.zoom.xos.plist',
              ]
end
