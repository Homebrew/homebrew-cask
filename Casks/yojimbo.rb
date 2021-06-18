cask "yojimbo" do
  version "4.6.2"
  sha256 "93b246aa1e637f1d3c3483772eccc2cfc0f2a76dd30a8a91ca11e21f58baf330"

  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg",
      verified: "s3.amazonaws.com/BBSW-download/"
  name "Yojimbo"
  homepage "https://www.barebones.com/products/yojimbo/"

  livecheck do
    url "http://versioncheck.barebones.com/Yojimbo.xml"
    regex(/Yojimbo[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Yojimbo.app"
end
