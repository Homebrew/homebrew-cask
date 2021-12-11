cask "xstation5" do
  # NOTE: "5" is not a version number, but an intrinsic part of the product name
  version "2.35.0-Build.3"
  sha256 :no_check

  url "https://desktopxstation5.xtb.com/prod/update/mac/xStation5-MacOS.dmg"
  name "xStation5"
  desc "Desktop trading platform"
  homepage "https://www.xtb.com/"

  livecheck do
    url "https://xs5.xopenhub.pro/xtb_prod/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "xStation5.app"
end
