cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.7.0"
  sha256 arm:   "f56f7d9d9414f05cebac80723cb1243bd83bd86ac256cc28a62187f342c54798",
         intel: "f7a97ebb061d7afeb908d5a5d76312740ea76c86eef6a98358adf9d551d4482e"

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
