cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.4"
  sha256 arm:   "dfa2a016fb2bdaa4a65f2ed3647924705cca10f5972e08847e7d8683a0916a2d",
         intel: "d1bbd750160e5ac37cd4d993f4eefbc0836067da7e8ccad1ac6f3111ae652fb0"

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
