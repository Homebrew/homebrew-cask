cask "xmplify" do
  version "1.11.3"
  sha256 "ab76d2e9dc0b18c6201b3776a2917c4d96575c6e5de253bb1f0120a2efc55992"

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  name "Xmplify"
  desc "XML editor"
  homepage "http://xmplifyapp.com/"

  livecheck do
    url "http://xmplifyapp.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Xmplify.app"

  uninstall quit: "au.com.moso.Xmplify"

  zap trash: [
    "~/Library/Caches/au.com.moso.Xmplify",
    "~/Library/Logs/Xmplify*.log",
    "~/Library/Preferences/au.com.moso.Xmplify*.plist",
    "~/Library/Saved Application State/au.com.moso.Xmplify.savedState",
  ]
end
