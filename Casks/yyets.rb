cask "yyets" do
  version "3.3.2"
  sha256 "6183e197016f3d95fc93079e87ed3656fe15c81176fe252537332258ac5430b1"

  url "http://appdown.rrys.tv/RRShare#{version}.dmg"
  name "YYeTs"
  name "人人影视"
  homepage "http://app.rrys.tv/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/RRShare(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "人人影视.app"

  zap trash: [
    "~/Library/Application Support/rrshare",
    "~/Library/Caches/人人影视",
    "~/Library/Preferences/com.yyets.rrshare.人人影视.plist",
    "~/Library/Saved Application State/com.yyets.RRShare.savedState",
  ]
end
