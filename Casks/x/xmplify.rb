cask "xmplify" do
  version "1.11.7"
  sha256 "74d04e7d1f77af262497c5d3ead4636f0103dcb8157cbdc1dd23074c7c1d40bf"

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
