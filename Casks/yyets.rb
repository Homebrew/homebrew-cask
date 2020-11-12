cask "yyets" do
  version "3.3.0"
  sha256 "3908733cef7109b75246f25567cfaa1a9e49e5da41ad537938b98454b22c3a7e"

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
