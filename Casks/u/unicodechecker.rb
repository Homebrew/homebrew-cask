cask "unicodechecker" do
  version "1.25.1,862"
  sha256 "f6cc0c4e6904e3429e600db741a7bf26bbda2d7efb9eabac5f56b9475a6bfa6f"

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
