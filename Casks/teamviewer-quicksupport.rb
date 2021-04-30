cask "teamviewer-quicksupport" do
  version "15"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.teamviewer.com/download/version_#{version}x/TeamViewerQS.dmg"
  name "TeamViewer QuickSupport"
  name "TeamViewer QS"
  homepage "https://www.teamviewer.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "TeamViewerQS.app", target: "TeamViewer QuickSupport.app"
end
