cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.13"
  sha256 arm:   "b18e5f2afc6e1232c9a994fae400e5504c45532cd3c0711ed51aa7c11f645e16",
         intel: "4b4659f98a9f87168261a4226fac2781814787c62bb501cb5dd6420028e4a6c2"

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
end
