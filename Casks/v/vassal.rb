cask "vassal" do
  version "3.7.21"
  sha256 "a35c0728aaa6b36d8a06239b24ee606c6fd99e971d6304422c9bcdd17df9ada2"

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
