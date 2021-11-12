cask "xmplify" do
  version "1.10.3"
  sha256 "497d87a00e6112ae818ecc47936061f54e71178ef3594f2af5251805eda666f7"

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
    "~/Library/Logs/Xmplify.log",
    "~/Library/Logs/Xmplify Quick Look Generator.log",
    "~/Library/Preferences/au.com.moso.Xmplify.plist",
    "~/Library/Preferences/au.com.moso.Xmplify.LSSharedFileList.plist",
    "~/Library/Saved Application State/au.com.moso.Xmplify.savedState",
  ]
end
