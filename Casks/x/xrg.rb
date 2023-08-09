cask "xrg" do
  version "3.2.0"
  sha256 "6fd44ec881808be1ff4716183b9d87ca32e8893c66da33214776d407ebff5e64"

  url "https://download.gauchosoft.com/xrg/XRG-release-#{version}.zip"
  name "XRG"
  desc "System monitor"
  homepage "https://gauchosoft.com/Products/XRG/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/XRG-release-(\d+(?:\.\d+)+)\.zip}i)
  end

  app "XRG.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/XRG Help*",
    "~/Library/Caches/com.piatekjimenez.XRG",
    "~/Library/Cookies/com.piatekjimenez.XRG.binarycookies",
    "~/Library/Preferences/com.piatekjimenez.XRG.plist",
  ]
end
