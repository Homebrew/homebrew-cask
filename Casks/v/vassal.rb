cask "vassal" do
  version "3.7.17"
  sha256 "805f9a85edc3101014c97fd0f1ff86eeecfe3e6de6c1102c7205ad5d3474bb1d"

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
