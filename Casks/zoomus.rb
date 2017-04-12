cask 'zoomus' do
  version '4.0.29390.0411'
  sha256 '61a5dc189f72c40c87e90abf1206fbb2b950da85416df085257b588c79ada524'

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
