cask "uu-booster" do
  version "2.1.3,169"
  sha256 "dc7c9d522e4718479edefef0b86488b0f27ed72aec70e6db404ff6ea178acd11"

  # uu.gdl.netease.com/ was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast "https://adl.netease.com/d/g/uu/c/uumac?type=pc"
  name "UU Booster"
  homepage "https://uu.163.com/down/mac/"

  app "UUBooster.app"
end
