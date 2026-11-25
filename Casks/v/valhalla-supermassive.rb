cask "valhalla-supermassive" do
  version "6.0.0v2"
  sha256 "d0b40014469bbdaec1d59b734c99151ec6b998e93e5322124d7d0dda68190e23"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}.dmg"
  name "Valhalla Supermassive"
  desc "Delay/reverb plugin"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"

  livecheck do
    skip "Livecheck is unreachable in autobump environment"
  end

  no_autobump! because: "livecheck is unreachable in autobump environment"

  depends_on :macos

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.supermassive.pkg.*"

  zap :not_required
end
