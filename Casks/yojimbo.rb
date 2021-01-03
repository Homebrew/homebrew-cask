cask "yojimbo" do
  version "4.6.1"
  sha256 "c2e2727e12f332b6c0f1885b4cccfe531f2c9043be0d0f17c47f5fe8b9794e12"

  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg",
      verified: "s3.amazonaws.com/BBSW-download/"
  name "Yojimbo"
  homepage "https://www.barebones.com/products/yojimbo/"

  livecheck do
    url "https://versioncheck.barebones.com/Yojimbo.xml"
    regex(/Yojimbo[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Yojimbo.app"
end
