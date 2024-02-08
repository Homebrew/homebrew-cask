cask "vsee" do
  version "4.20.1,51089"
  sha256 "8d79933aa007832e5770caa09f5d6b5e531580d6c7ef820f4110b004b1fa00bc"

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
