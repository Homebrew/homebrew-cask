cask "writefull" do
  version "3.0.0-beta19"
  sha256 "0b424a82bbf184661ca7f0dd6459a8248ccb643cf07855fadab1481e10445c8d"

  url "https://writefull-binaries.s3.amazonaws.com/#{version}/Writefull.dmg",
      verified: "writefull-binaries.s3.amazonaws.com/"
  name "Writefull"
  desc "Provides feedback on your writing"
  homepage "https://writefullapp.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Writefull.app"

  zap trash: [
    "~/Library/Application Support/Writefull_3beta",
    "~/Library/Application Support/com.paraphrase.Writefull.ShipIt",
    "~/Library/Caches/Writefull_3beta",
    "~/Library/Caches/com.paraphrase.Writefull",
    "~/Library/Preferences/com.paraphrase.Writefull.plist",
    "~/Library/Saved Application State/com.paraphrase.Writefull.savedState",
  ]
end
