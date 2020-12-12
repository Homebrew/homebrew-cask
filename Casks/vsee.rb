cask "vsee" do
  version "4.9.2,42418"
  sha256 "84d4414119fa8738a05f307f2cdf1a9914d8c880d601f55247371bc83de937e0"

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
