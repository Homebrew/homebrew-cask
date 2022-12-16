cask "thorium" do
  version "2.2.0"
  sha256 "a9d39609190a5db06de10edc3d94b069ed89737681f395cad8c1877d52c77c2a"

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
