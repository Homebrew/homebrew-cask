cask "wickrme" do
  version "5.102.9"
  sha256 "495c6577a595cb03aab62a7932937ee51f001e49281cfb7137a13060515549b3"

  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg",
      verified: "s3.amazonaws.com/static.wickr.com/"
  name "Wickr Me"
  desc "Desktop client for Wickr Me"
  homepage "https://wickr.com/me/"

  livecheck do
    url "https://me-download.wickr.com/api/multiVerify/me/undefined/"
    strategy :page_match do |page|
      JSON.parse(page).map do |item|
        item["version"] if item["os"] == "mac"
      end.compact
    end
  end

  depends_on macos: ">= :high_sierra"

  app "WickrMe.app"

  zap trash: "~/Library/Preferences/com.wickr-llc.WickrMe.plist"
end
