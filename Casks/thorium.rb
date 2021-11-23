cask "thorium" do
  version "1.7.3"
  sha256 "4ef0e8e9fa8797c660561f803f53e59f0bf2bf9a40335a4ad3d3c64de7d63307"

  url "https://github.com/edrlab/thorium-reader/releases/download/v#{version}/Thorium-#{version}.dmg",
      verified: "github.com/edrlab/thorium-reader/"
  name "Thorium Reader"
  desc "Epub reader"
  homepage "https://www.edrlab.org/software/thorium-reader/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/EDRLab.ThoriumReader",
    "~/Library/Preferences/io.github.edrlab.thorium.plist",
  ]
end
