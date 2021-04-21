cask "textual" do
  version "7.1.6,200409.17:8cdeb222c"
  sha256 "09b69a385f9c770b020ffe18b5d11515eed11f20001a21cc6758defe621b43d4"

  url "https://cached.codeux.com/textual/downloads/resources/builds/standard-release/Textual-#{version.after_colon}.zip"
  name "Textual"
  desc "Application for interacting with Internet Relay Chat (IRC) chatrooms"
  homepage "https://www.codeux.com/textual/"

  livecheck do
    url "https://textual-updates-backend.codeux.com/sparkle/feeds/v7/feed-one.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[/Textual-(.*?)\.zip/i, 1]}"
    end
  end

  auto_updates true

  app "Textual.app"

  zap trash: [
    "~/Library/Preferences/com.codeux.apps.textual.plist",
    "~/Library/Application Support/Textual",
  ]
end
