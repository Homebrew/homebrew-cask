cask "vsd-viewer" do
  version "6.16.1,563"
  sha256 "90f81fb301a0c9a72b67a715d2cac3e068d1b290472bc693cee568963bfbad69"

  url "https://download.nektony.com/promo/vsd-viewer/update/update_v#{version.csv.first}b#{version.csv.second}.zip"
  name "Nektony VSD Viewer"
  desc "Preview .VSD, .VDX, .VSDX file formats of Visio drawings"
  homepage "https://nektony.com/free-visio-viewer-mac"

  livecheck do
    url "https://download.nektony.com/promo/vsd-viewer/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "VSD Viewer.app"

  zap trash: [
    "~/Library/Application Support/VSD Viewer",
    "~/Library/Caches/com.nektony.vsdviewers",
    "~/Library/Cookies/com.nektony.vsdviewers.binarycookies",
    "~/Library/Preferences/com.nektony.vsdviewers.plist",
  ]
end
