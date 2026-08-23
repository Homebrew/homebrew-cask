cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.0"
  sha256 arm:   "42c1e3e169d6d523a8574d49e294282ee03efa08475ae52260ecf5bfd45cbefe",
         intel: "f0cd916a384492e2b70b6d080b9c97db10d77a5d41df4fd3db5e19c2e37e8657"

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
