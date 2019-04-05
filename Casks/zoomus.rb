cask 'zoomus' do
  version '4.3.59242.0310'
  sha256 '7d9607abcc73d984c1ccdf7a218a446974bb8f72a03e59d74349fc50baa4379b'

  url "https://www.zoom.us/client/#{version}/zoomusInstaller.pkg"
  appcast 'https://support.zoom.us/hc/en-us/articles/201361963-New-Updates-for-Mac-OS'
  name 'Zoom.us'
  homepage 'https://www.zoom.us/'

  auto_updates true

  pkg 'zoomusInstaller.pkg'

  postflight do
    set_ownership '~/Library/Application Support/zoom.us'
  end

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
