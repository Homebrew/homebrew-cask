cask 'zoomus' do
  version :latest
  sha256 :no_check

  url 'https://zoom.us/client/latest/zoomusInstaller.pkg'
  name 'Zoom.us'
  homepage 'https://www.zoom.us'

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
