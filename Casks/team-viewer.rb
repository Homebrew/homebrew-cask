class TeamViewer < Cask
  url 'http://download.teamviewer.com/download/TeamViewer.dmg'
  homepage 'http://www.teamviewer.com/'
  version 'latest'
  no_checksum
  install 'Install TeamViewer.pkg'
  uninstall 'Uninstall TeamViewer.app'
end
