cask "xmplify" do
  version "1.11.2"
  sha256 "671e62e6d4f6560ccb01f5c13b9f948615189dd150d1fa153d2b035ad6f3bb85"

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
