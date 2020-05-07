cask 'zoomus' do
  version '5.0.23508.0430'
  sha256 '3d9098e42f45b3cd7a25e348bdb7140457ae9fd4f75b4a643da85b1858b99d42'

  # d11yldzmag5yn.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d11yldzmag5yn.cloudfront.net/prod/#{version}/Zoom.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://zoom.us/client/latest/Zoom.pkg'
  name 'Zoom.us'
  homepage 'https://www.zoom.us/'

  auto_updates true

  pkg 'Zoom.pkg'

  postflight do
    set_ownership '~/Library/Application Support/zoom.us'
  end

  uninstall quit:       'us.zoom.ZoomOpener',
            signal:     ['KILL', 'us.zoom.xos'],
            pkgutil:    'us.zoom.pkg.videmeeting',
            login_item: 'ZoomOpener',
            script:     {
                          executable:   '/usr/bin/defaults',
                          args:         ['delete', 'us.zoom.xos'],
                          must_succeed: false,
                          sudo:         true,
                        },
            delete:     [
                          '/Applications/zoom.us.app',
                          '/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin',
                          '/Library/Logs/DiagnosticReports/zoom.us*',
                          '~/.zoomus/ZoomOpener.app',
                          '~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin',
                        ]

  zap trash: [
               '~/.zoomus',
               '~/Desktop/Zoom',
               '~/Documents/Zoom',
               '~/Library/Application Support/CloudDocs/session/containers/iCloud.us.zoom.videomeetings',
               '~/Library/Application Support/CloudDocs/session/containers/iCloud.us.zoom.videomeetings.plist',
               '~/Library/Application Support/zoom.us',
               '~/Library/Caches/us.zoom.xos',
               '~/Library/Cookies/us.zoom.xos.binarycookies',
               '~/Library/Logs/zoom.us',
               '~/Library/Logs/zoominstall.log',
               '~/Library/Logs/ZoomPhone',
               '~/Library/Mobile Documents/iCloud~us~zoom~videomeetings',
               '~/Library/Preferences/ZoomChat.plist',
               '~/Library/Preferences/us.zoom.airhost.plist',
               '~/Library/Preferences/us.zoom.xos.Hotkey.plist',
               '~/Library/Preferences/us.zoom.xos.plist',
               '~/Library/Safari/PerSiteZoomPreferences.plist',
               '~/Library/SafariTechnologyPreview/PerSiteZoomPreferences.plist',
               '~/Library/Saved Application State/us.zoom.xos.savedState',
             ]
end
