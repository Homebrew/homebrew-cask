cask "xmplify" do
  version "1.11.10"
  sha256 "5123abdecb7a267e0bd69e7bbdb1011d8713d374652c308738f18e46e41929be"

  url "https://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  name "Xmplify"
  desc "XML editor"
  homepage "https://xmplifyapp.com/"

  livecheck do
    url "https://xmplifyapp.com/appcast.xml"
    strategy :sparkle
  end

  app "Xmplify.app"

  uninstall quit: "au.com.moso.Xmplify"

  zap trash: [
    "~/Library/Caches/au.com.moso.Xmplify",
    "~/Library/Logs/Xmplify*.log",
    "~/Library/Preferences/au.com.moso.Xmplify*.plist",
    "~/Library/Saved Application State/au.com.moso.Xmplify.savedState",
  ]
end
