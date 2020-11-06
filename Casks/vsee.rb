cask "vsee" do
  version "4.9.0,41832"
  sha256 "eeaa9b062a150d9d28c2e9f4c19c4d89ba56920be35ee6ee99e16077ca194784"

  # d2q5hugz2rti4w.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.after_comma}/vseemac.dmg"
  appcast "https://client.vsee.com/mac/appcast.xml"
  name "VSee"
  desc "Group video calls, screen sharing and instant messaging"
  homepage "https://vsee.com/"

  app "VSee.app"

  uninstall delete: "~/Library/Internet Plug-Ins/VSeeHelper.plugin"

  zap trash: [
    "~/Library/Preferences/com.vsee.VSee.plist",
    "~/Library/Application Support/VSee",
    "~/Library/Caches/com.vsee.VSee",
    "~/Library/Logs/VSee",
  ]
end
