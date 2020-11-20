cask "vsee" do
  version "4.9.1,42399"
  sha256 "5d338db64e0b1ff7c5294036c7aabe654c9b199bfa40851f04fe7c5e275c90e0"

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
