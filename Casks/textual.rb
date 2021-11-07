cask "textual" do
  version "7.2.1,210711.11:9d231fdb0"
  sha256 "3e7b1bb5431c356bfd61142486a096707b68fe8afe6243ba41d0e10332b4111a"

  url "https://cached.codeux.com/textual/downloads/resources/builds/Textual-#{version.after_colon}/universal/Textual.zip"
  name "Textual"
  desc "Application for interacting with Internet Relay Chat (IRC) chatrooms"
  homepage "https://www.codeux.com/textual/"

  livecheck do
    url "https://textual-updates-backend.codeux.com/sparkle/feeds/v7/feed-one.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[%r{/Textual[._-]v?([\dA-z]+)/universal/Textual.zip}i, 1]}"
    end
  end

  auto_updates true

  app "Textual.app"

  zap trash: [
    "~/Library/Preferences/com.codeux.apps.textual.plist",
    "~/Library/Application Support/Textual",
  ]
end
