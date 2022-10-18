cask "wow" do
  version "8.12.2"
  sha256 "e336beab755bdfbbf37c5ff2758cf1160152454edab7201359ffa8e895a54fc0"

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
