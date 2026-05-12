cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.3"
  sha256 arm:   "30b2f9b462c121e17336fb7e9ed0c028289bc97f4935923d6bea30ac48562498",
         intel: "f7ed97ef9f7b2d65a076cd337448607e4aaabd9462835f81990482dcb93f97f5"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Launcher tool"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur

  app "Wox.app"

  zap trash: "~/.wox"
end
