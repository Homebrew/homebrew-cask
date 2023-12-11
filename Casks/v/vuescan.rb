cask "vuescan" do
  version "9.8.22"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.hamrick.com/files/vuea64#{version.major_minor.no_dots}.dmg"
  name "VueScan"
  desc "App that provides drivers for older model scanners that are no longer supported"
  homepage "https://www.hamrick.com/"

  livecheck do
    url "https://www.hamrick.com/vuescan/vuescan.htm"
    regex(%r{href=.*?vuescan-versions/(\d+(?:\.\d+)+)\.html}i)
  end

  app "VueScan.app"

  zap trash: [
        "~/.vuescanrc",
        "~/Library/Preferences/com.hamrick.vuescan.plist",
        "~/Library/Saved Application State/com.hamrick.vuescan.savedState",
        "~/Pictures/VueScan/vuescan.ini",
        "~/Pictures/VueScan/vuescan.log",
      ],
      rmdir: "~/Pictures/VueScan"
end
