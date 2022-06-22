cask "wow" do
  version "8.11.0"
  sha256 "c5bd58ad0c31452fb28948e2c7afe49536602e4b5c06331ec073004d2d8f328a"

  url "https://web.static.nowtv.com/watch/player/wowtv/de/#{version}/WOW-Mac.dmg",
      verified: "web.static.nowtv.com/watch/player/wowtv/"
  name "Wow TV player"
  desc "Stream Wow TV content (formerly Sky Ticket)"
  homepage "https://wowtv.de/"

  livecheck do
    url "https://web.static.nowtv.com/watch/player/wowtv/de/latest/update.json"
    strategy :page_match do |page|
      JSON.parse(page)["platforms"]["darwin"]["version"]
    end
  end

  app "WOW.app"

  zap trash: [
    "~/Library/Logs/WOW",
    "~/Library/Preferences/com.electron.wow.helper.plist",
    "~/Library/Preferences/com.electron.wow.plist",
  ]
end
