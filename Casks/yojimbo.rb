cask "yojimbo" do
  version "4.6.3"
  sha256 "fc9e1ef31ca48aced4d17c433ad24da1bc94be61a2b40e8a8b7e04f92ae9d023"

  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg",
      verified: "s3.amazonaws.com/BBSW-download/"
  name "Yojimbo"
  desc "Your effortless, reliable information organizer"
  homepage "https://www.barebones.com/products/yojimbo/"

  livecheck do
    url "https://versioncheck.barebones.com/Yojimbo.xml"
    regex(/Yojimbo[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Yojimbo.app"
end
