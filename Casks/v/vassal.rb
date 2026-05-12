cask "vassal" do
  version "3.7.22"
  sha256 "b568caac68de99c4f2230139f0fe554c8ed6b7cce005dc6a32077b8434850b3a"

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

  depends_on :macos

  app "VASSAL.app"

  zap trash: "~/Library/Application Support/VASSAL"
end
