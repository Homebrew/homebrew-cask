cask "unicodechecker" do
  version "1.23,796"
  sha256 "4cfc69e10860ffe5080f42acdbd43bcd8518d94c7e294cf0070521b9d8097cee"

  url "https://earthlingsoft.net/UnicodeChecker/UnicodeChecker%20#{version.csv.first}%20(#{version.csv.second}).zip"
  name "UnicodeChecker"
  desc "Explore and convert Unicode"
  homepage "https://earthlingsoft.net/UnicodeChecker/"

  livecheck do
    url "https://earthlingsoft.net/UnicodeChecker/appcast.xml"
    strategy :sparkle
  end

  app "UnicodeChecker.app"

  zap trash: [
    "~/Library/Application Support/UnicodeChecker",
    "~/Library/Caches/net.earthlingsoft.UnicodeChecker",
    "~/Library/Preferences/net.earthlingsoft.UnicodeChecker.plist",
  ]
end
