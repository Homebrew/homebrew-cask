cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.2.0"
  sha256 arm:   "0cb2d099b4c80170b5a9e816b2bb80dbd34498b6901b63e5bffd6d1fa835826e",
         intel: "0386ee8a92014c53cbe824fcd13637de5df901b874f937cde23c60888ca455e3"

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
