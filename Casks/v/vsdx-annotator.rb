cask "vsdx-annotator" do
  version "1.16.1"
  sha256 :no_check

  url "https://nektony.com/download/vsdxannotator.dmg"
  name "Nektony VSDX Annotator"
  desc "Preview, edit and convert Visio drawings"
  homepage "https://nektony.com/products/vsdx-annotator-mac"

  livecheck do
    url "https://download.nektony.com/promo/vsdx-annotator/update/update.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "VSDX Annotator.app"

  zap trash: [
    "~/Library/Application Support/VSDX Annotator",
    "~/Library/Caches/com.nektony.vsdx-annotators",
    "~/Library/Cookies/com.nektony.vsdx-annotators.binarycookies",
    "~/Library/Preferences/com.nektony.vsdx-annotators.plist",
  ]
end
