cask "vsee" do
  version "4.9.4,42602"
  sha256 "40fcd64af62c850c0e697310672282cc4a349461a8f9a6c25320eb1f2e5869d6"

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
