cask "typinator" do
  version "8.11"
  sha256 "27ed356b6fd635facb779af2f0069f4579c6e9bc839dccb4a9c433a96ca7af10"

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
