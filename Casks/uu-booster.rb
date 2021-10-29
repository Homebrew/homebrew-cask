cask "uu-booster" do
  version "2.6.4,228"
  sha256 "836ef54e35f412288c90e56bf8ac1ef58585002d37dccf90fc1185b4722ae0d0"

  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg",
      verified: "uu.gdl.netease.com/"
  appcast "https://adl.netease.com/d/g/uu/c/uumac?type=pc"
  name "UU Booster"
  homepage "https://uu.163.com/down/mac/"

  app "UUBooster.app"
end
