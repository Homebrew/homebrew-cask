cask "xmplify" do
  version "1.9.5"
  sha256 "2ca369052f61ac40535f4cc4e651e8517a0ef737840c86c8b7f7010a6da44b94"

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
