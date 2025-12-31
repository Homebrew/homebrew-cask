cask "vassal" do
  version "3.7.19"
  sha256 "c323476b442829188aea767091132dd4bac8eb1b610304aea868d405633ddd31"

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
