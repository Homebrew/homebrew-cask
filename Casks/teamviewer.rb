class Teamviewer < Cask
  url 'https://download.teamviewer.com/download/TeamViewer.dmg'
  homepage 'http://www.teamviewer.com/'
  version 'latest'
  sha256 :no_check
  install 'Install TeamViewer.pkg'
  uninstall :pkgutil   => 'com.teamviewer.*',
            :launchctl => 'com.teamviewer.service',
            :files     => [
                           '/Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist'
                          ]
end
