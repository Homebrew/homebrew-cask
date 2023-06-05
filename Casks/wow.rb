cask "wow" do
  version "8.15.0"
  sha256 "df61c77ba1cb06443b0afb101b809d189903d985dc7e3994bff30cc81c785587"

  url "https://web.static.nowtv.com/watch/player/wowtv/de/#{version}/WOW-Mac.dmg",
      verified: "web.static.nowtv.com/watch/player/wowtv/"
  name "Wow TV player"
  desc "Stream Wow TV content (formerly Sky Ticket)"
  homepage "https://wowtv.de/"

  livecheck do
    url "https://web.static.nowtv.com/watch/player/wowtv/de/latest/update.json"
    strategy :json do |json|
      json["platforms"]["darwin"]["version"]
    end
  end

  app "WOW.app"

  zap trash: [
    "~/Library/Logs/WOW",
    "~/Library/Preferences/com.electron.wow.helper.plist",
    "~/Library/Preferences/com.electron.wow.plist",
  ]
end
