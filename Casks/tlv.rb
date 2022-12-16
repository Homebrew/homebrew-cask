cask "tlv" do
  version "1.3"
  sha256 "dd6f3cfdec9a3abe524aeaa4f2e7c1a749be0d83962628ce1bec4057d70f97d3"

  url "https://github.com/tableau/tableau-log-viewer/releases/download/v#{version}/tlv-osx-#{version}.dmg"
  name "Tableau Log Viewer"
  desc "Tool for working with Tableau logs"
  homepage "https://github.com/tableau/tableau-log-viewer"

  app "tlv.app"
end
