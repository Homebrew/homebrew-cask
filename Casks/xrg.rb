cask "xrg" do
  version "2.8.2"
  sha256 "b55ce935ed9843cd318fab490ca24249fb1d593aa3ced2484ab333e3560cedb8"

  url "https://download.gauchosoft.com/xrg/XRG-release-#{version}.zip"
  appcast "https://gauchosoft.com/Products/XRG/"
  name "XRG"
  homepage "https://gauchosoft.com/Products/XRG/"

  app "XRG.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/XRG Help*",
    "~/Library/Caches/com.piatekjimenez.XRG",
    "~/Library/Cookies/com.piatekjimenez.XRG.binarycookies",
    "~/Library/Preferences/com.piatekjimenez.XRG.plist",
  ]
end
