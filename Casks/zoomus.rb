cask 'zoomus' do
  version '4.1.10062.1016'
  sha256 'fdb68af0662fd5dc039ba3131317494b5797222acdad75d72bf13ac482759f85'

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
