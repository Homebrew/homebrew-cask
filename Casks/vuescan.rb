cask "vuescan" do
  version "9.7.99"
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
end
