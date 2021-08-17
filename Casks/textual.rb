cask "textual" do
  version "7.2.0,210619.16:32451d289"
  sha256 "260e285795ae608e8af61a61fa4e0f86b604c59251c4ab682009a15c54c044ea"

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
