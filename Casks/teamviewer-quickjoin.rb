cask "teamviewer-quickjoin" do
  version "15.16.8,1"
  sha256 :no_check

  url "https://download.teamviewer.com/download/TeamViewerQJ.dmg"
  name "TeamViewer QuickJoin"
  name "TeamViewer QJ"
  desc "Standalone TeamViewer app for joining presentations and meetings"
  homepage "https://www.teamviewer.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "TeamViewerQJ.app", target: "TeamViewer QuickJoin.app"
end
