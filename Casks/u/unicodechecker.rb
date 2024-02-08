cask "unicodechecker" do
  version "1.24,835"
  sha256 "9bfd37706cbcf5c0d579bb4dab904cf9e31d69fa6f1efa7923aa67cf6ebd2ef0"

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
