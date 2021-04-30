cask "xrg" do
  version "3.0.0"
  sha256 "9e3a70c7c5ab58b5e891a4c0766e02be4f4cfc1b6c070b7c24c5e3ee6bb8512e"

  url "https://download.gauchosoft.com/xrg/XRG-release-#{version}.zip"
  name "XRG"
  homepage "https://gauchosoft.com/Products/XRG/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/XRG-release-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "XRG.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/XRG Help*",
    "~/Library/Caches/com.piatekjimenez.XRG",
    "~/Library/Cookies/com.piatekjimenez.XRG.binarycookies",
    "~/Library/Preferences/com.piatekjimenez.XRG.plist",
  ]
end
