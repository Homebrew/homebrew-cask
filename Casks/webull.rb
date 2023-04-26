cask "webull" do
  version "6.11.5"
  sha256 "cf65cbf2a31775ee3e956578ffb7bddd4130c7ba5a530289a865567071059a30"

  url "https://u1sweb.webullfintech.com/us/Webull%20Desktop_#{version}_global_universalsigned.dmg",
      verified: "u1sweb.webullfintech.com/us/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://www.webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=qt_mac_global&osv=10.14"
    regex(/Webull%20Desktop[._-](\d+(?:\.\d+)+).*?.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
