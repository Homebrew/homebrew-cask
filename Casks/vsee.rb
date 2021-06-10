cask "vsee" do
  version "4.11.1,43366"
  sha256 "b1486f8fc52fc94d3dd03d37e3c6b3ca53a46b5cc8f5f92e4930e91d477e8b97"

  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.after_comma}/vseemac.dmg",
      verified: "d2q5hugz2rti4w.cloudfront.net/"
  name "VSee"
  desc "Group video calls, screen sharing and instant messaging"
  homepage "https://vsee.com/"

  livecheck do
    url "https://client.vsee.com/mac/appcast.xml"
    strategy :sparkle
  end

  app "VSee.app"

  uninstall delete: "~/Library/Internet Plug-Ins/VSeeHelper.plugin"

  zap trash: [
    "~/Library/Preferences/com.vsee.VSee.plist",
    "~/Library/Application Support/VSee",
    "~/Library/Caches/com.vsee.VSee",
    "~/Library/Logs/VSee",
  ]
end
