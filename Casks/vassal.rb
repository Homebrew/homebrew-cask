cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.14"
  sha256 arm:   "c391f17bf0bb30d9eea3f0d86f8766c9471fbb34e3693f8699d8b164e452f557",
         intel: "f74bae876fcc7f36b18fac72303751de31d625f6c73e0e37dbe2e7722cac58f7"

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
