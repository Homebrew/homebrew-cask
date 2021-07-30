cask "vsdx-annotator" do
  version "1.15.1,556"
  sha256 :no_check

  url "https://nektony.com/download/vsdxannotator.dmg"
  name "Nektony VSDX Annotator"
  desc "Preview, edit and convert Visio drawings"
  homepage "https://nektony.com/products/vsdx-annotator-mac"

  livecheck do
    url "https://nektony.com/promo/vsdx-annotator/update/update.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "VSDX Annotator.app"

  zap trash: [
    "~/Library/Application Support/VSDX Annotator",
    "~/Library/Caches/com.nektony.vsdx-annotators",
    "~/Library/Cookies/com.nektony.vsdx-annotators.binarycookies",
    "~/Library/Preferences/com.nektony.vsdx-annotators.plist",
  ]
end
