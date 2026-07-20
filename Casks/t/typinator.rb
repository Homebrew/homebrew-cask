cask "typinator" do
  version "10.1"
  sha256 "223b0ef7d877274ba0133aaf1bf836ff06a3122e0683c82f790446a6d038fd77"

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

  zap trash: [
    "~/Desktop/Typinator Tutorial.rtfd",
    "~/Library/Application Support/Typinator",
    "~/Library/Preferences/com.macility.typinator2.plist",
  ]
end
