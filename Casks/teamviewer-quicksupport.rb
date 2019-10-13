cask 'teamviewer-quicksupport' do
  version :latest
  sha256 :no_check

  url 'https://dl.teamviewer.com/download/version_14x/TeamViewerQS.dmg'
  name 'TeamViewer QuickSupport'
  name 'TeamViewer QS'
  homepage 'https://www.teamviewer.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'TeamViewerQS.app', target: 'TeamViewer QuickSupport.app'
end
