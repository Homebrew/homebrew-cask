cask :v1 => 'teamviewer' do
  version :latest
  sha256 :no_check

  url 'https://download.teamviewer.com/download/TeamViewer.dmg'
  homepage 'http://www.teamviewer.com/'
  license :unknown

  pkg 'Install TeamViewer.pkg'

  uninstall :pkgutil   => 'com.teamviewer.*',
            :launchctl => 'com.teamviewer.service',
            :delete    => '/Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist'
  zap       :delete    => [
                           '~/Library/Caches/com.teamviewer.TeamViewer',
                           '~/Library/Logs/TeamViewer',
                          ]
end
