cask "vassal" do
  version "3.7.18"
  sha256 "22bd37cabf01e433b524ad43b3f20eeab8d03b855c28a9df83dfaccec5459401"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-universal.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "VASSAL.app"

  zap trash: "~/Library/Application Support/VASSAL"
end
