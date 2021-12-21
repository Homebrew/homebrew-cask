cask "wickrme" do
  version "5.93.5"
  sha256 "162cdb4eff0c164777cec824ab5b208db46c1ce8d82e066c8ab2bb8b6a4076b0"

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
end
