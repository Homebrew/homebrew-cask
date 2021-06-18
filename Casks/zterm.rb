cask "zterm" do
  version "1.2"
  sha256 "711b1e4322970d2ece65ab5d51e18f2e634c2f43847db9a7a98e4326e1b8217c"

  url "https://www.dalverson.com/zterm/ZTerm#{version}.dmg"
  appcast "https://www.dalverson.com/zterm/"
  name "ZTerm"
  desc "Terminal emulation program"
  homepage "https://www.dalverson.com/zterm/"

  app "ZTerm.app"
end
