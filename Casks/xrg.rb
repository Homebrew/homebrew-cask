cask "xrg" do
  version "3.1.0"
  sha256 "97d78bbd010cbf61df9dc3fc99030a17567216b313c9297c285de2497b6cc765"

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
