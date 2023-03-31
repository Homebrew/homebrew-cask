cask "vsee" do
  version "4.17.0,50535"
  sha256 "0e3b549f2635c79f8cbf41f6e85c6b7cecbabbbbd67acc2f97cfbce574317a84"

  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.csv.second}/vseemac.dmg",
      verified: "d2q5hugz2rti4w.cloudfront.net/mac/"
  name "VSee"
  desc "Group video calls, screen sharing and instant messaging"
  homepage "https://vsee.com/"

  livecheck do
    url "https://client.vsee.com/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "VSee.app"

  uninstall delete: "~/Library/Internet Plug-Ins/VSeeHelper.plugin"

  zap trash: [
    "~/Library/Application Support/VSee",
    "~/Library/Caches/com.vsee.VSee",
    "~/Library/Logs/VSee",
    "~/Library/Preferences/com.vsee.VSee.plist",
  ]
end
