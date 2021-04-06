cask "uu-booster" do
  version "2.4.0,200"
  sha256 "7729f6d9018ecb5a0fbe8b658f5060accb87216b6954d85913a906e6a5adece2"

  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg",
      verified: "uu.gdl.netease.com/"
  appcast "https://adl.netease.com/d/g/uu/c/uumac?type=pc"
  name "UU Booster"
  homepage "https://uu.163.com/down/mac/"

  app "UUBooster.app"
end
