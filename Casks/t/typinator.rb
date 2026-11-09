cask "typinator" do
  version "10.3"
  sha256 "7251fcfa50a9922f6d36c159400d3608e724a31e9bbb37660ceff1f0da353b3d"

  url "https://storage.ergonis.com/apps/production/typinator/archive/Typinator_#{version.no_dots}.dmg"
  name "Typinator"
  desc "Tool to automate the insertion of frequently used text and graphics"
  homepage "https://ergonis.com/en/typinator/"

  livecheck do
    url "https://update.ergonis.com/vck/typinator.xml"
    strategy :xml do |xml|
      xml.elements["//Program_Info/Program_Version"]&.text&.strip
    end
  end

  depends_on macos: :ventura

  app "Typinator.app"

  uninstall quit: "com.macility.typinator2"

  zap trash: [
    "~/Desktop/Typinator Tutorial.rtfd",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macility.typinator2.sfl*",
    "~/Library/Application Support/Typinator",
    "~/Library/Caches/com.macility.typinator2",
    "~/Library/HTTPStorages/com.macility.typinator2",
    "~/Library/Preferences/com.macility.typinator2.plist",
  ]
end
