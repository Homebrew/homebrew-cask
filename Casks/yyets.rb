cask "yyets" do
  version "3.2.9"
  sha256 "ac58cf67ca429e69cc9985a2c394c0418198aadbc53c8e232c6c4cdf8ae36a81"

  url "http://appdown.rrys.tv/RRShare#{version}.dmg"
  appcast "http://app.rrys.tv/"
  name "YYeTs"
  name "人人影视"
  homepage "http://app.rrys.tv/"

  app "人人影视.app"

  zap trash: [
    "~/Library/Application Support/rrshare",
    "~/Library/Caches/人人影视",
    "~/Library/Preferences/com.yyets.rrshare.人人影视.plist",
    "~/Library/Saved Application State/com.yyets.RRShare.savedState",
  ]
end
