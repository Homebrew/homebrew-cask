cask "zeronet" do
  version "0.7.1"
  sha256 :no_check

  # github.com/HelloZeroNet/ZeroNet-mac/ was verified as official when first introduced to the cask
  url "https://github.com/HelloZeroNet/ZeroNet-dist/archive/mac/ZeroNet-dist-mac.zip"
  name "ZeroNet"
  homepage "https://zeronet.io/"

  app "ZeroNet-dist-mac/ZeroNet.app"
end
