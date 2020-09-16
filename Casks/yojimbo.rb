cask "yojimbo" do
  version "4.5.1"
  sha256 "754f63322e8bdfa7a41565f5d571d0bb37e2e8c8ae97b4478674ff87a30fd106"

  # s3.amazonaws.com/BBSW-download/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast "https://versioncheck.barebones.com/Yojimbo.xml"
  name "Yojimbo"
  homepage "https://www.barebones.com/products/yojimbo/"

  app "Yojimbo.app"
end
