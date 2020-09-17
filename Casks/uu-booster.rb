cask "uu-booster" do
  version "2.3.0,183"
  sha256 "4384c4c963b05f2ad3465ad2beadea123fb4eab63862fcb17571dbeff1b9f175"

  # uu.gdl.netease.com/ was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast "https://adl.netease.com/d/g/uu/c/uumac?type=pc"
  name "UU Booster"
  homepage "https://uu.163.com/down/mac/"

  app "UUBooster.app"
end
