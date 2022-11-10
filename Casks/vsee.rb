cask "vsee" do
  version "4.15.3,50209"
  sha256 "bc2b6318fa2f2d8e9796aa7cc1cc35f10d068ed6fa9d7d8b2d933a2f9f64cbe5"

  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.csv.second}/vseemac.dmg",
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
