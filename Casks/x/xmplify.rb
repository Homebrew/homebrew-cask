cask "xmplify" do
  version "1.11.11"
  sha256 "ed2bbb1f77bf83fd64f209ad487495cb03c05d7f61512e40e2e6b98dc93910ee"

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
