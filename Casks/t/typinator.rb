cask "typinator" do
  version "10.0"
  sha256 "e8c42d9eaf3f737f412b01d01f9237cd583598091ff4c1b73577b0f38c7dfaa5"

  url "https://storage.ergonis.com/apps/production/typinator/archive/Typinator_#{version.no_dots}.dmg"
  name "Typinator"
  desc "Tool to automate the insertion of frequently used text and graphics"
  homepage "https://www.ergonis.com/products/typinator/"

  livecheck do
    url "https://update.ergonis.com/vck/typinator.xml"
    strategy :xml do |xml|
      xml.elements["//Program_Info/Program_Version"]&.text&.strip
    end
  end

  depends_on macos: ">= :ventura"

  app "Typinator.app"

  zap trash: [
    "~/Desktop/Typinator Tutorial.rtfd",
    "~/Library/Application Support/Typinator",
    "~/Library/Preferences/com.macility.typinator2.plist",
  ]
end
