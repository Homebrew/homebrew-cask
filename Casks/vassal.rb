cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.19"
  sha256 arm:   "08f91402ffb22c2cf166ae316d9e35016a53e70d7474b744a3fa81236b48d7d1",
         intel: "984a046bb3981b874312619d50b375137903c8f70de9cdf6f12fb5b226dc4876"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
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
