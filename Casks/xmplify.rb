cask "xmplify" do
  if MacOS.version <= :mojave
    version "1.9.8"
    sha256 "b742d5f039e119758ea2548a59a17aac5cb329c2102f835ca67e90e738f2cb7e"
  else
    version "1.10"
    sha256 "f0f6736b12769fc5ba53ac8bc24a87667887804d9521f46ba211cbc7f35cb68d"
  end

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
