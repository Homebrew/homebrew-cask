cask "xmplify" do
  version "1.9.6"
  sha256 "676a656e158fd66cfd483923cef486ddde1f938141590a2c73500088ca5af91f"

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  appcast "http://xmplifyapp.com/appcast.xml"
  name "Xmplify"
  homepage "http://xmplifyapp.com/"

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
