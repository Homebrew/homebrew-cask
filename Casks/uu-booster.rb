cask "uu-booster" do
  version "2.3.1,185"
  sha256 "a219f4a4ec76db91a767109923e106ec66cbf876f0dd87d3d2cfecdc4127cd31"

  # uu.gdl.netease.com/ was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast "https://adl.netease.com/d/g/uu/c/uumac?type=pc"
  name "UU Booster"
  homepage "https://uu.163.com/down/mac/"

  app "UUBooster.app"
end
