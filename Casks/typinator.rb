cask "typinator" do
  version "8.13"
  sha256 "2cceefafeff38f04bcdb8dab2687f1c9942f9812dc81bc9c44fa75f44653a225"

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "Typinator"
  desc "Tool to automate the insertion of frequently used text and graphics"
  homepage "https://www.ergonis.com/products/typinator/"

  livecheck do
    url "https://update.ergonis.com/vck/typinator.xml"
    regex(%r{<Program_Version>(\d+(?:\.\d+)+)</Program_Version>}i)
  end

  app "Typinator.app"

  zap trash: [
    "~/Desktop/Typinator Tutorial.rtfd",
    "~/Library/Application Support/Typinator",
    "~/Library/Preferences/com.macility.typinator2.plist",
  ]
end
