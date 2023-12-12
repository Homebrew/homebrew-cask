cask "vsee" do
  version "4.20.0,51036"
  sha256 "6085bcfdf7da9758a80191bfc24e69e98b5b95f55ea8bee18864fdbaed61dde9"

  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.csv.second}/vseemac.dmg",
      verified: "d2q5hugz2rti4w.cloudfront.net/mac/"
  name "VSee"
  desc "Group video calls, screen sharing and instant messaging"
  homepage "https://vsee.com/"

  livecheck do
    url "https://client.vsee.com/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "VSee.app"

  uninstall delete: "~/Library/Internet Plug-Ins/VSeeHelper.plugin"

  zap trash: [
    "~/Library/Application Support/VSee",
    "~/Library/Caches/com.vsee.VSee",
    "~/Library/Logs/VSee",
    "~/Library/Preferences/com.vsee.VSee.plist",
  ]
end
