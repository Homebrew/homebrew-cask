class TeamViewer < Cask
  url 'http://download.teamviewer.com/download/TeamViewer.dmg'
  homepage 'http://www.teamviewer.com/'
  version 'latest'
  no_checksum
  install 'Install TeamViewer.pkg'
  uninstall(
    :pkgutil   => 'com.teamviewer.*',
    :launchctl => 'com.teamviewer.service',
    :files     => %w[
      /Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist
    ]
  )
end
