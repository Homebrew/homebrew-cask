cask "vassal" do
  version "3.7.12"
  sha256 "136458e37d53e1e3291f14e615bbeb998903e628d3dae2521e21ce44aef99dd5"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-universal.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VASSAL.app"

  zap trash: "~/Library/Application Support/VASSAL"
end
