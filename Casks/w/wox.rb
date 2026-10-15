cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.7"
  sha256 arm:   "3f0520dfe47bf8fcf816e2af38c8d3fba3e1e9e52153453ade95ece27fddcbc4",
         intel: "3932801f263f9c2d994752871d0243d96020a5d3a3b0617096fe4803fa491307"

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
