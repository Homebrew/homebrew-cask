cask "yojimbo" do
  version "4.6.1"
  sha256 "c2e2727e12f332b6c0f1885b4cccfe531f2c9043be0d0f17c47f5fe8b9794e12"

  # s3.amazonaws.com/BBSW-download/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast "https://versioncheck.barebones.com/Yojimbo.xml"
  name "Yojimbo"
  homepage "https://www.barebones.com/products/yojimbo/"

  app "Yojimbo.app"
end
