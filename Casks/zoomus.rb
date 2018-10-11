cask 'zoomus' do
  version '4.1.33259.0925'
  sha256 '71c6f7087a2d68933ac1b2967c75b58720e427febe923bc3c9c07bf4da576e94'

  url "https://www.zoom.us/client/#{version}/zoomusInstaller.pkg"
  appcast 'https://support.zoom.us/hc/en-us/articles/201361963-New-Updates-for-Mac-OS'
  name 'Zoom.us'
  homepage 'https://www.zoom.us/'

  auto_updates true

  pkg 'zoomusInstaller.pkg'

  uninstall delete: '/Applications/zoom.us.app',
            quit:   'us.zoom.ZoomOpener',
            signal: [
                      ['KILL', 'us.zoom.xos'],
                    ]

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
