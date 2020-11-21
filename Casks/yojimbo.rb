cask "yojimbo" do
  version "4.6"
  sha256 "5c7584794d039bdfca650bf374567cc47b31482b1032d690fd76ff8aa5c43a21"

  # s3.amazonaws.com/BBSW-download/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast "https://versioncheck.barebones.com/Yojimbo.xml"
  name "Yojimbo"
  homepage "https://www.barebones.com/products/yojimbo/"

  app "Yojimbo.app"
end
