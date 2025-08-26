cask "vassal" do
  version "3.7.16"
  sha256 "2d0319ba4b90f94cdae93de3971f06ef027ca84d9e2edb42b1f3bc7007dac8fd"

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
