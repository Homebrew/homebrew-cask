cask "yojimbo" do
  version "4.7"
  sha256 "53d4776a1b90c18f76a264ae21cad29d725078a38a6fb9e761648ef873e78dc2"

  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  name "Yojimbo"
  desc "Your effortless, reliable information organiser"
  homepage "https://www.barebones.com/products/yojimbo/"

  livecheck do
    url "https://versioncheck.barebones.com/Yojimbo.xml"
    strategy :xml do |xml|
      xml.get_elements("//key[text()='SUFeedEntryShortVersionString']").map { |item| item.next_element&.text&.strip }
    end
  end

  depends_on :macos

  app "Yojimbo.app"

  uninstall quit: "com.barebones.yojimbo#{version.major}"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Yojimbo Help*#{version}",
    "~/Library/Caches/com.barebones.yojimbo4",
    "~/Library/HTTPStorages/com.barebones.yojimbo4",
    "~/Library/Logs/Yojimbo",
    "~/Library/Preferences/com.barebones.yojimbo4.plist",
    "~/Library/Saved Application State/com.barebones.yojimbo4.savedState",
    "~/Yojimbo",
  ]
end
