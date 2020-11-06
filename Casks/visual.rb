cask "visual" do
  version "1.27"
  sha256 "5d807740b610294f4b9adc60a91ab9eb45a93853f1158b04f5e2416122d0443c"

  # bitbucket.org/salmanarif/visual-release/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/salmanarif/visual-release/downloads/visual_osx_#{version}.zip"
  appcast "https://salmanarif.bitbucket.io/visual/downloads.html"
  name "VisUAL"
  homepage "https://salmanarif.bitbucket.io/visual/"

  app "VisUAL.app"
end
