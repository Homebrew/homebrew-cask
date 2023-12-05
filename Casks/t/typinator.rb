cask "typinator" do
  version "9.1"
  sha256 "9921f35eafaa6d34e0d4a74dc50bf73ee43f12c3a00e36682d27ec22f45d3db6"

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
