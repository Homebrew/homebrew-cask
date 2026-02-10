cask "vassal" do
  version "3.7.20"
  sha256 "c046c43806f5349d280c4a3890bf223c5d5fbd56095229226cbf3c3feb94340a"

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
