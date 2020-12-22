cask "unicodechecker" do
  version "1.22,776"
  sha256 "3c173ef1984cc42baa0dd03cfbd4d07cf18c75e3699b2c2a3a24250ac77fbe4f"

  url "https://earthlingsoft.net/UnicodeChecker/UnicodeChecker%20#{version.before_comma}%20(#{version.after_comma}).zip"
  name "UnicodeChecker"
  homepage "https://earthlingsoft.net/UnicodeChecker/"

  livecheck do
    url "https://earthlingsoft.net/UnicodeChecker/appcast.xml"
    strategy :sparkle
  end

  app "UnicodeChecker #{version.before_comma} (#{version.after_comma})/UnicodeChecker.app"

  zap trash: [
    "~/Library/Application Support/UnicodeChecker",
    "~/Library/Caches/net.earthlingsoft.UnicodeChecker",
    "~/Library/Preferences/net.earthlingsoft.UnicodeChecker.plist",
  ]
end
