cask 'zoomus' do
  version '4.0.29656.0413'
  sha256 'b16496b77ddbf84604417f76c1f79a0a10146ab2676d0b26b05c632ed455a598'

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
