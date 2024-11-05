cask "xmenu" do
  version "1.9.11"
  sha256 "dec29c0006cae59f2720df4628891a8f8d157a598897892b763521beb3f3105d"

  url "https://download.devontechnologies.com/download/freeware/xmenu/#{version}/XMenu.app.zip"
  name "XMenu"
  desc "Access folders, files or text snippets from the menu bar"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url "https://api.devontechnologies.com/1/apps/updates.plist.php?product=XMenu&version=#{version}"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='XMenu']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  app "XMenu.app"

  zap trash: [
    "~/Library/Application Support/XMenu",
    "~/Library/Caches/com.apple.helpd/Generated/com.devontechnologies.xmenu.help*",
    "~/Library/Caches/com.devon-technologies.XMenu",
    "~/Library/Preferences/com.devon-technologies.XMenu.plist",
  ]
end
