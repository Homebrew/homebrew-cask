cask 'zoomus' do
  version '4.4.52586.0416'
  sha256 'ef5a50404db12828948274fb4e5775a424a8e99f67797d4dfde68839f8cfbb63'

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
