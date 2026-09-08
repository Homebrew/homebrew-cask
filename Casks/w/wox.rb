cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.2"
  sha256 arm:   "824a8ee5c85b6e2a8da74c9bdd0d20ffc47c117eabd1ffec6cbfa2aca1d04db0",
         intel: "5ade637be42a13106fcbe3601d497219a3ccb5e795648566781ae753111f79be"

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
