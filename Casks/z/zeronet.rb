cask "zeronet" do
  version "0.7.1"
  sha256 :no_check

  url "https://github.com/HelloZeroNet/ZeroNet-dist/archive/mac/ZeroNet-dist-mac.zip",
      verified: "github.com/HelloZeroNet/ZeroNet-dist/"
  name "ZeroNet"
  desc "Decentralized websites using Bitcoin crypto and BitTorrent network"
  homepage "https://zeronet.io/"

  livecheck do
    url "https://github.com/HelloZeroNet/ZeroNet/releases/"
    strategy :github_latest
  end

  app "ZeroNet-dist-mac/ZeroNet.app"

  zap trash: [
    "~/Library/Application Support/ZeroNet",
    "~/Library/Saved Application State/org.pythonmac.unspecified.ZeroNet.savedState",
  ]
end
