cask "xmplify" do
  version "1.11.9"
  sha256 "cc10053193352b621a585ae349975257771bbcce984506a681377b5e94aace6b"

  url "https://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  name "Xmplify"
  desc "XML editor"
  homepage "https://xmplifyapp.com/"

  livecheck do
    url "https://xmplifyapp.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Xmplify.app"

  uninstall quit: "au.com.moso.Xmplify"

  zap trash: [
    "~/Library/Caches/au.com.moso.Xmplify",
    "~/Library/Logs/Xmplify*.log",
    "~/Library/Preferences/au.com.moso.Xmplify*.plist",
    "~/Library/Saved Application State/au.com.moso.Xmplify.savedState",
  ]
end
