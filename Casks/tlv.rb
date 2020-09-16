cask "tlv" do
  version "1.2"
  sha256 "d203b4d7d3d4d02d2e4051d3f08e2a506462e543d233a1d952207b830e5a3a4f"

  url "https://github.com/tableau/tableau-log-viewer/releases/download/#{version}/tlv-osx-#{version}.zip"
  appcast "https://github.com/tableau/tableau-log-viewer/releases.atom"
  name "Tableau Log Viewer"
  homepage "https://github.com/tableau/tableau-log-viewer"

  app "tlv.app"
end
