cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.0"
  sha256 arm:   "613c4474715a93e59e55f503e6d3ee2cdb138c56ee9e80ff50fdf11a9666ee06",
         intel: "4d8b6dc6559c2f7700cec56fa036c63b6e52f7a1850fe78c6a47fc4a6c1bb159"

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
