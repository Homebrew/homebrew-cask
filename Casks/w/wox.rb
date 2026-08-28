cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.1"
  sha256 arm:   "449912ba0b605d13b4fe39c5ffed7c8dfc08143c365c5779185caa619f62428d",
         intel: "4ee77a02f02a6c5f4ce6a3a3f918ced24d6b79ea79ed78d016c557c7bae4fd31"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Launcher tool"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Wox.app"

  zap trash: "~/.wox"
end
