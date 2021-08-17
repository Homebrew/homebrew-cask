cask "vsee" do
  version "4.11.3,43458"
  sha256 "f1c001959126c114b535e2e98d6f5e7f75cf328e2e2fa8cda1c4535a7f0e6030"

  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.after_comma}/vseemac.dmg",
      verified: "d2q5hugz2rti4w.cloudfront.net/"
  name "VSee"
  desc "Group video calls, screen sharing and instant messaging"
  homepage "https://vsee.com/"

  livecheck do
    url "https://client.vsee.com/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "VSee.app"

  uninstall delete: "~/Library/Internet Plug-Ins/VSeeHelper.plugin"

  zap trash: [
    "~/Library/Application Support/VSee",
    "~/Library/Caches/com.vsee.VSee",
    "~/Library/Logs/VSee",
    "~/Library/Preferences/com.vsee.VSee.plist",
  ]
end
