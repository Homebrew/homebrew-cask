cask "thorium" do
  version "1.7.2"
  sha256 "a595ee212a79795faa21c46583c961ca563c3ab410bccb2fd45343ce1e6ec185"

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
