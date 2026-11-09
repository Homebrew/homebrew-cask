cask "vsee" do
  version "4.29.0,53033"
  sha256 "41012d31cb448c7785cacf976fd7e68f23123ced5400f055dbdf7b8194f701e5"

  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.csv.second}/vseemac.dmg"
  name "VSee"
  desc "Group video calls, screen sharing and instant messaging"
  homepage "https://vsee.com/"

  livecheck do
    url "https://client.vsee.com/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on :macos

  app "VSee.app"

  uninstall delete: "~/Library/Internet Plug-Ins/VSeeHelper.plugin"

  zap trash: [
    "~/Library/Application Support/VSee",
    "~/Library/Caches/com.vsee.VSee",
    "~/Library/Logs/VSee",
    "~/Library/Preferences/com.vsee.VSee.plist",
  ]
end
