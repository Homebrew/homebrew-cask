cask "wickrme" do
  version "5.85.9"
  sha256 "db2541b4158dbbeff2d33154f8b2ad8e07cf5624ad5bb422fc9cd606c12fd38d"

  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg",
      verified: "s3.amazonaws.com/static.wickr.com/"
  name "Wickr Me"
  desc "Desktop client for Wickr Me"
  homepage "https://wickr.com/products/personal/"

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
