cask "wow" do
  version "8.14.0"
  sha256 "fce66ae9cf3cbd7e0b31a871b6b73c9aa9687787919bea0663d86ebfffa12058"

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
