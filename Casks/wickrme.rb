cask "wickrme" do
  version "5.97.4"
  sha256 "3e82886ffdb44b36e71ee1b6cda2809333a7f2bb209634e04f49d95d3a7d28bc"

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
