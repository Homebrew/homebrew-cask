cask 'teamviewer-quicksupport' do
  version '13.2.75535'
  sha256 'd98eb2563fd727afcf3bead42d9c1750da45a327f1ed259d8bac6de42b259572'

  url 'https://download.teamviewer.com/download/version_13x/TeamViewerQS.dmg'
  name 'TeamViewer QuickSupport'
  name 'TeamViewer QS'
  homepage 'https://www.teamviewer.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'TeamViewerQS.app', target: 'TeamViewer QuickSupport.app'
end
