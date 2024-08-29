cask "xmenu" do
  version "1.9.11"
  sha256 "dec29c0006cae59f2720df4628891a8f8d157a598897892b763521beb3f3105d"

  url "https://download.devontechnologies.com/download/freeware/xmenu/#{version}/XMenu.app.zip"
  name "XMenu"
  desc "Access folders, files or text snippets from the menu bar"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url :homepage
    regex(%r{href=.*?/xmenu/v?(\d+(?:\.\d+)+)/XMenu\.app\.zip}i)
  end

  app "XMenu.app"

  zap trash: [
    "~/Library/Application Support/XMenu",
    "~/Library/Caches/com.apple.helpd/Generated/com.devontechnologies.xmenu.help*",
    "~/Library/Caches/com.devon-technologies.XMenu",
    "~/Library/Preferences/com.devon-technologies.XMenu.plist",
  ]
end
