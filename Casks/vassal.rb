cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.11"
  sha256 arm:   "b7f419d922ea3a99b6c3188bcaf0a553923d085db73a481393a19eaf7fd4fd82",
         intel: "35cd3e3e936ff59330e956ac8041b8096a5d1fba8436b0bcb434ca0adfa769bb"

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
