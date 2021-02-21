cask "xmplify" do
  version "1.9.7"
  sha256 "dfe7e29fff60b546035f3c64a5fbd3f111d6deedfb13770326a4c75b6f484790"

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  name "Xmplify"
  homepage "http://xmplifyapp.com/"

  livecheck do
    url "http://xmplifyapp.com/appcast.xml"
    strategy :sparkle
  end

  app "Xmplify.app"

  uninstall quit: "au.com.moso.Xmplify"

  zap trash: [
    "~/Library/Caches/au.com.moso.Xmplify",
    "~/Library/Logs/Xmplify.log",
    "~/Library/Logs/Xmplify Quick Look Generator.log",
    "~/Library/Preferences/au.com.moso.Xmplify.plist",
    "~/Library/Preferences/au.com.moso.Xmplify.LSSharedFileList.plist",
    "~/Library/Saved Application State/au.com.moso.Xmplify.savedState",
  ]
end
