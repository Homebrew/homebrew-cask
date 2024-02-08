cask "vsd-viewer" do
  version "6.16.1"
  sha256 :no_check

  url "https://download.nektony.com/download/vsdviewer.dmg"
  name "Nektony VSD Viewer"
  desc "Preview .VSD, .VDX, .VSDX file formats of Visio drawings"
  homepage "https://nektony.com/free-visio-viewer-mac"

  livecheck do
    url "https://download.nektony.com/promo/vsd-viewer/update/update.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "VSD Viewer.app"

  zap trash: [
    "~/Library/Application Support/VSD Viewer",
    "~/Library/Caches/com.nektony.vsdviewers",
    "~/Library/Cookies/com.nektony.vsdviewers.binarycookies",
    "~/Library/Preferences/com.nektony.vsdviewers.plist",
  ]
end
