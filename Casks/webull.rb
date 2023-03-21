cask "webull" do
  version "6.10.0"
  sha256 "5573604370be971b628851fc122ef7a86bae82d1af64ace572a03cd42c207043"

  url "https://u1sweb.webullfintech.com/us/Webull%20Desktop_#{version}_global_universalsigned.dmg",
      verified: "u1sweb.webullfintech.com/us/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=qt_mac_global&osv=10.14"
    regex(/Webull%20Desktop[._-](\d+(?:\.\d+)+).*?.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :mojave"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
