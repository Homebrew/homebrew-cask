cask "typinator" do
  version "10.2"
  sha256 "381d0a71931f08de2f588185ae9647d59692389d04735c0835322ed5fb3b9694"

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
