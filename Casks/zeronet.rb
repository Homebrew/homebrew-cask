cask "zeronet" do
  version "0.7.2"
  sha256 :no_check

  url "https://github.com/HelloZeroNet/ZeroNet-dist/archive/mac/ZeroNet-dist-mac.zip",
      verified: "github.com/HelloZeroNet/ZeroNet-dist/"
  name "ZeroNet"
  homepage "https://zeronet.io/"

  app "ZeroNet-dist-mac/ZeroNet.app"
end
