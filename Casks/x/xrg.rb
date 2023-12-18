cask "xrg" do
  version "3.2.1"
  sha256 "26892490b0b67c2baf6286e6360a7a88236fe16e4d94708ba8722037431a1de4"

  url "https://download.gauchosoft.com/xrg/XRG-release-#{version}.zip",
      verified: "download.gauchosoft.com/xrg/"
  name "XRG"
  desc "System monitor"
  homepage "https://gaucho.software/Products/XRG/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/XRG[._-]release[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "XRG.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/XRG Help*",
    "~/Library/Caches/com.piatekjimenez.XRG",
    "~/Library/Cookies/com.piatekjimenez.XRG.binarycookies",
    "~/Library/Preferences/com.piatekjimenez.XRG.plist",
  ]
end
