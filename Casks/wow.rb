cask "wow" do
  version "8.12.0"
  sha256 "b6bfa40a475967bc7eedd169915e010ae1ebb59438d262a3fa191c2e4d06c471"

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
