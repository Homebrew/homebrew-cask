cask "unicodechecker" do
  version "1.25,858"
  sha256 "affa818e149022ded63f808c633a423aec815d665c5fe3665c7c54d4882a5529"

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
