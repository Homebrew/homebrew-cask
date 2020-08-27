cask "uu-booster" do
  version "2.2.0,177"
  sha256 "19682a299c853331409d052115d402884aa322861b2c10234ddc5fe6039b308c"

  # uu.gdl.netease.com/ was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast "https://adl.netease.com/d/g/uu/c/uumac?type=pc"
  name "UU Booster"
  homepage "https://uu.163.com/down/mac/"

  app "UUBooster.app"
end
