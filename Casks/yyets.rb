cask "yyets" do
  version "3.2.8"
  sha256 "714e5aeff7be70be373f4bc289bc1378334a0b77f41641aba9bb1de8e83bf57d"

  url "http://appdown.rrys.tv/RRShare_#{version}.dmg"
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
