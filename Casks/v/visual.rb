cask "visual" do
  version "1.27"
  sha256 "5d807740b610294f4b9adc60a91ab9eb45a93853f1158b04f5e2416122d0443c"

  url "https://bitbucket.org/salmanarif/visual-release/downloads/visual_osx_#{version}.zip",
      verified: "bitbucket.org/salmanarif/visual-release/"
  name "VisUAL"
  desc "Learn ARM assembly language"
  homepage "https://salmanarif.bitbucket.io/visual/"

  deprecate! date: "2024-06-28", because: :discontinued

  app "VisUAL.app"
end
