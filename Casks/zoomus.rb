cask 'zoomus' do
  version '4.0.36452.0616'
  sha256 '9a0b363dcb33cd7537004d4de722e847996d1e79e393a838c55c95be0e8af345'

  url "https://www.zoom.us/client/#{version}/zoomusInstaller.pkg"
  name 'Zoom.us'
  homepage 'https://www.zoom.us/'

  auto_updates true

  pkg 'zoomusInstaller.pkg'

  uninstall delete: '/Applications/zoom.us.app'

  zap       delete: [
                      '~/Desktop/Zoom',
                      '~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin',
                      '~/Library/Preferences/us.zoom.xos.plist',
                      '~/Library/Application Support/zoom.us',
                      '~/Library/Caches/us.zoom.xos',
                      '~/Library/Logs/zoom.us',
                    ]
end
