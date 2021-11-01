cask "wickrme" do
  version "5.90.3"
  sha256 "ee08ff3d58c5645618146fe4b3e89b52651fd5d2ace166b0a08f2db8f4299ede"

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
